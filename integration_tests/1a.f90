program equiv3

! ASR verify pass error - compile with --implicit-typing

  equivalence (i1, i2)
  common /block/ i1

  i1 = 24
  i2 = 42
  print *, i1, merge (': pass', ': fail', i1 == 42)

end program