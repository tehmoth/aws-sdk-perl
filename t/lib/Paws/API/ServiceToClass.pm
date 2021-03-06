package Paws::API::ServiceToClass;
  use strict;
  use warnings;

  our $services_to_classes = {
    acm => 'ACM',
   'acm-pca', 'ACMPCA',
    alexaforbusiness => 'AlexaForBusiness',
    amplify => 'Amplify',
    athena => 'Athena',
    apigateway => 'ApiGateway',
    apigatewayv2 => 'ApiGatewayV2',
    apigatewaymanagementapi => 'ApiGatewayManagement',
    appmesh => 'AppMesh',
    appsync => 'AppSync',
    autoscaling => 'AutoScaling',
   'autoscaling-plans' => 'AutoScalingPlans',
   'application-autoscaling' => 'ApplicationAutoScaling',
    appstream => 'AppStream',
    backup => 'Backup',
    batch => 'Batch',
    budgets => 'Budgets',
    ce => 'CostExplorer',
    chime => 'Chime',
    cloud9 => 'Cloud9',
    clouddirectory => 'CloudDirectory',
    cloudformation => 'CloudFormation',
    cloudfront => 'CloudFront',
    cloudhsm => 'CloudHSM',
    cloudhsmv2 => 'CloudHSMv2',
    cloudsearch => 'CloudSearch',
    cloudsearchdomain => 'CloudSearchDomain',
    cloudtrail => 'CloudTrail',
    cloudwatch => 'CloudWatch',
    codebuild => 'CodeBuild',
    codecommit => 'CodeCommit',
    codedeploy => 'CodeDeploy',
    codepipeline => 'CodePipeline',
    codestar => 'CodeStar',
   'cognito-identity' => 'CognitoIdentity',
   'cognito-idp' => 'CognitoIdp',
   'cognito-sync' => 'CognitoSync',
    comprehend => 'Comprehend',
    comprehendmedical => 'ComprehendMedical',
    config => 'Config',
    connect => 'Connect',
    cur => 'CUR',
    datapipeline => 'DataPipeline',
    datasync => 'Datasync',
    dax => 'DAX',
    devicefarm => 'DeviceFarm',
    discovery => 'Discovery',
    directconnect => 'DirectConnect',
    dlm => 'DLM',
    dms => 'DMS',
    docdb => 'DocDB',
    ds => 'DS',
    dynamodb => 'DynamoDB',
    dynamodbstreams => 'DynamoDBStreams',
    ec2 => 'EC2',
    ecr => 'ECR',
    eks => 'EKS',
    # The API definitions use "efs"
    efs => 'EFS',
    # The service code is "elasticfilesystem"
    elasticfilesystem => 'EFS',
    elasticache => 'ElastiCache',
    elasticbeanstalk => 'ElasticBeanstalk',
    elastictranscoder => 'ElasticTranscoder',
    elb => 'ELB',
    elbv2 => 'ELBv2',
    elasticloadbalancing => 'ELB',
    ecs => 'ECS',
    elasticmapreduce => 'EMR',
    emr => 'EMR',
    es => 'ES',
    email => 'SES',
    events => 'CloudWatchEvents',
    firehose => 'Firehose',
    fms => 'FMS',
    fsx => 'FSX',
    gamelift => 'GameLift',
    glacier => 'Glacier',
    globalaccelerator => 'GlobalAccelerator',
    glue => 'Glue',
    greengrass => 'Greengrass',
    guardduty => 'GuardDuty',
    health => 'Health',
    iam => 'IAM',
    iot => 'IoT',
    iotanalytics => 'IoTAnalytics',
   'iot-jobs-data' => 'IoTJobsData',
   'iot-data' => 'IoTData',
   'iot1click-devices' => 'IoT1ClickDevices',
   'iot1click-projects' => 'IoT1ClickProjects',
    inspector => 'Inspector',
    importexport => 'ImportExport',
    kafka => 'Kafka',
    kinesis => 'Kinesis',
    kinesisanalytics => 'KinesisAnalytics',
    kinesisanalyticsv2 => 'KinesisAnalyticsV2',
    kinesisvideo => 'KinesisVideo',
   'kinesis-video-archived-media' => 'KinesisVideoArchivedMedia',
   'kinesis-video-media' => 'KinesisVideoMedia',
    kms => 'KMS',
    lambda => 'Lambda',
   'lex-models' => 'LexModels',
   'lex-runtime' => 'LexRuntime',
   'license-manager' => 'LicenseManager',
    lightsail => 'Lightsail',
    logs => 'CloudWatchLogs',
    machinelearning => 'MachineLearning',
    macie => 'Macie',
    marketplacecommerceanalytics => 'MarketplaceCommerceAnalytics',
   'marketplace-entitlement' => 'MarketplaceEntitlement',
    mediaconnect => 'MediaConnect',
    mediaconvert => 'MediaConvert',
    medialive => 'MediaLive',
    mediapackage => 'MediaPackage',
    mediastore => 'MediaStore',
   'mediastore-data' => 'MediaStoreData',
    mediatailor => 'MediaTailor',
    meteringmarketplace => 'MarketplaceMetering',
    mgh => 'MigrationHub',
    mq => 'MQ',
    mobile => 'MobileHub',
    monitoring => 'CloudWatch',
    mturk => 'MTurk',
    neptune => 'Neptune',
    opsworks => 'OpsWorks',
    opsworkscm => 'OpsWorksCM',
    organizations => 'Organizations',
    pi => 'PerformanceInsights',
    pinpoint => 'Pinpoint',
   'pinpoint-email' => 'PinpointEmail',
   'pinpoint-sms-voice' => 'PinpointSMSVoice',
    pricing => 'Pricing',
    polly => 'Polly',
    pricing => 'Pricing',
    quicksight => 'Quicksight',
    ram => 'RAM',
    rds => 'RDS',
   'rds-data' => 'RDSData',
    rekognition => 'Rekognition',
    redshift => 'RedShift',
   'resource-groups' => 'ResourceGroups',
    resourcegroupstaggingapi => 'ResourceTagging',
    robomaker => 'Robomaker',
    route53 => 'Route53',
    route53domains => 'Route53Domains',
    route53resolver => 'Route53Resolver',
    s3 => 'S3',
    s3control => 'S3Control',
    sagemaker => 'SageMaker',
   'sagemaker-runtime' => 'SageMakerRuntime',
    secretsmanager => 'SecretsManager',
    securityhub => 'SecurityHub',
    ses => 'SES',
    servicecatalog => 'ServiceCatalog',
    serverlessrepo => 'ServerlessRepo',
    servicediscovery => 'ServiceDiscovery',
    shield => 'Shield',
    signin => 'Signin',
    signer => 'Signer',
    simpledb => 'SimpleDB',
    sms => 'SMS',
    swf => 'SimpleWorkflow',
    ssm => 'SSM',
    stepfunctions => 'StepFunctions',
   'sms-voice' => 'PinpointSMSVoice',
    snowball => 'Snowball',
    sns => 'SNS',
    sqs => 'SQS',
    storagegateway => 'StorageGateway',
    sts => 'STS',
    support => 'Support',
    sdb => 'SDB',
    transcribe => 'Transcribe',
    transfer => 'Transfer',
    translate => 'Translate',
    waf => 'WAF',
   'waf-regional' => 'WAFRegional',
    workdocs => 'WorkDocs',
    worklink => 'WorkLink',
    workmail => 'WorkMail',
    workspaces => 'WorkSpaces',
    xray => 'XRay',
  };
  
  sub service_to_class {
    my $service = shift;
    my $class = $services_to_classes->{ $service };
    die "No class for $service" if (not defined $class);
    return $class;
  }

  sub services {
    keys %$services_to_classes;
  }

  sub classes {
    grep { defined $_ } values %$services_to_classes;
  }
1;
