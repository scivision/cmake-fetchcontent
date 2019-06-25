use, intrinsic :: iso_fortran_env, only: stderr=>error_unit
implicit none

write(stderr,*) 'oops'
error stop

end program
