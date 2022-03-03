module multiplier
implicit none
contains

elemental integer function timestwo(val)
integer, intent(in) :: val
timestwo = 2 * val
end function timestwo

end module multiplier