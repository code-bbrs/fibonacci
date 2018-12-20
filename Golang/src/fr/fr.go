//======================================================================
// Go 1.11 
// Calculates the  fibonacci number using the recursion algorithm
// date: 16.12.2018
//======================================================================
package main
 
import "fmt"
import "time"

func main() {
	n := uint(33)
	// Function time + empty time
	start := time.Now()
	res:= fib(n)
	elapsed := time.Since(start)
	// Empty time
	start0 := time.Now()
	elapsed0 := time.Since(start0)
	fmt.Println("# Test output / fr.go / recursion algorithm /")
	fmt.Println("# Fibonacci number :  fib(",n,")", res)
	fmt.Println("# Computing time : ", elapsed - elapsed0)
	fmt.Println(fib(n))
}

func fib(n uint) uint {
    if n < 2 {
        return n
	} else {
		return fib(n-1) + fib(n-2)
	}
}
//======================================================================
// Test output / fr.go / recursion algorithm /
// Fibonacci number :  fib( 33 ) 3524578
// Computing time :  52.921241ms
// Compare to alternative solution : https://www.dcode.fr/nombres-fibonacci
// F(33)	3524578
//======================================================================
// To run this test execute in terminal:
// export GOPATH=/home/bbrs/Desktop/files_fibonacci/Golang/
// go install fr
// $GOPATH/bin/fr
//======================================================================
