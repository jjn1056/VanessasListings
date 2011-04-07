package VanessasListings::Schema::Result::Bedroom;

use VanessasListings::Schema::Candy;

table 'bedroom';

column bedroom_id => {
  data_type => 'varchar',
  size => 22,
};

primary_key 'bedroom_id';

has_many listing_rs => ('::Listing', 'bedroom_id');

column label => {
  data_type => 'varchar',
  size => 24,
};

unique_constraint ['label'];

1;

=head1 NAME

VanessasListings::Schema::Result::Bedroom - Information about a listing bedrooms

=head1 DESCRIPTION

Information about a listing which is a fixed list of options (Studio, One
Bedroom, etc.)

=head1 COLUMNS

These are the fields in this source

=head2 bedroom_id

Primary key used to identify a bedroom for internal use.

=head2 label

Unique code for this bedrooms type.  Unique and from a list that is pre-determined

=head1 METHODS

This package defines the following methods.

=head1 AUTHOR

See L<VanessasListings> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListings> for rights information.

=cut
