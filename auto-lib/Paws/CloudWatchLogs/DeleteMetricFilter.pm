
package Paws::CloudWatchLogs::DeleteMetricFilter;
  use Moose;
  has FilterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterName' , required => 1);
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMetricFilter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DeleteMetricFilter - Arguments for method DeleteMetricFilter on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMetricFilter on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DeleteMetricFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMetricFilter.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->DeleteMetricFilter(
      FilterName   => 'MyFilterName',
      LogGroupName => 'MyLogGroupName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DeleteMetricFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FilterName => Str

The name of the metric filter.



=head2 B<REQUIRED> LogGroupName => Str

The name of the log group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMetricFilter in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

