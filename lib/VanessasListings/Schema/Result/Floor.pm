package VanessasListing::Schema::Result::Floor;

use VanessasListing::Schema::Candy;

table 'floor';

column floor_id => {
  data_type => 'varchar',
  size => 22,
};

primary_key 'floor_id';

has_many listing_rs => ('::Listing', 'floor_id');

column number_of => {
  data_type => 'varchar',
  size => 24,
};

unique_constraint ['number_of'];

1;

=head1 NAME

VanessasListing::Schema::Result::Floor - Information about a listing floors

=head1 DESCRIPTION

Numerical count of the number of floors for a listing (in the building that
the listing is on).

=head1 COLUMNS

These are the fields in this source

=head2 floor_id

Primary key used to identify a floor for internal use.

=head2 number_of

Unique count of the number of floor for a listing

=head1 METHODS

This package defines the following methods.

=head1 AUTHOR

See L<VanessasListing> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListing> for rights information.

=cut
