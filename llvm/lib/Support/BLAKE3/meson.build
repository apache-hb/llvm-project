blake3_inc = include_directories('.')

src = [
  'blake3.c',
  'blake3_dispatch.c',
  'blake3_portable.c',
  'blake3_neon.c',
  'blake3_sse2.c',
  'blake3_sse41.c',
  'blake3_avx2.c',
  'blake3_avx512.c',
]

lib_llvm_support_blake3 = library('LLVMSupportBlake3', src,
  include_directories : blake3_inc,
)

llvm_support_blake3_dep = declare_dependency(
  include_directories : blake3_inc,
  link_with : lib_llvm_support_blake3,
)

meson.override_dependency('LLVMSupportBlake3', llvm_support_blake3_dep)
