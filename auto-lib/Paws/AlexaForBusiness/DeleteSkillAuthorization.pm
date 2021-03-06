
package Paws::AlexaForBusiness::DeleteSkillAuthorization;
  use Moose;
  has RoomArn => (is => 'ro', isa => 'Str');
  has SkillId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSkillAuthorization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::DeleteSkillAuthorizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::DeleteSkillAuthorization - Arguments for method DeleteSkillAuthorization on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSkillAuthorization on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method DeleteSkillAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSkillAuthorization.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $DeleteSkillAuthorizationResponse = $a4b->DeleteSkillAuthorization(
      SkillId => 'MySkillId',
      RoomArn => 'MyArn',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/DeleteSkillAuthorization>

=head1 ATTRIBUTES


=head2 RoomArn => Str

The room that the skill is authorized for.



=head2 B<REQUIRED> SkillId => Str

The unique identifier of a skill.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSkillAuthorization in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

