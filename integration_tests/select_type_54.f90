<<<<<<< HEAD
module select_type_54_mod
    implicit none
contains
    subroutine get_value(value, default_value)
        class(*), intent(inout) :: value
        class(*), intent(in) :: default_value
        character(len=10) :: t
        select type (value)
        type is (character(len=*))
            select type (default_value)
            type is (character(len=*))
                value = default_value
                t = default_value
                if (t /= "hello") error stop
                if (len(default_value) /= 5) error stop
                if (default_value // "!" /= "hello!") error stop
            end select
        end select
    end subroutine
end module

program select_type_54
    use select_type_54_mod
    implicit none
    character(len=5) :: s
    s = "xxxxx"
    call get_value(s, "hello")
    if (s /= "hello") error stop
    print *, s
end program
=======
module select_type_54_m
    implicit none
    type :: base_t
    end type
    type, extends(base_t) :: ext_t
        integer :: k = 7
    end type
    class(base_t), allocatable :: ib
end module select_type_54_m

program select_type_54
    use select_type_54_m
    implicit none
    allocate(ext_t :: ib)
    select type(ib)
    type is (ext_t)
        if (ib%k /= 7) error stop
    class default
        error stop
    end select
end program select_type_54
>>>>>>> issue-13964
