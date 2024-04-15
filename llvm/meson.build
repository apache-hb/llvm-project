project('llvm', 'cpp',
    default_options : [
        'cpp_std=c++17'
    ]
)

inc = include_directories('include')

extra_files = [
    'include/llvm/Demangle/Demangle.h',
    'include/llvm/Demangle/DemangleConfig.h',
    'include/llvm/Demangle/ItaniumDemangle.h',
    'include/llvm/Demangle/ItaniumNodes.def',
    'include/llvm/Demangle/MicrosoftDemangle.h',
    'include/llvm/Demangle/MicrosoftDemangleNodes.h',
    'include/llvm/Demangle/README.txt',
    'include/llvm/Demangle/StringViewExtras.h',
    'include/llvm/Demangle/Utility.h',
]

src = [
    'lib/Demangle/Demangle.cpp',
    'lib/Demangle/DLangDemangle.cpp',
    'lib/Demangle/ItaniumDemangle.cpp',
    'lib/Demangle/MicrosoftDemangle.cpp',
    'lib/Demangle/MicrosoftDemangleNodes.cpp',
    'lib/Demangle/RustDemangle.cpp',
]

lib_demangle = library('LLVMDemangle', src,
    include_directories : inc,
    extra_files : extra_files
)

demangle_dep = declare_dependency(
    include_directories : inc,
    link_with : lib_demangle
)
