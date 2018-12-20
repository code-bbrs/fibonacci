#======================================================================#
# Python 3.0 
# Calculates the  fibonacci number using the recursion algorithm
# date: 16.12.2018
#======================================================================#
# Function def :
def fib (n):
	a = 0
	b = 1
	res = 0
	if (n <= 1):
		return n
	return fib(n - 1) + fib(n - 2)
#----------------------------------------------------------------------#
# Function test :
print ('# Test output / fr.py / recursion algorithm /')
import time
# Fibonacci num :
n = 33
start_time = time.time()
res = fib(n)
end_time = time.time()
time_EF = start_time - end_time 
start_time = time.time()
end_time = time.time()
time_E = start_time - end_time 
time_F = time_EF - time_E
print ('# Fibonacci number :  fib(%s) = %s' % (n, res) )
# Exec time :
print("# Computing time :  %s seconds " % time_F )
# Compare to alternative solution :
print ('# Compare to alternative solution : https://www.dcode.fr/nombres-fibonacci')
print ('# F(33)	3524578')
#======================================================================#
# Test output /fr.py / recursion algorithm/
# Fibonacci number :  fib(33) = 3524578
# Computing time :  1.6667733192443848 seconds 
# Compare to alternative solution : https://www.dcode.fr/nombres-fibonacci
# F(33)	3524578
#======================================================================#
# To run this test execute in terminal:
# cd /home/bbrs/Desktop/fibb/Python
# python3 fr.py
#======================================================================#
