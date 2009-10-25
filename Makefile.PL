use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'MooseX::Types::JSON',
    VERSION_FROM  => 'lib/MooseX/Types/JSON.pm',
    ABSTRACT      => 'JSON datatype for Moose',
    AUTHOR        => 'Michael Langner',
    LICENSE       => 'perl',
    PREREQ_PM     => {
        'MooseX::Types'                => '0.15',
        'Moose'                        => '0.82',
        'JSON::XS'                     => '2.00'
    }
);


