package VanessasListings::Web::Controller::API::REST::ListingAmenity;

use strict;
use warnings;
use JSON::Syck;

use parent qw/VanessasListings::Web::ControllerBase::REST/;

__PACKAGE__->config(
    action                  =>  { setup => { PathPart => 'listing_amenity', Chained => '/api/rest/rest_base' } },
                                # define parent chain action and partpath
    class                   =>  'Schema::ListingAmenity', # DBIC result class
    create_requires         =>  [qw/amenity_id listing_id/], # columns required to create
    create_allows           =>  [qw//], # additional non-required columns that create allows
    update_allows           =>  [qw/amenity_id listing_id/], # columns that update allows
    list_returns            =>  [qw/listing_id amenity_id/], # columns that list returns


    list_prefetch_allows    =>  [ # every possible prefetch param allowed
        [qw/image_rs/], {  'image_rs' => [qw//] },
		[qw/listing_amenities_rs/], {  'listing_amenities_rs' => [qw//] },
		
    ],

    list_ordered_by         => [qw/listing_id amenity_id/], # order of generated list
    list_search_exposes     => [
        qw/listing_id amenity_id/,
        
    ], # columns that can be searched on via list
);

=head1 NAME

 - REST Controller for VanessasListings

=head1 DESCRIPTION

REST Methods to access the DBIC Result Class listing_amenity

=head1 AUTHOR

John Napiorkowski

=head1 SEE ALSO

L<Catalyst::Controller::DBIC::API>
L<Catalyst::Controller::DBIC::API::REST>
L<Catalyst::Controller::DBIC::API::RPC>

=head1 LICENSE



=cut

1;
