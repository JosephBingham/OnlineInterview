module Hello exposing (..)

import Html exposing (text)

main = 
    text "Hello world" 
	let fizzBuzz n = case (n % 3, n % 5) of
    	(0, 0) -> "FizzBuzz"
    	(0, _) -> "Fizz"
    	(_, 0) -> "Buzz"
    	_      -> toString n
  	in map fizzBuzz [1..100] |> map asText |> flow down
	
