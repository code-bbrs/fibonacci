#======================================================================#
# Python 3.0 
# Calculates the  fibonacci number using the while loop algorithm
# date: 16.12.2018
#======================================================================#
# Function def :
def fib (n):
	a = 0
	b = 1
	res = 0
	while (n > 1):
		res = a + b
		a = b
		b = res
		n -= 1
	return res
#----------------------------------------------------------------------#
# Function test :
print ('# Test output / fl.py / while loop algorithm /')
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
# Test output /fl.py / while loop algorithm /
# Fibonacci number :  fib(33) = 3524578
# Computing time :  2.002716064453125e-05 seconds
# Compare to alternative solution : https://www.dcode.fr/nombres-fibonacci
# F(33)	3524578
#======================================================================#
# To run this test execute in terminal:
# cd /home/bbrs/Desktop/fibb/Python
# python3 fl.py
#======================================================================#
