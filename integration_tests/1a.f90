<<<<<<< HEAD
program mre_bindc
    implicit none
    type, bind(c) :: attr_t
        character(len=1) :: name(4)
    end type attr_t
    type(attr_t) :: a
    character(len=4) :: s
    a%name = ['a', 'b', 'c', 'd']
    s = transfer(a%name, s)
    print *, s
end program mre_bindc
=======
program mre_select_type_char_len
    implicit none
    character(len=5) :: s
    s = "xxxxx"
    call g(s)
    print '(3a)', '[', s, ']'
    if (s /= "hi") error stop
contains
    subroutine g(value)
        class(*), intent(inout) :: value
        select type (value)
        type is (character(len=*))
            value = "hi"
            print *, len(value)
        end select
    end subroutine
end program
>>>>>>> issue-13859
