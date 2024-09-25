tblgen_inc = include_directories('.')
cpp_args = [ '-D_HAS_EXCEPTIONS=0' ]

subdir('Basic')
subdir('Common')

src = [
  'TableGen.cpp',
  'ARMTargetDefEmitter.cpp',
  'Attributes.cpp',
  'DirectiveEmitter.cpp',
  'IntrinsicEmitter.cpp',
  'RISCVTargetDefEmitter.cpp',
  'VTEmitter.cpp',
]

llvm_min_tblgen = executable('llvm-min-tblgen', src,
  cpp_args : cpp_args,
  include_directories : tblgen_inc,
  dependencies : [ llvm_support_dep, llvm_tablegen_basic_dep ],
)
