#!/bin/bash/perl
use strict;
use warnings;

my $dimensions = 4;
my $coordinates = [];
my $vertex_count = 2**$dimensions;
print "\$vertex_count = $vertex_count\n";
for(my $i = 0; $i < $vertex_count; $i++)
{
	my $temp_i = $i;
	my $string = '';
	for(my $j = $vertex_count >> 1; $j > 0; $j = $j >> 1)
	{
		if($j <= $temp_i)
		{
			$string .= '1';
			$temp_i -= $j;
		}
		else
		{
			$string .= '0';
		}
	}
	#print $string . "\n";
	push @$coordinates, [split(//, $string)];
	#print ${$$coordinates[$i]}[0] . ', ';
	#print ${$$coordinates[$i]}[1] . ', ';
	#print ${$$coordinates[$i]}[2] . ', ';
	#print ${$$coordinates[$i]}[3] . "\n";
}
print "The given cube has $vertex_count vertices in $dimensions dimensions\n";
for(my $i = 0; $i < $vertex_count; $i++)
{
	for(my $j = 0; $j < $dimensions; $j++)
	{
		print $coordinates->[$i]->[$j], "\t";
	}
	print "\n";
} 
