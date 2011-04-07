package VanessasListings::Schema::Result::ListingAmenity;

use VanessasListings::Schema::Candy;

table 'listing_amenity';

column 'listing_id' => {
  data_type => 'varchar',
  size => '22',
};

column 'amenity_id' => {
  data_type => 'varchar',
  size => '22',
};

primary_key 'listing_id', 'amenity_id';
belongs_to listing => ('::Listing', 'listing_id');
belongs_to amenity => ('::Amenity', 'amenity_id');

1;

=head1 NAME

VanessasListings::Schema::Result::ListingAmenity - Listing to Amenity Join table.

=head1 DESCRIPTION

Join table between Listing and Amenity entities.

=head1 METHODS

This package defines the following methods.

=head1 AUTHOR

See L<VanessasListings> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListings> for rights information.

=cut
