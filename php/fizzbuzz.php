<?php
	for( $i = 0; $i < 100; $i++){
		$msg = "";
		if($i % 3 == 0){
			$msg = $msg . "fizz";
		}
		if($i % 5 == 0){
			$msg = $msg . "buzz";
		}
		if($msg == ""){
			$msg = $i;
		}
		echo "$msg\n";
	}
?>