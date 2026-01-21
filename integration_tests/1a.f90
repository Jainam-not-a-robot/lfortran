module m1
  implicit none
  public :: operator(.foo.)

  interface operator(.foo.)
     module procedure foo_impl
  end interface

contains

  integer function foo_impl(x, y)
    integer, intent(in) :: x, y
    foo_impl = x + y
  end function

end module m1


program test
  use m1, only: operator(.foo.)
  implicit none

  integer :: a
  a = 1 .foo. 2
  print *, a
end program