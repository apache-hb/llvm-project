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

args = cpp.get_supported_arguments(
    '/wd4244'
)

lib_tablegen = static_library('LLVMTableGen', src,
    include_directories : [ inc, 'pch' ],
    dependencies : [ support_dep ],
    cpp_args : args,
    cpp_pch : 'pch/stdafx.h',
    install : true
)

tablegen_dep = declare_dependency(
    include_directories : [ inc, 'pch' ],
    link_with : [ lib_tablegen ],
    dependencies : [ support_dep ]
)
