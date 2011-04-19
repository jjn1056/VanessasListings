use strict;
use warnings;
use Test::More;


use Catalyst::Test 'VanessasListings::Web';
use VanessasListings::Web::Controller::API::REST::Unit;

ok( request('/api/rest')->is_success, 'Request should succeed' );
done_testing();
