config_cdata = configuration_data()
config_cdata.set('BUG_REPORT_URL', 'https://github.com/llvm/llvm-project/issues/')
config_cdata.set('LTDL_SHLIB_EXT', '.dll')
config_cdata.set('LLVM_PLUGIN_EXT', '.dll')
config_cdata.set('PACKAGE_BUGREPORT', 'https://github.com/llvm/llvm-project/issues/')
config_cdata.set('PACKAGE_NAME', 'LLVM')
config_cdata.set('PACKAGE_STRING', 'LLVM 20.0.0git')
config_cdata.set('PACKAGE_VERSION', '20.0.0git')

config_cdata.set('BACKTRACE_HEADER', '<backtrace.h>')

config_h = configure_file(
  input : 'config.h.cmake',
  output : 'config.h',
  format : 'cmake',
  configuration : config_cdata
)

llvm_config_cdata = configuration_data()
llvm_config_cdata.set('LLVM_DEFAULT_TARGET_TRIPLE', 'x86_64-pc-windows-msvc')
llvm_config_cdata.set10('LLVM_ENABLE_THREADS', true)
llvm_config_cdata.set10('LLVM_HAS_ATOMICS', true)
llvm_config_cdata.set('LLVM_NATIVE_ARCH', 'X86')
llvm_config_cdata.set('LLVM_HOST_TRIPLE', 'x86_64-pc-windows-msvc')

llvm_config_cdata.set('LLVM_VERSION_MAJOR', 20)
llvm_config_cdata.set('LLVM_VERSION_MINOR', 0)
llvm_config_cdata.set('LLVM_VERSION_PATCH', 0)
llvm_config_cdata.set('PACKAGE_VERSION', '20.0.0git')

llvm_config_h = configure_file(
  input : 'llvm-config.h.cmake',
  output : 'llvm-config.h',
  format : 'cmake',
  configuration : llvm_config_cdata
)

abi_breaking_cdata = configuration_data()

abi_breaking_cdata.set10('LLVM_ENABLE_ABI_BREAKING_CHECKS', false)
abi_breaking_cdata.set10('LLVM_ENABLE_REVERSE_ITERATION', false)

abi_breaking_h = configure_file(
  input : 'abi-breaking.h.cmake',
  output : 'abi-breaking.h',
  format : 'cmake',
  configuration : abi_breaking_cdata
)
