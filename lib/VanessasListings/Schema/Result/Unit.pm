package VanessasListing::Schema::Result::Unit;

use VanessasListing::Schema::Candy;

table 'unit';

column unit_id => {
  data_type => 'varchar',
  size => 22,
};

primary_key 'unit_id';

has_many listing_rs => ('::Listing', 'unit_id');

column number_of => {
  data_type => 'varchar',
  size => 24,
};

unique_constraint ['number_of'];

1;

=head1 NAME

VanessasListing::Schema::Result::Unit - Information about a listing units

=head1 DESCRIPTION

Numerical count of the number of units for a listing (in the building that
the listing is on).  This is basically how many other apartments are in the
building.

=head1 COLUMNS

These are the fields in this source

=head2 unit_id

Primary key used to identify a unit for internal use.

=head2 number_of

Unique count of the number of unit for a listing

=head1 METHODS

This package defines the following methods.

=head1 AUTHOR

See L<VanessasListing> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListing> for rights information.

=cut
