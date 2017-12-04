
package Paws::AppSync::ListGraphqlApis;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGraphqlApis');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::ListGraphqlApisResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListGraphqlApis - Arguments for method ListGraphqlApis on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGraphqlApis on the 
AWS AppSync service. Use the attributes of this class
as arguments to method ListGraphqlApis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGraphqlApis.

As an example:

  $service_obj->ListGraphqlApis(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results you want the request to return.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGraphqlApis in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

