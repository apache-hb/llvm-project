cpp_args = [ '-D_HAS_EXCEPTIONS=0' ]

src = [
  'CodeGenIntrinsics.cpp',
  'SDNodeProperties.cpp',
]

lib_llvm_tablegen_basic = static_library('LLVMTableGenBasic', src,
  cpp_args : cpp_args,
  dependencies : [ llvm_support_dep, llvm_tablegen_dep ],
)

llvm_tablegen_basic_dep = declare_dependency(
  include_directories : tblgen_inc,
  link_with : lib_llvm_tablegen_basic,
)

meson.override_dependency('LLVMTableGenBasic', llvm_tablegen_basic_dep)
