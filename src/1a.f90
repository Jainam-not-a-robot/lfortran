module m
    implicit none
    private

    abstract interface
        function f_iface(x) result(r)
            real(4), intent(in) :: x
            real(4) :: r
        end function f_iface
    end interface

    public :: f_iface, call_f
contains
    subroutine call_f(fun)
        procedure(f_iface) :: fun
        real(4) :: y
        call inner(y)
    contains
        subroutine inner(res)
            real(4), intent(out) :: res
            real(4) :: v(2)
            res = fun(v(1))
        end subroutine inner
    end subroutine call_f
end module m

program p
    use m
    call call_f(square)
contains
    function square(x) result(r)
        real(4), intent(in) :: x
        real(4) :: r
        r = x * x
    end function square
end program p
