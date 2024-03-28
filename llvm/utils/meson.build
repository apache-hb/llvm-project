src = [
    'TableGen/Basic/CodeGenIntrinsics.cpp',
    'TableGen/Basic/SDNodeProperties.cpp'
]

deps = [ support_dep, tablegen_dep ]

args = cpp.get_supported_arguments('/wd4146', '/wd4244')

lib_tablegen_basic = static_library('LLVMTableGenBasic', src,
    include_directories : inc,
    dependencies : deps,
    cpp_args : args
)

tablegen_basic_dep = declare_dependency(
    include_directories : [ inc, '.' ],
    link_with : lib_tablegen_basic
)

src = [
    'TableGen/TableGen.cpp',
    'TableGen/Attributes.cpp',
    'TableGen/DirectiveEmitter.cpp',
    'TableGen/IntrinsicEmitter.cpp',
    'TableGen/RISCVTargetDefEmitter.cpp',
    'TableGen/VTEmitter.cpp',
]

deps = [ support_dep, tablegen_basic_dep ]

args = cpp.get_supported_arguments('/wd4244')

tblgen_min_exe = executable('llvm-min-tblgen', src,
    include_directories : inc,
    dependencies : deps,
    cpp_args : args,
    install : true
)

tblgen_min = generator(tblgen_min_exe,
    output : '@BASENAME@.inc',
    depfile : '@BASENAME@.d',
    arguments : [ '@INPUT@', '-o', '@OUTPUT@', '-d', '@DEPFILE@', '@EXTRA_ARGS@' ]
)
