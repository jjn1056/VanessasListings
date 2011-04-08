use Test::Most;
use Catalyst::Test 'VanessasListings::Web';

ok request('/')->is_success,
  'Request should succeed';

done_testing;
