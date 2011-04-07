package VanessasListing::Schema::DefaultRS;
use parent 'VanessasListing::Schema::ResultSet';
1;

=head1 NAME

VanessasListing::Schema::DefaultRS - Use this as the default ResultSet.

=head1 DESCRIPTION

L<DBIx::Class> will use a resultset class which shares a name with the Result
class.  If one does not exist, use this class as the default.  Both custom and
default Resultsets share L<VanessasListing::Schema::ResultSet> as a
common base class.

If you are thinking of adding methods here, they probably belong in the true
base parent L<VanessasListing::Schema::ResultSet>.

=head1 AUTHOR

See L<VanessasListing> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<VanessasListing> for rights information.

=cut

