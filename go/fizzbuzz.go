package main

import "fmt"

func main(){
	for i := 0; i < 100; i++ {
		msg := ""
		found := 0
		if i % 3 == 0 {
			msg += "fizz"
			found++
		}
		if i % 5 == 0 {
			msg += "buzz"
			found++
		}
		if found == 0 {
			fmt.Println(i)
		} else {
			fmt.Println(msg)
		}
	}
}
