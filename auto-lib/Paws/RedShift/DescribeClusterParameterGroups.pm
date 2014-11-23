
package Paws::RedShift::DescribeClusterParameterGroups {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str]');
  has TagValues => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterParameterGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ClusterParameterGroupsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterParameterGroupsResult');
}
1;