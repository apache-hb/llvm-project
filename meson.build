project('llvm', [ 'c', 'cpp' ],
    version : '20.0.0',
    default_options : [
        'cpp_std=c++17',
        'cpp_eh=none',
        'cpp_rtti=false',
    ],
    license : 'Apache-2.0',
    license_files : [ 'LICENSE.TXT' ],
    meson_version : '>=1.1.0',
)

cpp = meson.get_compiler('cpp')

subdir('llvm')
# subdir('clang')
