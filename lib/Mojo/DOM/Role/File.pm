use strict;
use warnings;

package Mojo::DOM::Role::File;

use Mojo::Base -role;
use Mojo::File;

sub from_file {
    my $self = shift;
    my $html = Mojo::File->new(shift())->slurp;
    return $self->parse($html);
}

1;
