use strict;
use warnings;
use 5.010;

my @names = qw( fred betty barney dino wilma pebbles bamm-bamm );

foreach ( <STDIN> ) {
  say $names[$_] if ( $_ >= 0 and $_ < @names );
}
