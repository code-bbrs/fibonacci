PROGRAM Compute_Fib
!---------------------------------------------------------------------
!
!  This program computes fibonacci using a recursive function
!
!  Uses:  FUNCTION Fib(n)
!
!---------------------------------------------------------------------
IMPLICIT NONE

INTERFACE 
   FUNCTION Fib(n)
     INTEGER :: Fib
     INTEGER, INTENT(IN) :: n
   END FUNCTION Fib
END INTERFACE

! Declare local variables
INTEGER :: n, res
real :: start, finish, startE, finishE
! Call "do while" function
n = 33

! Write out value of factorial using function call
call cpu_time(start)
res = Fib(n)
call cpu_time(finish)

call cpu_time(startE)
call cpu_time(finishE)

!write(*,10)  n, "fib(n) is ", res
!10  format (I3, 2x, A, 2x, I12)
print *, "Test output / fl.py / recursion algorithm /";
write(*,20)  "Fibonacci number :  fib(",n,") : ", res
20  format (A, I3, A, 2x, I12)
write(*,*) "Computing time :", (finish - start) - (finishE - startE),"seconds"
30  format (A, E, A)
print *, "Compare to alternative solution : https://www.dcode.fr/nombres-fibonacci";
print *, "F(33)	3524578";
END PROGRAM Compute_Fib

!-----Fib-------------------------------------------------------------
!
!  Function to calculate factorials resursively
!
!---------------------------------------------------------------------
RECURSIVE FUNCTION Fib(n)  RESULT(Res)

IMPLICIT NONE
INTEGER :: Res
INTEGER, INTENT(IN) :: n
!--------
INTEGER :: a, b
!--------
a = 0
b = 1
Res = 0

if (n <= 1) then
	Res = n
else
	Res = Fib(n - 1) + Fib(n - 2)
endif

return
END FUNCTION Fib

!======================================================================!
! Test output / fr.f90 / recursion algorithm /
! Fibonacci number :  fib( 33) :        3524578
! Computing time :  4.4250000E-02 seconds
! Compare to alternative solution : https://www.dcode.fr/nombres-fibonacci
! F(33)	3524578
!======================================================================!
! To run this test execute in terminal:
! source /opt/intel/bin/compilervars.sh intel64
! cd /home/bbrs/Desktop/files_fibonacci/fortran90/
! ifort fr.f90  -mkl -fpe0  -traceback
! /home/bbrs/Desktop/files_fibonacci/fortran90/a.out
!======================================================================!
