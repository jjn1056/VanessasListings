package VanessasListings::Web::Model::Schema;
use Moose;

extends 'Catalyst::Model::DBIC::Schema';

after 'BUILD', sub {
  my $schema = $_[0]->schema;

  $_[0]->schema->deploy;
  $_[0]->schema->resultset('Listing')->create({
    web_number => '111',
    title => 'My Awesome New Listing',
    comments => 'Awesome new site',
    price => { amount => Data::Money->new(value=>100) },
    bedroom => { label => 'Studio' },
    bath => { number_of => 1 },
    type => { label => 'Rental' },
    floor => { number_of => 5 },
    unit => { number_of => 6 },
    listing_amenities_rs => [
      map { +{amenity => {label=>$_}} } 
        ('Dog Friendly', 'Doorman'), 
    ],
    image_rs => [
      {comments => "A nice picture"},
      {comments => "Another nice picture"},
    ],
  })
};

1;
 
=head1 NAME
 
VanessasListings::Web::Model::Schema - Database adaptor
 
=head1 DESCRIPTION
 
Links the database into the web application
 
=head1 AUTHOR

See L<VanessasListings> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListings> for rights information.

=cut 
 
