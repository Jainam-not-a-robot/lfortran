module m_constants
implicit none
private

character(len=1)      :: letters(4)=['a','b','c','d']

type calendar
   character(len=len(letters))  :: chars(4)=letters
end type calendar
type(calendar),public,parameter :: calen=calendar( )

end module m_constants
program testit
use M_constants, only : calen
end program testit