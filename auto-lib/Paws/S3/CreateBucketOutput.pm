
package Paws::S3::CreateBucketOutput;
  use Moose;
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateBucketOutput

=head1 ATTRIBUTES


=head2 Location => Str






=cut

