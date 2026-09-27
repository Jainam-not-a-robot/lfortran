program derived_types_205
    implicit none

    type :: t
        integer :: u(2) = [9, 9]
    end type

    type(t), allocatable :: w(:)

    allocate(w(2))

    if (.not. all(w(:)%u(1) == 9)) error stop
    if (.not. any(w(:)%u(1) == 9)) error stop

end program derived_types_205