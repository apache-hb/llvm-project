
src = [
    'Demangle.cpp',
    'ItaniumDemangle.cpp',
    'MicrosoftDemangle.cpp',
    'MicrosoftDemangleNodes.cpp',
    'RustDemangle.cpp',
    'DLangDemangle.cpp'
]

lib_demangle = static_library('LLVMDemangle', src,
    include_directories : [ inc, 'pch' ],
    cpp_pch : 'pch/stdafx.h',
    install : true
)

demangle_dep = declare_dependency(
    include_directories : inc,
    link_with : lib_demangle
)
