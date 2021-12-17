# NAME

MooseX::Types::JSON - JSON datatype for Moose

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

# CONTRIBUTORS

Steve Huff

# AUTHOR

Michael Langner

# CONTRIBUTING 

If you'd like to contribute, just fork my repository
([http://github.com/cpan-mila/perl-moosex-types-json](http://github.com/cpan-mila/perl-moosex-types-json))
on Github, commit your changes and send me a pull request.

# BUGS

Please report any bugs or feature requests at
[http://github.com/cpan-mila/perl-moosex-types-json/issues](http://github.com/cpan-mila/perl-moosex-types-json/issues).

# COPYRIGHT & LICENSE

Copyright 2014 Michael Langner, all rights reserved.

This program is free software; you can redistribute it and/or modify it under the
same terms as Perl itself.
