
package Paws::Connect::ListSecurityProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SecurityProfileSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::SecurityProfileSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListSecurityProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A string returned in the response. Use the value returned in the
response as the value of the NextToken in a subsequent request to
retrieve the next set of results.


=head2 SecurityProfileSummaryList => ArrayRef[L<Paws::Connect::SecurityProfileSummary>]

An array of C<SecurityProfileSummary> objects.


=head2 _request_id => Str


=cut

