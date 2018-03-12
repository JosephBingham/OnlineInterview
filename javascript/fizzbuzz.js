for(var i = 0; i < 100; i++){
	var msg = "";
	if(i % 3 == 0){
		msg += "fizz";
	}
	if(i % 5 == 0){
		msg += "buzz";
	}
	if(!msg){
		msg = i;
	}
	console.log(msg);
}