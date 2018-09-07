#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

my $fileName = <STDIN>;

open(DATA, "<$fileName") or die "this is not a file";

while(<DATA>) {
	print;
}
