#!/usr/bin/env perl

use strict;
use warnings FATAL => 'all';
use Plack::Builder;
use VanessasListings::Web;

VanessasListings::Web->setup_engine('PSGI');

builder {
  enable 'StackTrace';
  enable 'Debug', panels => VanessasListings::Web->config->{debug_panels};
  sub { VanessasListings::Web->run(@_) };
};

