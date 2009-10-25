#!/usr/bin/perl

{
    package Foo;

    use Moose;
    use Moose::Util::TypeConstraints;
    use MooseX::Types::JSON qw( JSON relaxedJSON );
    
    has data_strict  => ( is => 'rw', isa => JSON        );
    has data_relaxed => ( is => 'rw', isa => relaxedJSON );
}

my $foo = Foo->new(
    data_strict  => qq| { "foo": "bar", "answer": "42"  } |,
    data_relaxed => qq| { "foo": "bar", "answer": "42", } |
);

print $foo->dump;