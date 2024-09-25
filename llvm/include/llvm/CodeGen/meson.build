vt_gen = custom_target('vt_gen',
  command : [ llvm_min_tblgen, '-gen-vt', '@INPUT@', '--write-if-changed', '-o', '@OUTPUT@', '-d', '@DEPFILE@' ],
  input : 'ValueTypes.td',
  output : 'GenVT.inc',
)
