
package Paws::Lightsail::GetLoadBalancer;
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loadBalancerName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetLoadBalancer - Arguments for method GetLoadBalancer on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLoadBalancer on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLoadBalancer.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetLoadBalancerResult = $lightsail->GetLoadBalancer(
      LoadBalancerName => 'MyResourceName',

    );

    # Results:
    my $LoadBalancer = $GetLoadBalancerResult->LoadBalancer;

    # Returns a L<Paws::Lightsail::GetLoadBalancerResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetLoadBalancer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLoadBalancer in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

