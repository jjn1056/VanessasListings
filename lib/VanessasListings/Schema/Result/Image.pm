package VanessasListing::Schema::Result::Image;

use VanessasListing::Schema::Candy;

table 'image';

column image_id => {
  data_type => 'varchar',
  size => 22,
};

primary_key 'image_id';

column listing_id => {
  data_type => 'varchar',
  size => 22,
};

belongs_to listing_rs => ('::Listing', 'listing_id');

column comments => {
  data_type => 'text',
};

column created => {
  data_type => 'datetime', 
  set_on_create => 1,
};

1;

=head1 NAME

VanessasListing::Schema::Result::Image - Information about a listing images

=head1 DESCRIPTION

Numerical count of the number of images for a listing (in the building that
the listing is on).  This is basically how many other apartments are in the
building.

=head1 COLUMNS

These are the fields in this source

=head2 image_id

Primary key used to identify a image for internal use.

=head2 listing_id

FK to the Listing this image belongs to.

=head2 comments

Some copy to explain an image

=head2 created

Just a basic timestamp

=head1 METHODS

This package defines the following methods.

=head1 AUTHOR

See L<VanessasListing> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListing> for rights information.

=cut
