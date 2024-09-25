cpp_args = [ '-D_HAS_EXCEPTIONS=0' ]

src = [
  'GlobalISel/CodeExpander.cpp',
  'GlobalISel/CombinerUtils.cpp',
  'GlobalISel/CXXPredicates.cpp',
  'GlobalISel/GlobalISelMatchTable.cpp',
  'GlobalISel/GlobalISelMatchTableExecutorEmitter.cpp',
  'GlobalISel/PatternParser.cpp',
  'GlobalISel/Patterns.cpp',

  'AsmWriterInst.cpp',
  'CodeGenDAGPatterns.cpp',
  'CodeGenHwModes.cpp',
  'CodeGenInstAlias.cpp',
  'CodeGenInstruction.cpp',
  'CodeGenRegisters.cpp',
  'CodeGenSchedule.cpp',
  'CodeGenTarget.cpp',
  'DAGISelMatcher.cpp',
  'InfoByHwMode.cpp',
  'OptEmitter.cpp',
  'PredicateExpander.cpp',
  'SubtargetFeatureInfo.cpp',
  'Types.cpp',
  'Utils.cpp',
  'VarLenCodeEmitterGen.cpp',
]

lib_llvm_tablegen_common = static_library('LLVMTableGenCommon', src,
  cpp_args : cpp_args,
  dependencies : [ llvm_support_dep, llvm_tablegen_dep, llvm_tablegen_basic_dep ],
)

llvm_tablegen_common_dep = declare_dependency(
  include_directories : tblgen_inc,
  link_with : lib_llvm_tablegen_common,
)

meson.override_dependency('LLVMTableGenCommon', llvm_tablegen_common_dep)
