package MooseX::Types::JSON;

use strict;
use warnings;

=head1 NAME

MooseX::Types::JSON - JSON datatype for Moose

=cut

our $VERSION = '0.02';

=head1 SYNOPSIS

 package Foo;

 use Moose;
 use Moose::Util::TypeConstraints;
 use MooseX::Types::JSON qw( JSON );

 has config  => ( is => 'rw', isa => JSON        );
 has options => ( is => 'rw', isa => relaxedJSON );
 
String type constraints that match valid and relaxed JSON. For the meaning of
'relaxed' see L<JSON::XS>. All the heavy lifting in the background is also
done by L<JSON::XS>.

Coercions from Defined types are included.

=over

=item * JSON

A Str that is valid JSON.

=item * relaxedJSON

A Str that is 'relaxed' JSON. For the meaning of 'relaxed' see L<JSON::XS>. 

=back
=cut

use MooseX::Types -declare => [qw/ JSON relaxedJSON /];
use Moose::Util::TypeConstraints;
use JSON::XS;

subtype JSON,
  as "Str",
  where { ref( eval { JSON::XS->new->decode($_) } ) ne '' },
  message { "Must be valid JSON" };

coerce JSON,
  from 'Defined',
    via { JSON::XS->new->allow_nonref->encode($_) };

subtype relaxedJSON,
  as "Str",
  where { ref( eval { JSON::XS->new->relaxed->decode($_) } ) ne '' },
  message { "Must be at least relaxed JSON" };

coerce relaxedJSON,
  from 'Defined',
    via { JSON::XS->new->allow_nonref->encode($_) };

=head1 CONTRIBUTORS

Steve Huff

=head1 AUTHOR

Michael Langner

=head1 CONTRIBUTING 

If you'd like to contribute, just fork my repository
(L<http://github.com/cpan-mila/perl-moosex-types-json>)
on Github, commit your changes and send me a pull request.

=head1 BUGS

Please report any bugs or feature requests at
L<http://github.com/cpan-mila/perl-moosex-types-json/issues>.

=head1 COPYRIGHT & LICENSE

Copyright 2011 Michael Langner, all rights reserved.

This program is free software; you can redistribute it and/or modify it under the
same terms as Perl itself.

=cut

1; # track-id: 3a59124cfcc7ce26274174c962094a20
