use Test::Most;
use Data::Money;
use Test::DBIx::Class 
  -schema_class => 'VanessasListings::Schema', 
  qw(:resultsets);

ok my $bath = Bath->create({number_of=>10}),
  'Created a Bath!';

ok my $listing = Listing->create({
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
    map { +{amenity => {label=>$_} } } 
      ('Dog Friendly', 'Doorman'), 
  ],
  image_rs => [
    {comments => "A nice picture"},
    {comments => "Another nice picture"},
  ],
}), 'Created a Listing';

done_testing;
