package VanessasListings::Schema::Result;
use parent 'DBIx::Class::Core';

__PACKAGE__->load_components(qw/
    Helper::Row::NumifyGet
    Helper::Row::OnColumnChange
    Helper::Row::StorageValues
    Helper::Row::RelationshipDWIM
    DynamicDefault
    TimeStamp
    InflateColumn::DateTime
  /);


sub default_result_namespace { 'VanessasListings::Schema::Result' }

use Data::UUID::Base64URLSafe;

my $ug = Data::UUID::Base64URLSafe->new;
sub uuid { $ug->create_b64_urlsafe }

sub insert {
  my $self = shift;
  for my $column ($self->primary_columns) {
    $self->store_column($column, $self->uuid)
      unless defined $self->get_column($column);
  }
  $self->next::method(@_);
}

1;

=head1 NAME

VanessasListings::Schema::Result - The base result class

=head1 SYNOPSIS

	package VanessasListings::Schema::Result::User;
    use parent 'VanessasListings::Schema::Result';
	
=head1 DESCRIPTION

All Result classes will inherit from this.  This provides some base functions,
primarily from included components.  Please see the documentation for the
following components: L<DBIx::Class::Helpers>, L<DBIx::Class::DynamicDefault>,
L<DBIx::Class::Timestamp>, L<DBIx::Class::InflateColumn::DateTime>.

=head1 ATTRIBUTES

This class defines the following attributes.

=head1 METHODS

This module defines the following methods.

=head2 insert

modify global insert to provide a uuid PK if an insert is missing one.

=head2 default_result_namespace

Required by L<DBIx::Class::Helper::Row::RelationshipDWIM> to set the namespace
that gets prepended in relationships class names.

=head1 AUTHOR

See L<VanessasListings> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListings> for rights information.

=cut

