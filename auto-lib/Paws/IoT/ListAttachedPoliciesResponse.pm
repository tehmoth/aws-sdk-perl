
package Paws::IoT::ListAttachedPoliciesResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextMarker');
  has Policies => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Policy]', traits => ['NameInRequest'], request_name => 'policies');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAttachedPoliciesResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

The token to retrieve the next set of results, or ``null`` if there are
no more results.


=head2 Policies => ArrayRef[L<Paws::IoT::Policy>]

The policies.


=head2 _request_id => Str


=cut

