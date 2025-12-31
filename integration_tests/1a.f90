program do_label
  implicit none

  integer :: i

! Construct name, but no numeric statement label
do_no: do i=1,5
    print *, i
  end do do_no

! Construct name plus numeric statement label
do10: do 10 i=1,5
    print *, i
10  end do do10

end program