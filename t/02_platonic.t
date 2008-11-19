use Test::Base;
use URI::Platonic;

plan tests => 4 * blocks;

run {
    my $block = shift;
    my $uri = URI::Platonic->new(uri => $block->input);

    is $uri->path      => $block->path;
    is $uri->extension => $block->extension;
    is $uri->platonic  => $block->platonic;
    is $uri->distinct  => $block->distinct;
};

__END__
===
--- input: http://example.com/path/to/resource
--- path: /path/to/resource
--- platonic: http://example.com/path/to/resource
--- distinct: http://example.com/path/to/resource
