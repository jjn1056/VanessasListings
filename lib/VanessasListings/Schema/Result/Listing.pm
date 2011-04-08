package VanessasListings::Schema::Result::Listing;

use VanessasListings::Schema::Candy;

table 'listing';

column listing_id => {
  data_type => 'varchar',
  size => 22,
};

primary_key 'listing_id';

column web_number => {
  data_type => 'integer',
};

unique_constraint ['web_number'];

column title => {
  data_type => 'varchar',
  size => 60,
};

column comments => {
  data_type => 'text',
};

column price_id => {
  data_type => 'varchar',
  size => 22,
};

belongs_to price => '::Price', 'price_id';

column bedroom_id => {
  data_type => 'varchar',
  size => 22,
};

belongs_to bedroom => '::Bedroom', 'bedroom_id';

column bath_id => {
  data_type => 'varchar',
  size => 22,
};

belongs_to bath => '::Bath', 'bath_id';

column type_id => {
  data_type => 'varchar',
  size => 22,
};

belongs_to type => '::Type', 'type_id';

column floor_id => {
  data_type => 'varchar',
  size => 22,
};

belongs_to floor => '::Floor', 'floor_id';

column unit_id => {
  data_type => 'varchar',
  size => 22,
};

belongs_to unit => '::Unit', 'unit_id';

column created => {
  data_type => 'datetime', 
  set_on_create => 1,
};

has_many image_rs => ('::Image',  'listing_id');
has_many listing_amenities_rs => ('::ListingAmenity', 'listing_id');
many_to_many amenities => ('listing_amenities_rs', 'amenity');

1;

=head1 NAME

VanessasListings::Schema::Result::Listing - Information about a listing

=head1 DESCRIPTION

A person or organization that created a video.  A video may have one or more
creator and each creator may be the source of one or more videos.

In many cases the creator and contributor will be one and the same.

=head1 COLUMNS

These are the fields in this source

=head2 listing_id 

Primary key used to identify a creator for internal use.

=head2 web_number 

A publicly shared integer that people can use to refer to a listing.  Unique.

=head2 comments

A wide open text field you can use to add details about a listing.  For now
this is text only.

=head2 price_id

refers to the L<VanessasListings::Schema::Result::Price> for this listing.

=head2 bedroom_id

refers to the L<VanessasListings::Schema::Result::Bedroom> for this listing.

=head2 bath_id

refers to the L<VanessasListings::Schema::Result::Bath> for this listing.

=head2 type_id

refers to the L<VanessasListings::Schema::Result::Type> for this listing.

=head2 floor_id

refers to the L<VanessasListings::Schema::Result::Floor> for this listing.

=head2 unit_id

refers to the L<VanessasListings::Schema::Result::Unit> for this listing.

=head2 created

Just a basic timestamp

=head1 METHODS

This package defines the following methods.

=head1 AUTHOR

See L<VanessasListings> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListings> for rights information.

=cut
