
package Paws::RDS::RestoreDBInstanceFromS3Result;
  use Moose;
  has DBInstance => (is => 'ro', isa => 'Paws::RDS::DBInstance');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RestoreDBInstanceFromS3Result

=head1 ATTRIBUTES


=head2 DBInstance => L<Paws::RDS::DBInstance>




=head2 _request_id => Str


=cut

