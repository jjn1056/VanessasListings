package VanessasListing::Schema::Candy;
use parent 'DBIx::Class::Candy';

sub base { $_[1] || 'VanessasListing::Schema::Result' }

1;

=head1 NAME

VanessasListing::Schema::Candy - My Candy Class

=head1 SYNOPSIS

	package VanessasListing::Schema::Result::User;
    use VanessasListing::Schema::Candy;;
	
=head1 DESCRIPTION

Our custom subclass of L<DBIx::Class::Candy>

=head1 METHODS

This module defines the following methods.

=head2 base

Sets the base class for all Resukts

=head1 AUTHOR

See L<VanessasListing> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListing> for rights information.

=cut


