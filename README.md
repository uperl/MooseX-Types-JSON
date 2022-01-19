# MooseX::Types::JSON ![linux](https://github.com/uperl/MooseX-Types-JSON/workflows/linux/badge.svg)

JSON datatype for Moose

# SYNOPSIS

```perl
package Foo;

use Moose;
use Moose::Util::TypeConstraints;
use MooseX::Types::JSON qw( JSON relaxedJSON );

has config  => ( is => 'rw', isa => JSON        );
has options => ( is => 'rw', isa => relaxedJSON );
```

String type constraints that match valid and relaxed JSON. For the meaning of
'relaxed' see [JSON](https://metacpan.org/pod/JSON). All the heavy lifting in the background is also
done by [JSON](https://metacpan.org/pod/JSON).

Coercions from Defined types are included.

- JSON

    A Str that is valid JSON.

- relaxedJSON

    A Str that is 'relaxed' JSON. For the meaning of 'relaxed' see [JSON](https://metacpan.org/pod/JSON). 

# AUTHOR

Author: Graham Ollis <plicease@cpan.org>

Contributors:

Steve Huff

# COPYRIGHT AND LICENSE

This software is copyright (c) 2014,2022 by Michael Langner.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
