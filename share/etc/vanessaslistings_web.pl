my $config = {
  default_view => 'HTML',
  debug_panels => [qw(
    Timer
    CatalystLog
    DBITrace
    DBIC::QueryLog
    Response
    Environment
    Parameters
    Memory
  )],
  'Controller::Root' => {
    namespace => '',
  },
  'Model::Schema' => {
    schema_class => 'VanessasListings::Schema',
    traits => ['QueryLog::AdoptPlack'],
      connect_info => {
	dsn => 'dbi:SQLite:dbname=:memory:',
      },
  },
};


