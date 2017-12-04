package Paws::AutoScaling::LaunchTemplateSpecification;
  use Moose;
  has LaunchTemplateId => (is => 'ro', isa => 'Str');
  has LaunchTemplateName => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LaunchTemplateSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::LaunchTemplateSpecification object:

  $service_obj->Method(Att1 => { LaunchTemplateId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::LaunchTemplateSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->LaunchTemplateId

=head1 DESCRIPTION

Describes a launch template.

=head1 ATTRIBUTES


=head2 LaunchTemplateId => Str

  The ID of the launch template. You must specify either a template ID or
a template name.


=head2 LaunchTemplateName => Str

  The name of the launch template. You must specify either a template
name or a template ID.


=head2 Version => Str

  The version number. By default, the default version of the launch
template is used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

