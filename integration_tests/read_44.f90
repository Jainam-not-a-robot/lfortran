program read_44

    type :: inner_t
        integer :: a
        integer :: b
    end type inner_t
    type :: outer_t
        integer :: id
        type(inner_t) :: inner
    end type outer_t
    type(outer_t) :: x
    character(len=12) :: s
    s = "001002003"

    read(s, "(I3,I3,I3)") x

    print *, x%id
    print *, x%inner%a
    print *, x%inner%b

end program read_44