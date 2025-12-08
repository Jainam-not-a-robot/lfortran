program test_inquire_pos
    implicit none
    integer :: io
    integer :: length
    character(len=*), parameter :: txt = "ABC"

    open(newunit=io, file="pos_test.bin", access="stream", form="unformatted")
    write(io) txt
    close(io)
    open(file="pos_test.bin", &
      & status="old", &
      & access="stream", & 
      & position="append", &
      & newunit=io)
    inquire(unit=io, pos=length)
    close(io)
    print *, "Position =", length

end program test_inquire_pos