#! /usr/bin/perl

my $CELL_NUM = 0;
print "RE.PL perl 5 repl V0.1,\nImplimented by Joseph C. Bingham (GitHub JosephBingham)\nunder the GNU open source license\n";
print "[$CELL_NUM]>>";
while (<>) {
    $NEXT_CELL = $CELL_NUM + 1;
    $indent = ">>";
    $statement = $_;
    chomp $statement;
    if( !$statement ){$NEXT_CELL = $CELL_NUM;}
    if(s/\(|\{|\'|\"/$statement/){
        $indent .= ":>>"; 
        print "[$CELL_NUM]$indent";
        $statement .= <>;
        $indent = substr $indent, 0, -3;
    } 
    my $result = eval $statement;
    print "$result\n[$NEXT_CELL]$indent";
    $CELL_NUM = $NEXT_CELL;
}

