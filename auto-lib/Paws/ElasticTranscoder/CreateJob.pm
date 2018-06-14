
package Paws::ElasticTranscoder::CreateJob;
  use Moose;
  has Input => (is => 'ro', isa => 'Paws::ElasticTranscoder::JobInput');
  has Inputs => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::JobInput]');
  has Output => (is => 'ro', isa => 'Paws::ElasticTranscoder::CreateJobOutput');
  has OutputKeyPrefix => (is => 'ro', isa => 'Str');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::CreateJobOutput]');
  has PipelineId => (is => 'ro', isa => 'Str', required => 1);
  has Playlists => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::CreateJobPlaylist]');
  has UserMetadata => (is => 'ro', isa => 'Paws::ElasticTranscoder::UserMetadata');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2012-09-25/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::CreateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::CreateJob - Arguments for method CreateJob on L<Paws::ElasticTranscoder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the
L<Amazon Elastic Transcoder|Paws::ElasticTranscoder> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

=head1 SYNOPSIS

    my $elastictranscoder = Paws->service('ElasticTranscoder');
    my $CreateJobResponse = $elastictranscoder->CreateJob(
      PipelineId => 'MyId',
      Input      => {
        Resolution => 'MyResolution',    # OPTIONAL
        Encryption => {
          Key                  => 'MyBase64EncodedString',  # OPTIONAL
          KeyMd5               => 'MyBase64EncodedString',  # OPTIONAL
          Mode                 => 'MyEncryptionMode',       # OPTIONAL
          InitializationVector => 'MyZeroTo255String',      # max: 255; OPTIONAL
        },    # OPTIONAL
        DetectedProperties => {
          DurationMillis => 1,                  # OPTIONAL
          Height         => 1,                  # OPTIONAL
          FrameRate      => 'MyFloatString',    # OPTIONAL
          Width          => 1,                  # OPTIONAL
          FileSize       => 1,                  # OPTIONAL
        },    # OPTIONAL
        Key      => 'MyLongKey',    # min: 1, max: 1024; OPTIONAL
        TimeSpan => {
          StartTime => 'MyTime',    # OPTIONAL
          Duration  => 'MyTime',    # OPTIONAL
        },    # OPTIONAL
        FrameRate     => 'MyFrameRate',      # OPTIONAL
        AspectRatio   => 'MyAspectRatio',    # OPTIONAL
        InputCaptions => {
          CaptionSources => [
            {
              Encryption => {
                Key    => 'MyBase64EncodedString',    # OPTIONAL
                KeyMd5 => 'MyBase64EncodedString',    # OPTIONAL
                Mode   => 'MyEncryptionMode',         # OPTIONAL
                InitializationVector =>
                  'MyZeroTo255String',                # max: 255; OPTIONAL
              },    # OPTIONAL
              Key        => 'MyLongKey',       # min: 1, max: 1024; OPTIONAL
              TimeOffset => 'MyTimeOffset',    # OPTIONAL
              Label      => 'MyName',          # min: 1, max: 40; OPTIONAL
              Language   => 'MyKey',           # min: 1, max: 255; OPTIONAL
            },
            ...
          ],                                   # max: 20; OPTIONAL
          MergePolicy => 'MyCaptionMergePolicy',    # OPTIONAL
        },    # OPTIONAL
        Container  => 'MyJobContainer',    # OPTIONAL
        Interlaced => 'MyInterlaced',      # OPTIONAL
      },    # OPTIONAL
      Inputs => [
        {
          Resolution => 'MyResolution',    # OPTIONAL
          Encryption => {
            Key    => 'MyBase64EncodedString',    # OPTIONAL
            KeyMd5 => 'MyBase64EncodedString',    # OPTIONAL
            Mode   => 'MyEncryptionMode',         # OPTIONAL
            InitializationVector => 'MyZeroTo255String',    # max: 255; OPTIONAL
          },    # OPTIONAL
          DetectedProperties => {
            DurationMillis => 1,                  # OPTIONAL
            Height         => 1,                  # OPTIONAL
            FrameRate      => 'MyFloatString',    # OPTIONAL
            Width          => 1,                  # OPTIONAL
            FileSize       => 1,                  # OPTIONAL
          },    # OPTIONAL
          Key      => 'MyLongKey',    # min: 1, max: 1024; OPTIONAL
          TimeSpan => {
            StartTime => 'MyTime',    # OPTIONAL
            Duration  => 'MyTime',    # OPTIONAL
          },    # OPTIONAL
          FrameRate     => 'MyFrameRate',      # OPTIONAL
          AspectRatio   => 'MyAspectRatio',    # OPTIONAL
          InputCaptions => {
            CaptionSources => [
              {
                Encryption => {
                  Key    => 'MyBase64EncodedString',    # OPTIONAL
                  KeyMd5 => 'MyBase64EncodedString',    # OPTIONAL
                  Mode   => 'MyEncryptionMode',         # OPTIONAL
                  InitializationVector =>
                    'MyZeroTo255String',                # max: 255; OPTIONAL
                },    # OPTIONAL
                Key        => 'MyLongKey',       # min: 1, max: 1024; OPTIONAL
                TimeOffset => 'MyTimeOffset',    # OPTIONAL
                Label      => 'MyName',          # min: 1, max: 40; OPTIONAL
                Language   => 'MyKey',           # min: 1, max: 255; OPTIONAL
              },
              ...
            ],                                   # max: 20; OPTIONAL
            MergePolicy => 'MyCaptionMergePolicy',    # OPTIONAL
          },    # OPTIONAL
          Container  => 'MyJobContainer',    # OPTIONAL
          Interlaced => 'MyInterlaced',      # OPTIONAL
        },
        ...
      ],                                     # OPTIONAL
      Output => {
        PresetId   => 'MyId',
        Encryption => {
          Key                  => 'MyBase64EncodedString',  # OPTIONAL
          KeyMd5               => 'MyBase64EncodedString',  # OPTIONAL
          Mode                 => 'MyEncryptionMode',       # OPTIONAL
          InitializationVector => 'MyZeroTo255String',      # max: 255; OPTIONAL
        },    # OPTIONAL
        Key         => 'MyKey',    # min: 1, max: 255; OPTIONAL
        Composition => [
          {
            TimeSpan => {
              StartTime => 'MyTime',    # OPTIONAL
              Duration  => 'MyTime',    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],        # OPTIONAL
        ThumbnailEncryption => {
          Key                  => 'MyBase64EncodedString',  # OPTIONAL
          KeyMd5               => 'MyBase64EncodedString',  # OPTIONAL
          Mode                 => 'MyEncryptionMode',       # OPTIONAL
          InitializationVector => 'MyZeroTo255String',      # max: 255; OPTIONAL
        },    # OPTIONAL
        AlbumArt => {
          Artwork => [
            {
              AlbumArtFormat => 'MyJpgOrPng',    # OPTIONAL
              Encryption     => {
                Key    => 'MyBase64EncodedString',    # OPTIONAL
                KeyMd5 => 'MyBase64EncodedString',    # OPTIONAL
                Mode   => 'MyEncryptionMode',         # OPTIONAL
                InitializationVector =>
                  'MyZeroTo255String',                # max: 255; OPTIONAL
              },    # OPTIONAL
              MaxWidth      => 'MyDigitsOrAuto',   # OPTIONAL
              InputKey      => 'MyWatermarkKey',   # min: 1, max: 1024; OPTIONAL
              MaxHeight     => 'MyDigitsOrAuto',   # OPTIONAL
              SizingPolicy  => 'MySizingPolicy',   # OPTIONAL
              PaddingPolicy => 'MyPaddingPolicy',  # OPTIONAL
            },
            ...
          ],                                       # OPTIONAL
          MergePolicy => 'MyMergePolicy',          # OPTIONAL
        },    # OPTIONAL
        ThumbnailPattern => 'MyThumbnailPattern',    # OPTIONAL
        SegmentDuration  => 'MyFloatString',         # OPTIONAL
        Watermarks       => [
          {
            PresetWatermarkId =>
              'MyPresetWatermarkId',                 # min: 1, max: 40; OPTIONAL
            Encryption => {
              Key    => 'MyBase64EncodedString',     # OPTIONAL
              KeyMd5 => 'MyBase64EncodedString',     # OPTIONAL
              Mode   => 'MyEncryptionMode',          # OPTIONAL
              InitializationVector => 'MyZeroTo255String',  # max: 255; OPTIONAL
            },    # OPTIONAL
            InputKey => 'MyWatermarkKey',    # min: 1, max: 1024; OPTIONAL
          },
          ...
        ],                                   # OPTIONAL
        Captions => {
          CaptionSources => [
            {
              Encryption => {
                Key    => 'MyBase64EncodedString',    # OPTIONAL
                KeyMd5 => 'MyBase64EncodedString',    # OPTIONAL
                Mode   => 'MyEncryptionMode',         # OPTIONAL
                InitializationVector =>
                  'MyZeroTo255String',                # max: 255; OPTIONAL
              },    # OPTIONAL
              Key        => 'MyLongKey',       # min: 1, max: 1024; OPTIONAL
              TimeOffset => 'MyTimeOffset',    # OPTIONAL
              Label      => 'MyName',          # min: 1, max: 40; OPTIONAL
              Language   => 'MyKey',           # min: 1, max: 255; OPTIONAL
            },
            ...
          ],                                   # max: 20; OPTIONAL
          MergePolicy    => 'MyCaptionMergePolicy',    # OPTIONAL
          CaptionFormats => [
            {
              Format     => 'MyCaptionFormatFormat',    # OPTIONAL
              Encryption => {
                Key    => 'MyBase64EncodedString',      # OPTIONAL
                KeyMd5 => 'MyBase64EncodedString',      # OPTIONAL
                Mode   => 'MyEncryptionMode',           # OPTIONAL
                InitializationVector =>
                  'MyZeroTo255String',                  # max: 255; OPTIONAL
              },    # OPTIONAL
              Pattern => 'MyCaptionFormatPattern',    # OPTIONAL
            },
            ...
          ],                                          # max: 4; OPTIONAL
        },    # OPTIONAL
        Rotate => 'MyRotate',    # OPTIONAL
      },    # OPTIONAL
      OutputKeyPrefix => 'MyKey',    # OPTIONAL
      Outputs         => [
        {
          PresetId   => 'MyId',
          Encryption => {
            Key    => 'MyBase64EncodedString',    # OPTIONAL
            KeyMd5 => 'MyBase64EncodedString',    # OPTIONAL
            Mode   => 'MyEncryptionMode',         # OPTIONAL
            InitializationVector => 'MyZeroTo255String',    # max: 255; OPTIONAL
          },    # OPTIONAL
          Key         => 'MyKey',    # min: 1, max: 255; OPTIONAL
          Composition => [
            {
              TimeSpan => {
                StartTime => 'MyTime',    # OPTIONAL
                Duration  => 'MyTime',    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],        # OPTIONAL
          ThumbnailEncryption => {
            Key    => 'MyBase64EncodedString',    # OPTIONAL
            KeyMd5 => 'MyBase64EncodedString',    # OPTIONAL
            Mode   => 'MyEncryptionMode',         # OPTIONAL
            InitializationVector => 'MyZeroTo255String',    # max: 255; OPTIONAL
          },    # OPTIONAL
          AlbumArt => {
            Artwork => [
              {
                AlbumArtFormat => 'MyJpgOrPng',    # OPTIONAL
                Encryption     => {
                  Key    => 'MyBase64EncodedString',    # OPTIONAL
                  KeyMd5 => 'MyBase64EncodedString',    # OPTIONAL
                  Mode   => 'MyEncryptionMode',         # OPTIONAL
                  InitializationVector =>
                    'MyZeroTo255String',                # max: 255; OPTIONAL
                },    # OPTIONAL
                MaxWidth     => 'MyDigitsOrAuto',  # OPTIONAL
                InputKey     => 'MyWatermarkKey',  # min: 1, max: 1024; OPTIONAL
                MaxHeight    => 'MyDigitsOrAuto',  # OPTIONAL
                SizingPolicy => 'MySizingPolicy',  # OPTIONAL
                PaddingPolicy => 'MyPaddingPolicy',    # OPTIONAL
              },
              ...
            ],                                         # OPTIONAL
            MergePolicy => 'MyMergePolicy',            # OPTIONAL
          },    # OPTIONAL
          ThumbnailPattern => 'MyThumbnailPattern',    # OPTIONAL
          SegmentDuration  => 'MyFloatString',         # OPTIONAL
          Watermarks       => [
            {
              PresetWatermarkId =>
                'MyPresetWatermarkId',    # min: 1, max: 40; OPTIONAL
              Encryption => {
                Key    => 'MyBase64EncodedString',    # OPTIONAL
                KeyMd5 => 'MyBase64EncodedString',    # OPTIONAL
                Mode   => 'MyEncryptionMode',         # OPTIONAL
                InitializationVector =>
                  'MyZeroTo255String',                # max: 255; OPTIONAL
              },    # OPTIONAL
              InputKey => 'MyWatermarkKey',    # min: 1, max: 1024; OPTIONAL
            },
            ...
          ],                                   # OPTIONAL
          Captions => {
            CaptionSources => [
              {
                Encryption => {
                  Key    => 'MyBase64EncodedString',    # OPTIONAL
                  KeyMd5 => 'MyBase64EncodedString',    # OPTIONAL
                  Mode   => 'MyEncryptionMode',         # OPTIONAL
                  InitializationVector =>
                    'MyZeroTo255String',                # max: 255; OPTIONAL
                },    # OPTIONAL
                Key        => 'MyLongKey',       # min: 1, max: 1024; OPTIONAL
                TimeOffset => 'MyTimeOffset',    # OPTIONAL
                Label      => 'MyName',          # min: 1, max: 40; OPTIONAL
                Language   => 'MyKey',           # min: 1, max: 255; OPTIONAL
              },
              ...
            ],                                   # max: 20; OPTIONAL
            MergePolicy    => 'MyCaptionMergePolicy',    # OPTIONAL
            CaptionFormats => [
              {
                Format     => 'MyCaptionFormatFormat',    # OPTIONAL
                Encryption => {
                  Key    => 'MyBase64EncodedString',      # OPTIONAL
                  KeyMd5 => 'MyBase64EncodedString',      # OPTIONAL
                  Mode   => 'MyEncryptionMode',           # OPTIONAL
                  InitializationVector =>
                    'MyZeroTo255String',                  # max: 255; OPTIONAL
                },    # OPTIONAL
                Pattern => 'MyCaptionFormatPattern',    # OPTIONAL
              },
              ...
            ],                                          # max: 4; OPTIONAL
          },    # OPTIONAL
          Rotate => 'MyRotate',    # OPTIONAL
        },
        ...
      ],                           # OPTIONAL
      Playlists => [
        {
          Format     => 'MyPlaylistFormat',    # OPTIONAL
          OutputKeys => [
            'MyKey', ...                       # min: 1, max: 255; OPTIONAL
          ],                                   # max: 30; OPTIONAL
          PlayReadyDrm => {
            Format => 'MyPlayReadyDrmFormatString',       # OPTIONAL
            Key    => 'MyNonEmptyBase64EncodedString',    # OPTIONAL
            LicenseAcquisitionUrl =>
              'MyOneTo512String',    # min: 1, max: 512; OPTIONAL
            KeyMd5 => 'MyNonEmptyBase64EncodedString',    # OPTIONAL
            KeyId  => 'MyKeyIdGuid',                      # OPTIONAL
            InitializationVector => 'MyZeroTo255String',  # max: 255; OPTIONAL
          },    # OPTIONAL
          HlsContentProtection => {
            Key => 'MyBase64EncodedString',    # OPTIONAL
            LicenseAcquisitionUrl => 'MyZeroTo512String',   # max: 512; OPTIONAL
            Method           => 'MyHlsContentProtectionMethod',    # OPTIONAL
            KeyStoragePolicy => 'MyKeyStoragePolicy',              # OPTIONAL
            KeyMd5           => 'MyBase64EncodedString',           # OPTIONAL
            InitializationVector => 'MyZeroTo255String',    # max: 255; OPTIONAL
          },    # OPTIONAL
          Name => 'MyFilename',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],                           # OPTIONAL
      UserMetadata => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $Job = $CreateJobResponse->Job;

    # Returns a L<Paws::ElasticTranscoder::CreateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Input => L<Paws::ElasticTranscoder::JobInput>

A section of the request body that provides information about the file
that is being transcoded.



=head2 Inputs => ArrayRef[L<Paws::ElasticTranscoder::JobInput>]

A section of the request body that provides information about the files
that are being transcoded.



=head2 Output => L<Paws::ElasticTranscoder::CreateJobOutput>

A section of the request body that provides information about the
transcoded (target) file. We strongly recommend that you use the
C<Outputs> syntax instead of the C<Output> syntax.



=head2 OutputKeyPrefix => Str

The value, if any, that you want Elastic Transcoder to prepend to the
names of all files that this job creates, including output files,
thumbnails, and playlists.



=head2 Outputs => ArrayRef[L<Paws::ElasticTranscoder::CreateJobOutput>]

A section of the request body that provides information about the
transcoded (target) files. We recommend that you use the C<Outputs>
syntax instead of the C<Output> syntax.



=head2 B<REQUIRED> PipelineId => Str

The C<Id> of the pipeline that you want Elastic Transcoder to use for
transcoding. The pipeline determines several settings, including the
Amazon S3 bucket from which Elastic Transcoder gets the files to
transcode and the bucket into which Elastic Transcoder puts the
transcoded files.



=head2 Playlists => ArrayRef[L<Paws::ElasticTranscoder::CreateJobPlaylist>]

If you specify a preset in C<PresetId> for which the value of
C<Container> is fmp4 (Fragmented MP4) or ts (MPEG-TS), Playlists
contains information about the master playlists that you want Elastic
Transcoder to create.

The maximum number of master playlists in a job is 30.



=head2 UserMetadata => L<Paws::ElasticTranscoder::UserMetadata>

User-defined metadata that you want to associate with an Elastic
Transcoder job. You specify metadata in C<key/value> pairs, and you can
add up to 10 C<key/value> pairs per job. Elastic Transcoder does not
guarantee that C<key/value> pairs are returned in the same order in
which you specify them.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

