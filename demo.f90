module demo

use, intrinsic:: iso_fortran_env, only: stderr=>error_unit
implicit none

interface
module subroutine errorstop(msg)
character(*), intent(in) :: msg
end subroutine errorstop
end interface

end module


program a

use demo

call errorstop('oopsie')

end program
