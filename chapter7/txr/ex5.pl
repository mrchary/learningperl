#!/usr/bin/perl
use strict;
use warnings;
use 5.12.0;

chomp (my @lines = <>);
foreach (@lines) {
  if (/(.)\g{1}/) {
    say $_;
  }
}
