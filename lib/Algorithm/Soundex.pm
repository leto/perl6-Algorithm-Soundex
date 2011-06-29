use v6;

class Algorithm::Soundex {

    method soundex ($string --> Str ) {
        my $soundex = $string.substr(0,1).uc;

        return $soundex;

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
