package Paws::ServiceCatalog::ResourceDetail;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ResourceDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ResourceDetail object:

  $service_obj->Method(Att1 => { ARN => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ResourceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

Detailed resource information.

=head1 ATTRIBUTES


=head2 ARN => Str

  ARN of the resource.


=head2 CreatedTime => Str

  Creation time of the resource.


=head2 Description => Str

  Description of the resource.


=head2 Id => Str

  Identifier of the resource.


=head2 Name => Str

  Name of the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
