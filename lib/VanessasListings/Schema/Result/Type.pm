package VanessasListings::Schema::Result::Type;

use VanessasListings::Schema::Candy;

table 'type';

column type_id => {
  data_type => 'varchar',
  size => 22,
};

primary_key 'type_id';

has_many listing_rs => ('::Listing', 'type_id');

column label => {
  data_type => 'varchar',
  size => 24,
};

unique_constraint ['label'];

1;

=head1 NAME

VanessasListings::Schema::Result::Type - Information about a listing types

=head1 DESCRIPTION

A type is something like 'rental', 'sales', etc.

=head1 COLUMNS

These are the fields in this source

=head2 type_id

Primary key used to identify a type for internal use.

=head2 label

Unique informative label for the type, something like "rental", etc.

=head1 METHODS

This package defines the following methods.

=head1 AUTHOR

See L<VanessasListings> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListings> for rights information.

=cut
