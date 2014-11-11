use strict;
use warnings;
use 5.010;

my @input = <STDIN>;
@input = sort @input;
print @input; # One on each line
chomp ( @input );
say "@input"; # All on the same line
