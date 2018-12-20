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
n = 999999999

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
!  Function to calculate factorials using the do while loop algorithm
!
!---------------------------------------------------------------------
FUNCTION Fib(n)  !RESULT(Res)

IMPLICIT NONE
INTEGER :: Fib, Res
INTEGER, INTENT(IN) :: n
!--------
INTEGER :: a, b, k
!--------
a = 0
b = 1
Res = 0
k = n

do while (k > 1)
	Res = a + b
	a = b
	b = Res
	k = k - 1
end do
Fib = Res
return
END FUNCTION Fib

!======================================================================!
! Test output / fl.f90 / recursion algorithm /
! Fibonacci number :  fib( 33) :        3524578
! Computing time :  2.0000152E-06 seconds 
! Compare to alternative solution : https://www.dcode.fr/nombres-fibonacci
! F(33)	3524578
!======================================================================!
! To run this test execute in terminal:
! source /opt/intel/bin/compilervars.sh intel64
! cd /home/bbrs/Desktop/files_fibonacci/fortran90/
! ifort fl.f90  -mkl -fpe0  -traceback
! /home/bbrs/Desktop/files_fibonacci/fortran90/a.out
!======================================================================!
