cpp_args = [ '-D_HAS_EXCEPTIONS=0' ]

src = [
  'DetailedRecordsBackend.cpp',
  'Error.cpp',
  'JSONBackend.cpp',
  'Main.cpp',
  'Parser.cpp',
  'Record.cpp',
  'SetTheory.cpp',
  'StringMatcher.cpp',
  'TableGenBackend.cpp',
  'TableGenBackendSkeleton.cpp',
  'TGLexer.cpp',
  'TGParser.cpp',
]

lib_llvm_tablegen = library('LLVMTableGen', src,
  cpp_args : cpp_args,
  include_directories : inc,
  dependencies : [ llvm_support_dep ],
)

llvm_tablegen_dep = declare_dependency(
  include_directories : inc,
  link_with : lib_llvm_tablegen,
)

meson.override_dependency('LLVMTableGen', llvm_tablegen_dep)
