use 5.012;
use warnings;

chomp( my @input = <> );
say "'$_'" foreach grep( /\h+$/, @input );
