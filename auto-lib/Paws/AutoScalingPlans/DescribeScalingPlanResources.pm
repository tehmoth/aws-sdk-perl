
package Paws::AutoScalingPlans::DescribeScalingPlanResources;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPlanName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingPlanVersion => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingPlanResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScalingPlans::DescribeScalingPlanResourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::DescribeScalingPlanResources - Arguments for method DescribeScalingPlanResources on L<Paws::AutoScalingPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScalingPlanResources on the 
AWS Auto Scaling Plans service. Use the attributes of this class
as arguments to method DescribeScalingPlanResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScalingPlanResources.

As an example:

  $service_obj->DescribeScalingPlanResources(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of scalable resources to return. This value can be
between 1 and 50. The default value is 50.



=head2 NextToken => Str

The token for the next set of results.



=head2 B<REQUIRED> ScalingPlanName => Str

The name of the scaling plan.



=head2 B<REQUIRED> ScalingPlanVersion => Int

The version of the scaling plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScalingPlanResources in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
