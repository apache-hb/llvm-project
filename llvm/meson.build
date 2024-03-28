project('llvm', 'c', 'cpp',
    default_options : [
        'cpp_std=c++17',
        'cpp_eh=none',
        'cpp_rtti=false'
    ]
)

cpp = meson.get_compiler('cpp')

subdir('include/llvm/Config')

llvm_inc = include_directories('include')
inc = [ llvm_inc, config_inc ]

subdir('lib/Demangle')
subdir('lib/Support')
subdir('lib/TableGen')

subdir('utils')

subdir('include/llvm/CodeGen')

subdir('utils/TableGen')
