vt_gen = custom_target('vt_gen',
    command : [ tblgen_min_exe, '-o', '@OUTPUT@', '-d', '@DEPFILE@', '-gen-vt', '@INPUT@' ],
    input : 'ValueTypes.td',
    output : 'GenVT.inc',
    depfile : 'GenVT.d'
)
