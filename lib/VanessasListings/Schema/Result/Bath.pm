package VanessasListing::Schema::Result::Bath;

use VanessasListing::Schema::Candy;

table 'bath';

column bath_id => {
  data_type => 'varchar',
  size => 22,
};

primary_key 'bath_id';

has_many listing_rs => ('::Listing', 'bath_id');

column number_of => {
  data_type => 'varchar',
  size => 24,
};

unique_constraint ['number_of'];

1;

=head1 NAME

VanessasListing::Schema::Result::Bath - Information about a listing baths

=head1 DESCRIPTION

Numerical count of the number of bathrooms for a listing

=head1 COLUMNS

These are the fields in this source

=head2 bath_id

Primary key used to identify a bath for internal use.

=head2 number_of

Unique count of the number of bathrooms for a listing

=head1 METHODS

This package defines the following methods.

=head1 AUTHOR

See L<VanessasListing> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListing> for rights information.

=cut
