package VanessasListings::Schema::Result::Amenity;

use VanessasListings::Schema::Candy;

table 'amenity';

column amenity_id => {
  data_type => 'varchar',
  size => 22,
};

primary_key 'amenity_id';

has_many listings_amenity_rs => ('::ListingAmenity', 'amenity_id');
many_to_many amenities => ('listings_amenity_rs', 'listing');

column label => {
  data_type => 'varchar',
  size => 24,
};

unique_constraint ['label'];

1;

=head1 NAME

VanessasListings::Schema::Result::Amenity - Information about a listing amenitys

=head1 DESCRIPTION

A amenity is something like 'rental', 'sales', etc.

=head1 COLUMNS

These are the fields in this source

=head2 amenity_id

Primary key used to identify a amenity for internal use.

=head2 label

Unique informative label for the amenity, something like "Dog Friendly"

=head1 METHODS

This package defines the following methods.

=head1 AUTHOR

See L<VanessasListings> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListings> for rights information.

=cut
