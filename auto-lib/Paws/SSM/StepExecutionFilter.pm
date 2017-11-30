package Paws::SSM::StepExecutionFilter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StepExecutionFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::StepExecutionFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::StepExecutionFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A filter to limit the amount of step execution information returned by
the call.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  One or more keys to limit the results. Valid filter keys include the
following: StepName, Action, StepExecutionId, StepExecutionStatus,
StartTimeBefore, StartTimeAfter.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  The values of the filter key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
