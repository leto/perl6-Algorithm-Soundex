use v6;
use Test;

# because prove -l doesn't work for perl 6 modules
BEGIN { push @*INC, './lib'; }

plan 1;

use Algorithm::Soundex;

pass("Loaded Algorithm::Soundex");
