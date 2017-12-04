
package Paws::IoT::ListTargetsForPolicy;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'pageSize');
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTargetsForPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policy-targets/{policyName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListTargetsForPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListTargetsForPolicy - Arguments for method ListTargetsForPolicy on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTargetsForPolicy on the 
AWS IoT service. Use the attributes of this class
as arguments to method ListTargetsForPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTargetsForPolicy.

As an example:

  $service_obj->ListTargetsForPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Marker => Str

A marker used to get the next set of results.



=head2 PageSize => Int

The maximum number of results to return at one time.



=head2 B<REQUIRED> PolicyName => Str

The policy name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTargetsForPolicy in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

