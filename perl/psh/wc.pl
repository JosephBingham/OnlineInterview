#!/usr/bin/perl

my $fileName = <STDIN>;

open(DATA, "<$fileName") or die "this is not a file";

my $lc = 0;
my $wc = 0;
while(<DATA>) {
	$lc++;
	my $list = split(/\s/, $_);
	$wc += $list;
}
print "Lines :: $lc\n";
print "Words :: $wc\n";