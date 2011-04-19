package VanessasListings::Web::Controller::API::REST::Listing;

use strict;
use warnings;
use JSON::Syck;

use parent qw/VanessasListings::Web::ControllerBase::REST/;

__PACKAGE__->config(
    action                  =>  { setup => { PathPart => 'listing', Chained => '/api/rest/rest_base' } },
                                # define parent chain action and partpath
    class                   =>  'Schema::Listing', # DBIC result class
    create_requires         =>  [qw/bath_id bedroom_id comments created floor_id listing_id price_id title type_id unit_id web_number/], # columns required to create
    create_allows           =>  [qw//], # additional non-required columns that create allows
    update_allows           =>  [qw/bath_id bedroom_id comments created floor_id listing_id price_id title type_id unit_id web_number/], # columns that update allows
    list_returns            =>  [qw/listing_id web_number title comments price_id bedroom_id bath_id type_id floor_id unit_id created/], # columns that list returns


    list_prefetch_allows    =>  [ # every possible prefetch param allowed
        [qw/image_rs/], {  'image_rs' => [qw//] },
		[qw/listing_amenities_rs/], {  'listing_amenities_rs' => [qw//] },
		
    ],

    list_ordered_by         => [qw/listing_id/], # order of generated list
    list_search_exposes     => [
        qw/listing_id web_number title comments price_id bedroom_id bath_id type_id floor_id unit_id created/,
        { 'image_rs' => [qw/image_id listing_id comments created/] },
		{ 'listing_amenities_rs' => [qw/listing_id amenity_id/] },
		
    ], # columns that can be searched on via list
);

=head1 NAME

 - REST Controller for VanessasListings

=head1 DESCRIPTION

REST Methods to access the DBIC Result Class listing

=head1 AUTHOR

John Napiorkowski

=head1 SEE ALSO

L<Catalyst::Controller::DBIC::API>
L<Catalyst::Controller::DBIC::API::REST>
L<Catalyst::Controller::DBIC::API::RPC>

=head1 LICENSE



=cut

1;
