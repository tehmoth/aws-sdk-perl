
package Paws::AppStream::DescribeImageBuilders;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImageBuilders');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeImageBuildersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeImageBuilders - Arguments for method DescribeImageBuilders on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImageBuilders on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DescribeImageBuilders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImageBuilders.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DescribeImageBuildersResult = $appstream2->DescribeImageBuilders(
      MaxResults => 1,    # OPTIONAL
      Names      => [
        'MyString', ...    # min: 1,
      ],                   # OPTIONAL
      NextToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken     = $DescribeImageBuildersResult->NextToken;
    my $ImageBuilders = $DescribeImageBuildersResult->ImageBuilders;

    # Returns a L<Paws::AppStream::DescribeImageBuildersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum size of each page of results.



=head2 Names => ArrayRef[Str|Undef]

The names of the image builders to describe.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImageBuilders in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

