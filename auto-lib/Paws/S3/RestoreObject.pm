
package Paws::S3::RestoreObject;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has RestoreRequest => (is => 'ro', isa => 'Paws::S3::RestoreRequest');
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?restore');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::RestoreObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::RestoreObject - Arguments for method RestoreObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method RestoreObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $RestoreObjectOutput = $s3->RestoreObject(
      Bucket         => 'MyBucketName',
      Key            => 'MyObjectKey',
      RequestPayer   => 'requester',      # OPTIONAL
      RestoreRequest => {
        OutputLocation => {
          S3 => {
            BucketName => 'MyBucketName',
            Prefix     => 'MyLocationPrefix',
            Encryption => {
              EncryptionType => 'AES256',           # values: AES256, aws:kms
              KMSContext     => 'MyKMSContext',     # OPTIONAL
              KMSKeyId       => 'MySSEKMSKeyId',    # OPTIONAL
            },    # OPTIONAL
            StorageClass => 'STANDARD'
            , # values: STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA; OPTIONAL
            AccessControlList => [
              {
                Grantee => {
                  Type => 'CanonicalUser'
                  ,    # values: CanonicalUser, AmazonCustomerByEmail, Group
                  DisplayName  => 'MyDisplayName',     # OPTIONAL
                  ID           => 'MyID',              # OPTIONAL
                  EmailAddress => 'MyEmailAddress',    # OPTIONAL
                  URI          => 'MyURI',             # OPTIONAL
                },    # OPTIONAL
                Permission => 'FULL_CONTROL'
                , # values: FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP; OPTIONAL
              },
              ...
            ],    # OPTIONAL
            Tagging => {
              TagSet => [
                {
                  Key   => 'MyObjectKey',    # min: 1,
                  Value => 'MyValue',

                },
                ...
              ],

            },    # OPTIONAL
            CannedACL => 'private'
            , # values: private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, bucket-owner-full-control; OPTIONAL
            UserMetadata => [
              {
                Value => 'MyMetadataValue',    # OPTIONAL
                Name  => 'MyMetadataKey',      # OPTIONAL
              },
              ...
            ],                                 # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Type             => 'SELECT',    # values: SELECT; OPTIONAL
        SelectParameters => {
          OutputSerialization => {
            CSV => {
              QuoteCharacter       => 'MyQuoteCharacter',          # OPTIONAL
              QuoteEscapeCharacter => 'MyQuoteEscapeCharacter',    # OPTIONAL
              RecordDelimiter      => 'MyRecordDelimiter',         # OPTIONAL
              FieldDelimiter       => 'MyFieldDelimiter',          # OPTIONAL
              QuoteFields => 'ALWAYS',    # values: ALWAYS, ASNEEDED; OPTIONAL
            },    # OPTIONAL
            JSON => {
              RecordDelimiter => 'MyRecordDelimiter',    # OPTIONAL
            },    # OPTIONAL
          },
          InputSerialization => {
            CompressionType => 'NONE',    # values: NONE, GZIP; OPTIONAL
            CSV             => {
              QuoteCharacter       => 'MyQuoteCharacter',          # OPTIONAL
              QuoteEscapeCharacter => 'MyQuoteEscapeCharacter',    # OPTIONAL
              Comments             => 'MyComments',                # OPTIONAL
              FileHeaderInfo => 'USE',    # values: USE, IGNORE, NONE; OPTIONAL
              RecordDelimiter => 'MyRecordDelimiter',    # OPTIONAL
              FieldDelimiter  => 'MyFieldDelimiter',     # OPTIONAL
            },    # OPTIONAL
            JSON => {
              Type => 'DOCUMENT',    # values: DOCUMENT, LINES; OPTIONAL
            },    # OPTIONAL
          },
          Expression     => 'MyExpression',
          ExpressionType => 'SQL',            # values: SQL

        },    # OPTIONAL
        Days => 1,             # OPTIONAL
        Tier => 'Standard',    # values: Standard, Bulk, Expedited; OPTIONAL
        GlacierJobParameters => {
          Tier => 'Standard',    # values: Standard, Bulk, Expedited; OPTIONAL

        },    # OPTIONAL
        Description => 'MyDescription',    # OPTIONAL
      },    # OPTIONAL
      VersionId => 'MyObjectVersionId',    # OPTIONAL
    );

    # Results:
    my $RestoreOutputPath = $RestoreObjectOutput->RestoreOutputPath;
    my $RequestCharged    = $RestoreObjectOutput->RequestCharged;

    # Returns a L<Paws::S3::RestoreObjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/RestoreObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 B<REQUIRED> Key => Str





=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 RestoreRequest => L<Paws::S3::RestoreRequest>





=head2 VersionId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

