use strict;
use warnings;
use Test::More;


use Catalyst::Test 'VanessasListings::Web';
use VanessasListings::Web::Controller::API::REST::Listing;

ok( request('/api/rest')->is_success, 'Request should succeed' );
done_testing();
