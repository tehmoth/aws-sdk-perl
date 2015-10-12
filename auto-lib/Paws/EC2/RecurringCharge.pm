package Paws::EC2::RecurringCharge;
  use Moose;
  has Amount => (is => 'ro', isa => 'Num', xmlname => 'amount', traits => ['Unwrapped']);
  has Frequency => (is => 'ro', isa => 'Str', xmlname => 'frequency', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RecurringCharge

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RecurringCharge object:

  $service_obj->Method(Att1 => { Amount => $value, ..., Frequency => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RecurringCharge object:

  $result = $service_obj->Method(...);
  $result->Att1->Amount

=head1 ATTRIBUTES

=head2 Amount => Num

  

The amount of the recurring charge.










=head2 Frequency => Str

  

The frequency of the recurring charge.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
