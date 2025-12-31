program test
  integer :: x(10)
  x = [(i, i=1,10)]
  print *, x
end program