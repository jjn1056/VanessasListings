use Test::Most;
use Test::Requires qw(Test::LeakTrace);
use Plack::Test;
use Plack::Builder;
use HTTP::Request::Common qw(GET);
use VanessasListings::Web;

VanessasListings::Web->setup_engine('PSGI');

ok (
  my $app = builder {
    enable 'StackTrace';
    enable 'Debug', panels => VanessasListings::Web->config->{debug_panels};
    sub { VanessasListings::Web->run(@_) };  
  },
  'Built an Application',
);

ok (
  my $cb = sub {
    $_[0]->(GET '/'); ## TODO Add more URLs that might leak
  },
  'Created callback function for test_psgi',
);

no_leaks_ok (
  sub {
    my $total = $ENV{LEAK_TEST_ITERATIONS} || 1;
    for (1..$total) {
      test_psgi $app, $cb;
    }
  }, 
  'No leaks in application',
);

done_testing;
