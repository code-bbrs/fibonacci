//======================================================================
// Go 1.11 
// Calculates the  fibonacci number using the while loop algorithm
// date: 16.12.2018
//======================================================================
package main
 
import (
	"fmt"
	"time"
)

func main() {
	n := uint(33)
	// Function time + empty time
	start := time.Now()
	res := fib(n)
	elapsed := time.Since(start)
	// Empty time
	start0 := time.Now()
	elapsed0 := time.Since(start0)
	fmt.Println("# Test output / fl.go / recursion algorithm /")
	fmt.Println("# Fibonacci number :  fib(",n,")", res)
	fmt.Println("# Computing time : ", elapsed - elapsed0)
}

func fib(n uint) int {
	a, b := 0, 1
	res  := 0
	for n > 1 {
		res = a + b
		a = b
		b = res
		n--
	}
		return res
}
//======================================================================#
// Test output / fl.go / recursion algorithm /
// Fibonacci number :  fib( 33 ) 3524578
// Computing time :  482ns 
// Compare to alternative solution : https://www.dcode.fr/nombres-fibonacci
// F(33)	3524578
//======================================================================#
// To run this test execute in terminal:
// export GOPATH=/home/bbrs/Desktop/files_fibonacci/Golang/
// go install fl
// $GOPATH/bin/fl
//======================================================================#
