#!/usr/bin/perl

use strict;
use warnings;
use List::Util 'sum';
my @goodNums = (0);
#loop approach
for ( my $i = 1; $i<1000; $i++) {
    if(!($i % 3) || !($i % 5)) {
	#print "Found one - " . $i;
	#print "\n";
	push (@goodNums, $i);
    }
}
print "Loop output is - \n";
my $tots = sum @goodNums;
print $tots;
print "\n\n";

#grep approach
my @smartNums = ( 1 .. 999 );
@smartNums = grep { !($_ %3) || !($_ %5) } @smartNums;
print "Grep smart array output is - \n";
print sum @smartNums;
print "\n\n\n";


