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
