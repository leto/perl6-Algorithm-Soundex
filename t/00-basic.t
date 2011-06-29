use v6;
use Test;

# because prove -l doesn't work for perl 6 modules
BEGIN { push @*INC, './lib'; }

plan 3;

use Algorithm::Soundex;

my Algorithm::Soundex $s .= new();

isa_ok($s, Algorithm::Soundex);

pass("Loaded Algorithm::Soundex");

my $soundex = $s.soundex("Robert");

is($soundex, 'R163');

