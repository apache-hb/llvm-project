src = [
  'Demangle.cpp',
  'ItaniumDemangle.cpp',
  'MicrosoftDemangle.cpp',
  'MicrosoftDemangleNodes.cpp',
  'RustDemangle.cpp',
  'DLangDemangle.cpp',
]

lib_llvm_demangle = library('LLVMDemangle', src,
  include_directories : inc,
)

llvm_demangle_dep = declare_dependency(
  include_directories : inc,
  link_with : lib_llvm_demangle,
)

meson.override_dependency('LLVMDemangle', llvm_demangle_dep)
