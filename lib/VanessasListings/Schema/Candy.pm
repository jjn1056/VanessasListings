package VanessasListings::Schema::Candy;
use parent 'DBIx::Class::Candy';

sub base { $_[1] || 'VanessasListings::Schema::Result' }

1;

=head1 NAME

VanessasListings::Schema::Candy - My Candy Class

=head1 SYNOPSIS

	package VanessasListings::Schema::Result::User;
    use VanessasListings::Schema::Candy;;
	
=head1 DESCRIPTION

Our custom subclass of L<DBIx::Class::Candy>

=head1 METHODS

This module defines the following methods.

=head2 base

Sets the base class for all Resukts

=head1 AUTHOR

See L<VanessasListings> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListings> for rights information.

=cut


