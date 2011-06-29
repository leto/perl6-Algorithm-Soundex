use v6;

class Algorithm::Soundex {

    method soundex ($string --> Str ) {
        my $soundex = $string.substr(0,1).uc;
        gather {
                take $soundex;
                my $fakefirst = '';
                $fakefirst = "de " if $soundex ~~ /^ <[AEIOUWH]> /;
                "$fakefirst$string".lc.trans('wh' => '') ~~ /
                    ^
                    [
                        [
                        | <[ bfpv     ]>+ { take 1 }
                        | <[ cgjkqsxz ]>+ { take 2 }
                        | <[ dt       ]>+ { take 3 }
                        | <[ l        ]>+ { take 4 }
                        | <[ mn       ]>+ { take 5 }
                        | <[ r        ]>+ { take 6 }
                        ]
                    || .
                    ]+
                    $ { take 0,0,0 }
                /;
            }.flat.[0,2,3,4].join;
    }

}
=begin pod

=head1 NAME

Algorithm::Soundex - The Soundex Algorithm

=head1 DESCRIPTION

The very simple American Soundex algorithm, implemented in Perl 6.

=head1 SYNOPSIS

=begin code

INSERT CODE HERE

=end code

=head1 AUTHOR

Jonathan "Duke" Leto - L<jonathan@leto.net>

=end pod
