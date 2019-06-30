project('Demo',
  default_options : ['default_library=static', 'buildtype=release'])

if add_languages('fortran')
  errorstop = executable('errorstop', 'errorstop.f90')
  test('ErrorStop', errorstop,
    should_fail: true)
endif
