llvm_cdata = configuration_data()
llvm_cdata.set10('LLVM_ENABLE_EXCEPTIONS', get_option('cpp_eh') != 'none')
llvm_cdata.set10('LLVM_ENABLE_RTTI', get_option('cpp_rtti'))
llvm_cdata.set10('LLVM_ENABLE_THREADS', true)
llvm_cdata.set10('LLVM_HAS_ATOMICS', true)
llvm_cdata.set10('LLVM_UNREACHABLE_OPTIMIZE', true)

config_cdata = configuration_data()
config_cdata.set10('ENABLE_BACKTRACES', true)
config_cdata.set10('ENABLE_CRASH_OVERRIDES', true)
config_cdata.set10('LLVM_ENABLE_CRASH_DUMPS', false)
config_cdata.set10('LLVM_WINDOWS_PREFER_FORWARD_SLASH', false)
config_cdata.set_quoted('LTDL_SHLIB_EXT', '.dll')
config_cdata.set_quoted('LLVM_PLUGIN_EXT', '.dll')
config_cdata.set_quoted('BUG_REPORT_URL', 'https://github.com/llvm/llvm-project/issues/')

config_cdata.set_quoted('PACKAGE_NAME', 'LLVM')
config_cdata.set_quoted('PACKAGE_BUGREPORT', 'https://github.com/llvm/llvm-project/issues/')
config_cdata.set_quoted('PACKAGE_STRING', 'LLVM 19.0.0git')
config_cdata.set_quoted('PACKAGE_VERSION', '19.0.0git')

abi_cdata = configuration_data()
abi_cdata.set10('LLVM_ENABLE_ABI_BREAKING_CHECKS', false)
abi_cdata.set10('LLVM_ENABLE_REVERSE_ITERATION', false)

configure_file(output : 'llvm-config.h',
    configuration : llvm_cdata,
    macro_name : 'llVM_CONFIG_H'
)

configure_file(output : 'config.h',
    configuration : config_cdata,
    macro_name : 'CONFIG_H'
)

configure_file(output : 'abi-breaking.h',
    configuration : abi_cdata,
    macro_name : 'ABI_BREAKING_CHECKS_H'
)

config_inc = include_directories('.')
