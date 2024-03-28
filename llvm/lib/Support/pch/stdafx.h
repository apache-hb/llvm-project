#ifndef LLVM_SUPPORT_STDAFX_H
#define LLVM_SUPPORT_STDAFX_H

// IWYU pragma: begin_exports

#include "llvm/Config/config.h"
#include "llvm/Config/llvm-config.h"
#include "llvm/Config/abi-breaking.h"

#include <bitset>
#include <cassert>
#include <cctype>
#include <cerrno>
#include <cmath>
#include <cstddef>
#include <cstdio>
#include <cstdarg>
#include <cstdint>
#include <cstring>
#include <cassert>
#include <cstdarg>
#include <cstdio>
#include <cstring>

#include <algorithm>
#include <array>
#include <atomic>
#include <chrono>
#include <iterator>
#include <limits>
#include <map>
#include <memory>
#include <mutex>
#include <optional>
#include <ostream>
#include <set>
#include <string>
#include <system_error>
#include <tuple>
#include <utility>
#include <vector>
#include <atomic>
#include <deque>
#include <future>
#include <thread>
#include <vector>
#include <new>

#ifdef LLVM_ENABLE_EXCEPTIONS
#include <stdexcept>
#endif

#if defined(_WIN32) && !defined(__MINGW32__)
#include <float.h> // For _fpclass in llvm::write_double.
#endif

#if !defined(_MSC_VER) && !defined(__MINGW32__)
#include <unistd.h>
#else
#include <io.h>
#endif

#include <errno.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sys/types.h>

// IWYU pragma: end_exports

#endif
