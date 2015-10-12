package Paws::EC2::ImportInstanceTaskDetails;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped']);
  has InstanceId => (is => 'ro', isa => 'Str', xmlname => 'instanceId', traits => ['Unwrapped']);
  has Platform => (is => 'ro', isa => 'Str', xmlname => 'platform', traits => ['Unwrapped']);
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ImportInstanceVolumeDetailItem]', xmlname => 'volumes', traits => ['Unwrapped'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportInstanceTaskDetails

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ImportInstanceTaskDetails object:

  $service_obj->Method(Att1 => { Description => $value, ..., Volumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ImportInstanceTaskDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 ATTRIBUTES

=head2 Description => Str

  

A description of the task.










=head2 InstanceId => Str

  

The ID of the instance.










=head2 Platform => Str

  

The instance operating system.










=head2 B<REQUIRED> Volumes => ArrayRef[Paws::EC2::ImportInstanceVolumeDetailItem]

  

One or more volumes.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
