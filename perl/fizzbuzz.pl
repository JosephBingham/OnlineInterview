#!/usr/bin/perl

for(my $i = 0; $i < 100; $i++){
	$msg = "";
	if($i % 3 == 0){
		$msg .= "fizz";
	}
	if($i % 5 == 0){
		$msg .= "buzz";
	}
	if($msg eq ""){
		$msg = $i;
	}
	print "$msg\n";
}
