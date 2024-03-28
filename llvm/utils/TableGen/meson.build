src = [
    'Common/GlobalISel/CodeExpander.cpp',
    'Common/GlobalISel/CXXPredicates.cpp',
    'Common/GlobalISel/GlobalISelMatchTable.cpp',
    'Common/GlobalISel/GlobalISelMatchTableExecutorEmitter.cpp',
    'Common/GlobalISel/MatchDataInfo.cpp',
    'Common/GlobalISel/Patterns.cpp',

    'Common/AsmWriterInst.cpp',
    'Common/CodeGenDAGPatterns.cpp',
    'Common/CodeGenHwModes.cpp',
    'Common/CodeGenInstAlias.cpp',
    'Common/CodeGenInstruction.cpp',
    'Common/CodeGenRegisters.cpp',
    'Common/CodeGenSchedule.cpp',
    'Common/CodeGenTarget.cpp',
    'Common/DAGISelMatcher.cpp',
    'Common/InfoByHwMode.cpp',
    'Common/OptEmitter.cpp',
    'Common/PredicateExpander.cpp',
    'Common/SubtargetFeatureInfo.cpp',
    'Common/Types.cpp',
    'Common/VarLenCodeEmitterGen.cpp',

    vt_gen
]

deps = [ support_dep, tablegen_dep, tablegen_basic_dep ]

args = cpp.get_supported_arguments('/wd4244', '/wd4267', '/wd4146')

lib_tablegen_common = static_library('LLVMTableGenCommon', src,
    include_directories : inc,
    dependencies : deps,
    cpp_args : args
)

tablegen_common_dep = declare_dependency(
    include_directories : inc,
    link_with : lib_tablegen_common
)

src = [
    'AsmMatcherEmitter.cpp',
    'AsmWriterEmitter.cpp',
    'Attributes.cpp',
    'CallingConvEmitter.cpp',
    'CodeEmitterGen.cpp',
    'CodeGenMapTable.cpp',
    'CompressInstEmitter.cpp',
    'CTagsEmitter.cpp',
    'DAGISelEmitter.cpp',
    'DAGISelMatcherEmitter.cpp',
    'DAGISelMatcherGen.cpp',
    'DAGISelMatcherOpt.cpp',
    'DecoderEmitter.cpp',
    'DFAEmitter.cpp',
    'DFAPacketizerEmitter.cpp',
    'DirectiveEmitter.cpp',
    'DisassemblerEmitter.cpp',
    'DXILEmitter.cpp',
    'ExegesisEmitter.cpp',
    'FastISelEmitter.cpp',
    'GlobalISelCombinerEmitter.cpp',
    'GlobalISelEmitter.cpp',
    'InstrDocsEmitter.cpp',
    'InstrInfoEmitter.cpp',
    'IntrinsicEmitter.cpp',
    'MacroFusionPredicatorEmitter.cpp',
    'OptParserEmitter.cpp',
    'OptRSTEmitter.cpp',
    'PseudoLoweringEmitter.cpp',
    'RegisterBankEmitter.cpp',
    'RegisterInfoEmitter.cpp',
    'RISCVTargetDefEmitter.cpp',
    'SearchableTableEmitter.cpp',
    'SubtargetEmitter.cpp',
    'TableGen.cpp',
    'VTEmitter.cpp',
    'WebAssemblyDisassemblerEmitter.cpp',
    'X86CompressEVEXTablesEmitter.cpp',
    'X86DisassemblerTables.cpp',
    'X86FoldTablesEmitter.cpp',
    'X86MnemonicTables.cpp',
    'X86ModRMFilters.cpp',
    'X86RecognizableInstr.cpp',
]

deps = [ support_dep, tablegen_common_dep ]

args = cpp.get_supported_arguments('/wd4244', '/wd4267', '/wd4146')

tblgen_exe = executable('llvm-tblgen', src,
    include_directories : inc,
    dependencies : deps,
    cpp_args : args
)
