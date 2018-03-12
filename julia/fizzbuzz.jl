for i in 0:99
	msg = ""
	if i % 3 == 0
		msg *= "fizz"
	end
	if i % 5 == 0
		msg *= "buzz"
	end
	if msg == ""
		msg = i
	end 
	println(msg)
end