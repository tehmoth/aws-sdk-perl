
package Paws::DynamoDB::RestoreTableFromBackup;
  use Moose;
  has BackupArn => (is => 'ro', isa => 'Str', required => 1);
  has TargetTableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreTableFromBackup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::RestoreTableFromBackupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::RestoreTableFromBackup - Arguments for method RestoreTableFromBackup on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreTableFromBackup on the 
Amazon DynamoDB service. Use the attributes of this class
as arguments to method RestoreTableFromBackup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreTableFromBackup.

As an example:

  $service_obj->RestoreTableFromBackup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupArn => Str

The ARN associated with the backup.



=head2 B<REQUIRED> TargetTableName => Str

The name of the new table to which the backup must be restored.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreTableFromBackup in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
