package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("String: ")
	str, _ := reader.ReadString('\n')
	for i := len(str)-2; i >= 0; i-- {
		fmt.Print(string(str[i]))
	}
	fmt.Println()
}