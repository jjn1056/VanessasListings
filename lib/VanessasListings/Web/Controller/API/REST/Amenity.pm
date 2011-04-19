package VanessasListings::Web::Controller::API::REST::Amenity;

use strict;
use warnings;
use JSON::Syck;

use parent qw/VanessasListings::Web::ControllerBase::REST/;

__PACKAGE__->config(
    action                  =>  { setup => { PathPart => 'amenity', Chained => '/api/rest/rest_base' } },
                                # define parent chain action and partpath
    class                   =>  'Schema::Amenity', # DBIC result class
    create_requires         =>  [qw/amenity_id label/], # columns required to create
    create_allows           =>  [qw//], # additional non-required columns that create allows
    update_allows           =>  [qw/amenity_id label/], # columns that update allows
    list_returns            =>  [qw/amenity_id label/], # columns that list returns


    list_prefetch_allows    =>  [ # every possible prefetch param allowed
        [qw/listings_amenity_rs/], {  'listings_amenity_rs' => [qw//] },
		
    ],

    list_ordered_by         => [qw/amenity_id/], # order of generated list
    list_search_exposes     => [
        qw/amenity_id label/,
        { 'listings_amenity_rs' => [qw/listing_id amenity_id/] },
		
    ], # columns that can be searched on via list
);

=head1 NAME

 - REST Controller for VanessasListings

=head1 DESCRIPTION

REST Methods to access the DBIC Result Class amenity

=head1 AUTHOR

John Napiorkowski

=head1 SEE ALSO

L<Catalyst::Controller::DBIC::API>
L<Catalyst::Controller::DBIC::API::REST>
L<Catalyst::Controller::DBIC::API::RPC>

=head1 LICENSE



=cut

1;
