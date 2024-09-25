cpp_args = [ '-D_HAS_EXCEPTIONS=0' ]

src = [
  'Arg.cpp',
  'ArgList.cpp',
  'Option.cpp',
  'OptTable.cpp',
]

lib_llvm_option = library('LLVMOption', src,
  cpp_args : cpp_args,
  include_directories : inc,
  dependencies : [ llvm_support_dep ],
)

llvm_option_dep = declare_dependency(
  include_directories : inc,
  link_with : lib_llvm_option,
)

meson.override_dependency('LLVMOption', llvm_option_dep)
