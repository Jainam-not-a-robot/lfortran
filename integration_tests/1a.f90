program main
use iso_c_binding
implicit none

integer :: x(5)
call foo(x)

contains

subroutine foo(a)
    type(*), target, contiguous :: a(..)

    ! THIS LINE IS KEY
    call bar(a, int(product(shape(a)), c_size_t))

end subroutine

subroutine bar(a, n) bind(C)
    type(*), target :: a(..)
    integer(c_size_t), value :: n
end subroutine

end program