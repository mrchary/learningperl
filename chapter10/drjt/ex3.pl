#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

# Write a program to list all of the keys and values in %ENV. Print the
# results in two columns in ASCIIbetical order. For extra credit, arrange
# the output to vertically align both columns. The length function can help
# you figure out how wide to make the first column. Once you get the program
# running, try setting some new environment variables and ensuring that they
# show up in your output.

sub maxlength {
  my $max = length shift @_;
  foreach ( @_ ) {
    if ( length $_ > $max ) {
      $max = length $_
    };
  };
  return $max;
};


my @keys = sort keys %ENV;
my $length = maxlength @keys;
foreach (@keys) {
  printf "%${length}s | %s \n", $_, $ENV{$_} // "(undefined value)";
};
