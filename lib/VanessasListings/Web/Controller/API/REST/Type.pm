package VanessasListings::Web::Controller::API::REST::Type;

use strict;
use warnings;
use JSON::Syck;

use parent qw/VanessasListings::Web::ControllerBase::REST/;

__PACKAGE__->config(
    action                  =>  { setup => { PathPart => 'type', Chained => '/api/rest/rest_base' } },
                                # define parent chain action and partpath
    class                   =>  'Schema::Type', # DBIC result class
    create_requires         =>  [qw/label type_id/], # columns required to create
    create_allows           =>  [qw//], # additional non-required columns that create allows
    update_allows           =>  [qw/label type_id/], # columns that update allows
    list_returns            =>  [qw/type_id label/], # columns that list returns


    list_prefetch_allows    =>  [ # every possible prefetch param allowed
        [qw/listing_rs/], {  'listing_rs' => [qw/image_rs listing_amenities_rs/] },
		
    ],

    list_ordered_by         => [qw/type_id/], # order of generated list
    list_search_exposes     => [
        qw/type_id label/,
        { 'listing_rs' => [qw/listing_id web_number title comments price_id bedroom_id bath_id type_id floor_id unit_id created/] },
		
    ], # columns that can be searched on via list
);

=head1 NAME

 - REST Controller for VanessasListings

=head1 DESCRIPTION

REST Methods to access the DBIC Result Class type

=head1 AUTHOR

John Napiorkowski

=head1 SEE ALSO

L<Catalyst::Controller::DBIC::API>
L<Catalyst::Controller::DBIC::API::REST>
L<Catalyst::Controller::DBIC::API::RPC>

=head1 LICENSE



=cut

1;
