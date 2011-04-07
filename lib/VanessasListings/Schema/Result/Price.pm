package VanessasListings::Schema::Result::Price;

use VanessasListings::Schema::Candy;
use syntax 'function';
use Data::Money;

table 'price';

column price_id => {
  data_type => 'varchar',
  size => 22,
};

primary_key 'price_id';

has_many listing_rs => ('::Listing', 'price_id');

column amount => {
  data_type => 'integer',
};

unique_constraint ['amount'];

inflate_column amount => {
  inflate => fun($value) {
    Data::Money->new(value=>$value/100);
  },
  deflate => fun($money_ob) {
    $money_ob->as_int;
  },
};

1;

=head1 NAME

VanessasListings::Schema::Result::Price - Information about a listing price

=head1 DESCRIPTION

A Uniquely identified price, which for now is in USD.

=head1 COLUMNS

These are the fields in this source

=head2 price_id

Primary key used to identify a price for internal use.

=head2 amount

A unique dollar amount.  Is a L<Data::Money> instance.  

=head1 METHODS

This package defines the following methods.

=head1 AUTHOR

See L<VanessasListings> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListings> for rights information.

=cut
