package VanessasListing::Schema::Result::Amenity;

use VanessasListing::Schema::Candy;

table 'amenity';

column amenity_id => {
  data_amenity => 'varchar',
  size => 22,
};

primary_key 'amenity_id';

has_many listing_rs => ('::Listing', 'amenity_id');

column label => {
  data_amenity => 'varchar',
  size => 24,
};

unique_constraint ['label'];

1;

=head1 NAME

VanessasListing::Schema::Result::Amenity - Information about a listing amenitys

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

See L<VanessasListing> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListing> for rights information.

=cut
