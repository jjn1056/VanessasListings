package VanessasListings::Web;

our $VERSION = '0.01';

use Moose;
use Catalyst qw/
    ConfigLoader
/;

extends 'Catalyst';

__PACKAGE__->config(
  name => 'VanessasListings::Web',
  disable_component_resolution_regex_fallback => 1,    
  'Plugin::ConfigLoader' => {
	file => __PACKAGE__->path_to("share/etc/"),
  },
);

__PACKAGE__->setup;

=head1 NAME

VanessasListings::Web - A website dedicated to insulting and fun 

=head1 SYNOPSIS

    script/vanessaslistings_web_server.pl

=head1 DESCRIPTION

    TBD

=head1 AUTHOR

See L<VanessasListings> for AUTHOR information

=head1 COPYRIGHT & LICENSE

See L<VanessasListings> for COPYRIGHT & LICENSE information

=cut

1;
