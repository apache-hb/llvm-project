// RUN: %clang_analyze_cc1 -triple x86_64-apple-darwin10 -analyzer-checker=core,debug.ExprInspection %s -std=c++11 -verify
// RUN: %clang_analyze_cc1 -triple x86_64-pc-windows-msvc19.11.0 -fms-extensions -analyzer-checker=core,debug.ExprInspection %s -std=c++11 -verify

#include "Inputs/system-header-simulator-cxx.h"

namespace std {
// Intentionally not using an "auto" return type here, as such must also have a definition.
template <typename T, typename U> constexpr int&& forward_like(U&& x) noexcept;
template <typename T> const T& move_if_noexcept(T& x) noexcept;
} // namespace std

template <typename T> void clang_analyzer_dump_ref(T&&);
template <typename T> void clang_analyzer_dump_ptr(T*);
void clang_analyzer_eval(bool);
void clang_analyzer_warnIfReached();

void testAddressof(int x) {
  clang_analyzer_eval(&x == __builtin_addressof(x)); // expected-warning{{TRUE}}
}

void testStdBuiltinLikeFunctions(int x) {
  clang_analyzer_dump_ptr(std::addressof(x));           // expected-warning{{&x}}
  clang_analyzer_dump_ptr(std::__addressof(x));         // expected-warning{{&x}}
  clang_analyzer_dump_ref(std::as_const(x));            // expected-warning{{&x}}
  clang_analyzer_dump_ref(std::forward<int &>(x));      // expected-warning{{&x}}
  clang_analyzer_dump_ref(std::forward_like<int &>(x)); // expected-warning{{&x}}
  clang_analyzer_dump_ref(std::move(x));                // expected-warning{{&x}}
  clang_analyzer_dump_ref(std::move_if_noexcept(x));    // expected-warning{{&x}}
}

void testSize() {
  struct {
    int x;
    int y;
    char z;
  } object;
  clang_analyzer_eval(__builtin_object_size(&object.y, 0) == sizeof(object) - sizeof(int)); // expected-warning{{TRUE}}

  // Clang can't actually evaluate these builtin "calls", but importantly they don't actually evaluate the argument expression either.
  int i = 0;
  char buf[10];
  clang_analyzer_eval(__builtin_object_size(&buf[i++], 0) == sizeof(buf)); // expected-warning{{FALSE}}
  clang_analyzer_eval(__builtin_object_size(&buf[++i], 0) == sizeof(buf) - 1); // expected-warning{{FALSE}}

  clang_analyzer_eval(i == 0); // expected-warning{{TRUE}}
}

void test_assume_aligned_1(char *p) {
  char *q;

  q = (char*) __builtin_assume_aligned(p, 16);
  clang_analyzer_eval(p == q); // expected-warning{{TRUE}}
}

void test_assume_aligned_2(char *p) {
  char *q;

  q = (char*) __builtin_assume_aligned(p, 16, 8);
  clang_analyzer_eval(p == q); // expected-warning{{TRUE}}
}

void test_assume_aligned_3(char *p) {
  void *q;

  q = __builtin_assume_aligned(p, 16, 8);
  clang_analyzer_eval(p == q); // expected-warning{{TRUE}}
}

void test_assume_aligned_4(char *p) {
  char *q;

  q = (char*) __builtin_assume_aligned(p + 1, 16);
  clang_analyzer_eval(p == q); // expected-warning{{FALSE}}
}

void f(int i) {
  __builtin_assume(i < 10);
  clang_analyzer_eval(i < 15); // expected-warning {{TRUE}}
}

void g(int i) {
  if (i > 5) {
    __builtin_assume(i < 5);
    clang_analyzer_warnIfReached(); // Assumtion contradicts constraints.
                                    // We give up the analysis on this path.
  }
}

#ifdef _WIN32
namespace ms {
void f(int i) {
  __assume(i < 10);
  clang_analyzer_eval(i < 15); // expected-warning {{TRUE}}
}

void g(int i) {
  if (i > 5) {
    __assume(i < 5);
    clang_analyzer_warnIfReached(); // Assumtion contradicts constraints.
                                    // We give up the analysis on this path.
  }
}
} // namespace ms
#endif

void test_constant_p(void *ptr) {
  int i = 1;
  const int j = 2;
  constexpr int k = 3;
  clang_analyzer_eval(__builtin_constant_p(42) == 1); // expected-warning {{TRUE}}
  clang_analyzer_eval(__builtin_constant_p(i) == 0); // expected-warning {{TRUE}}
  clang_analyzer_eval(__builtin_constant_p(j) == 1); // expected-warning {{TRUE}}
  clang_analyzer_eval(__builtin_constant_p(k) == 1); // expected-warning {{TRUE}}
  clang_analyzer_eval(__builtin_constant_p(i + 42) == 0); // expected-warning {{TRUE}}
  clang_analyzer_eval(__builtin_constant_p(j + 42) == 1); // expected-warning {{TRUE}}
  clang_analyzer_eval(__builtin_constant_p(k + 42) == 1); // expected-warning {{TRUE}}
  clang_analyzer_eval(__builtin_constant_p(" ") == 1); // expected-warning {{TRUE}}
  clang_analyzer_eval(__builtin_constant_p(test_constant_p) == 0); // expected-warning {{TRUE}}
  clang_analyzer_eval(__builtin_constant_p(k - 3) == 0); // expected-warning {{FALSE}}
  clang_analyzer_eval(__builtin_constant_p(k - 3) == 1); // expected-warning {{TRUE}}
  clang_analyzer_eval(__builtin_constant_p(ptr == 0)); // expected-warning {{FALSE}}
}
