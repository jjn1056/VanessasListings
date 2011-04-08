#!/usr/bin/env perl

use strict;
use warnings FATAL =>'all';
use inc::Module::Install 1.00;

requires 'Moose';
requires 'Plack';
requires 'Plack::Middleware::Debug::DBIC::QueryLog';
requires 'Plack::Middleware::Debug';
requires 'Catalyst::Runtime';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Action::RenderView';
requires 'Catalyst::Model::DBIC::Schema';
requires 'Catalyst::TraitFor::Model::DBIC::Schema::QueryLog::AdoptPlack';
requires 'Catalyst::Engine::PSGI';
requires 'CatalystX::Declare';
requires 'DBIx::Class';
requires 'DBIx::Class::Helpers';
requires 'DBIx::Class::DynamicDefault';
requires 'DBIx::Class::TimeStamp';
requires 'DBIx::Class::QueryLog';
requires 'DBIx::Class::Candy';
requires 'Data::UUID::Base64URLSafe';
requires 'Data::Money';
requires 'Syntax::Feature::Method';
requires 'Syntax::Feature::Function';

test_requires 'Test::Most';
test_requires 'Test::DBIx::Class';
test_requires 'Test::LeakTrace';

license 'restricted';
all_from 'lib/VanessasListings.pm';
require 'maint/Makefile.PL.include'
  unless -e 'META.yml';

WriteAll;
