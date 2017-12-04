
package Paws::AppSync::UpdateGraphqlApi;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has AuthenticationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationType');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has UserPoolConfig => (is => 'ro', isa => 'Paws::AppSync::UserPoolConfig', traits => ['NameInRequest'], request_name => 'userPoolConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGraphqlApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::UpdateGraphqlApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateGraphqlApi - Arguments for method UpdateGraphqlApi on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGraphqlApi on the 
AWS AppSync service. Use the attributes of this class
as arguments to method UpdateGraphqlApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGraphqlApi.

As an example:

  $service_obj->UpdateGraphqlApi(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 AuthenticationType => Str

The new authentication type for the C<GraphqlApi> object.

Valid values are: C<"API_KEY">, C<"AWS_IAM">, C<"AMAZON_COGNITO_USER_POOLS">

=head2 B<REQUIRED> Name => Str

The new name for the C<GraphqlApi> object.



=head2 UserPoolConfig => L<Paws::AppSync::UserPoolConfig>

The new Amazon Cognito User Pool configuration for the C<GraphqlApi>
object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGraphqlApi in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

