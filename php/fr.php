<?php
#======================================================================#
# php 7.0 
# Calculates the  fibonacci number using the recursion algorithm
# date: 16.12.2018
#======================================================================#
# Function def :
function fib ($n) {
	$a = 0;
	$b = 1;
	if ($n<=1) {
		return 1;
	} 
	return fib($n-1) + fib($n-2); 
} 
#----------------------------------------------------------------------#
# Function test :
echo ('# Test output / fr.php / recursion algorithm /'.'<br>');
$time_start = microtime(true);
# Fibonacci num :
$n = 33;
$res = fib($n);
echo ('# Fibonacci number :  fib('.$n.') = '.$res.'<br>');
# Exec time :
$time_end = microtime(true);
echo ('# Computing time :  '.( $time_end - $time_start ).' seconds '.'<br>');
# Compare to alternative solution :
echo ('# Compare to alternative solution : https://www.dcode.fr/nombres-fibonacci'.'<br>');
echo ('# F(33)	3524578'.'<br>');
#======================================================================#
# Test output / fr.php / recursion algorithm /
# Fibonacci number : fib(33) = 5702887
# Computing time : 0.58706307411194 seconds
# Compare to alternative solution : https://www.dcode.fr/nombres-fibonacci
# F(33) 3524578
#======================================================================#
# To run this test execute in terminal:
# http://localhost/fr.php
# php 7.0 fr.php
#======================================================================#
