
package Paws::KMS::ListGrantsResponse;
  use Moose;
  has Grants => (is => 'ro', isa => 'ArrayRef[Paws::KMS::GrantListEntry]');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Truncated => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ListGrantsResponse

=head1 ATTRIBUTES


=head2 Grants => ArrayRef[L<Paws::KMS::GrantListEntry>]

A list of grants.


=head2 NextMarker => Str

When C<Truncated> is true, this element is present and contains the
value to use for the C<Marker> parameter in a subsequent request.


=head2 Truncated => Bool

A flag that indicates whether there are more items in the list. When
this value is true, the list in this response is truncated. To retrieve
more items, pass the value of the C<NextMarker> element in this
response to the C<Marker> parameter in a subsequent request.


=head2 _request_id => Str


=cut

1;