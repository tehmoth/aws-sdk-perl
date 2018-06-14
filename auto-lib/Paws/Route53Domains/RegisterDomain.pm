
package Paws::Route53Domains::RegisterDomain;
  use Moose;
  has AdminContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has AutoRenew => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has DurationInYears => (is => 'ro', isa => 'Int', required => 1);
  has IdnLangCode => (is => 'ro', isa => 'Str');
  has PrivacyProtectAdminContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectRegistrantContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectTechContact => (is => 'ro', isa => 'Bool');
  has RegistrantContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);
  has TechContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::RegisterDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::RegisterDomain - Arguments for method RegisterDomain on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterDomain on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method RegisterDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterDomain.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $RegisterDomainResponse = $route53domains->RegisterDomain(
      AdminContact => {
        FirstName    => 'MyContactName',    # max: 255; OPTIONAL
        AddressLine1 => 'MyAddressLine',    # max: 255; OPTIONAL
        ExtraParams  => [
          {
            Value => 'MyExtraParamValue',    # max: 2048
            Name  => 'DUNS_NUMBER'
            , # values: DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER

          },
          ...
        ],    # OPTIONAL
        ZipCode          => 'MyZipCode',          # max: 255; OPTIONAL
        Email            => 'MyEmail',            # max: 254; OPTIONAL
        PhoneNumber      => 'MyContactNumber',    # max: 30; OPTIONAL
        OrganizationName => 'MyContactName',      # max: 255; OPTIONAL
        AddressLine2     => 'MyAddressLine',      # max: 255; OPTIONAL
        City             => 'MyCity',             # max: 255; OPTIONAL
        State            => 'MyState',            # max: 255; OPTIONAL
        LastName         => 'MyContactName',      # max: 255; OPTIONAL
        ContactType      => 'PERSON'
        , # values: PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER; OPTIONAL
        CountryCode => 'AD'
        , # values: AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW; OPTIONAL
        Fax => 'MyContactNumber',    # max: 30; OPTIONAL
      },
      DomainName        => 'MyDomainName',
      DurationInYears   => 1,
      RegistrantContact => {
        FirstName    => 'MyContactName',    # max: 255; OPTIONAL
        AddressLine1 => 'MyAddressLine',    # max: 255; OPTIONAL
        ExtraParams  => [
          {
            Value => 'MyExtraParamValue',    # max: 2048
            Name  => 'DUNS_NUMBER'
            , # values: DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER

          },
          ...
        ],    # OPTIONAL
        ZipCode          => 'MyZipCode',          # max: 255; OPTIONAL
        Email            => 'MyEmail',            # max: 254; OPTIONAL
        PhoneNumber      => 'MyContactNumber',    # max: 30; OPTIONAL
        OrganizationName => 'MyContactName',      # max: 255; OPTIONAL
        AddressLine2     => 'MyAddressLine',      # max: 255; OPTIONAL
        City             => 'MyCity',             # max: 255; OPTIONAL
        State            => 'MyState',            # max: 255; OPTIONAL
        LastName         => 'MyContactName',      # max: 255; OPTIONAL
        ContactType      => 'PERSON'
        , # values: PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER; OPTIONAL
        CountryCode => 'AD'
        , # values: AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW; OPTIONAL
        Fax => 'MyContactNumber',    # max: 30; OPTIONAL
      },
      TechContact => {
        FirstName    => 'MyContactName',    # max: 255; OPTIONAL
        AddressLine1 => 'MyAddressLine',    # max: 255; OPTIONAL
        ExtraParams  => [
          {
            Value => 'MyExtraParamValue',    # max: 2048
            Name  => 'DUNS_NUMBER'
            , # values: DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER

          },
          ...
        ],    # OPTIONAL
        ZipCode          => 'MyZipCode',          # max: 255; OPTIONAL
        Email            => 'MyEmail',            # max: 254; OPTIONAL
        PhoneNumber      => 'MyContactNumber',    # max: 30; OPTIONAL
        OrganizationName => 'MyContactName',      # max: 255; OPTIONAL
        AddressLine2     => 'MyAddressLine',      # max: 255; OPTIONAL
        City             => 'MyCity',             # max: 255; OPTIONAL
        State            => 'MyState',            # max: 255; OPTIONAL
        LastName         => 'MyContactName',      # max: 255; OPTIONAL
        ContactType      => 'PERSON'
        , # values: PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER; OPTIONAL
        CountryCode => 'AD'
        , # values: AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW; OPTIONAL
        Fax => 'MyContactNumber',    # max: 30; OPTIONAL
      },
      AutoRenew                       => 1,               # OPTIONAL
      IdnLangCode                     => 'MyLangCode',    # OPTIONAL
      PrivacyProtectAdminContact      => 1,               # OPTIONAL
      PrivacyProtectRegistrantContact => 1,               # OPTIONAL
      PrivacyProtectTechContact       => 1,               # OPTIONAL
    );

    # Results:
    my $OperationId = $RegisterDomainResponse->OperationId;

    # Returns a L<Paws::Route53Domains::RegisterDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/RegisterDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.



=head2 AutoRenew => Bool

Indicates whether the domain will be automatically renewed (C<true>) or
not (C<false>). Autorenewal only takes effect after the account is
charged.

Default: C<true>



=head2 B<REQUIRED> DomainName => Str

The domain name that you want to register.

Constraints: The domain name can contain only the letters a through z,
the numbers 0 through 9, and hyphen (-). Internationalized Domain Names
are not supported.



=head2 B<REQUIRED> DurationInYears => Int

The number of years that you want to register the domain for. Domains
are registered for a minimum of one year. The maximum period depends on
the top-level domain. For the range of valid values for your domain,
see Domains that You Can Register with Amazon Route 53
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html)
in the I<Amazon Route 53 Developer Guide>.

Default: 1



=head2 IdnLangCode => Str

Reserved for future use.



=head2 PrivacyProtectAdminContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar (for .com, .net, and .org
domains) or for our registrar associate, Gandi (for all other TLDs). If
you specify C<false>, WHOIS queries return the information that you
entered for the admin contact.

Default: C<true>



=head2 PrivacyProtectRegistrantContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar (for .com, .net, and .org
domains) or for our registrar associate, Gandi (for all other TLDs). If
you specify C<false>, WHOIS queries return the information that you
entered for the registrant contact (the domain owner).

Default: C<true>



=head2 PrivacyProtectTechContact => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries return contact
information either for Amazon Registrar (for .com, .net, and .org
domains) or for our registrar associate, Gandi (for all other TLDs). If
you specify C<false>, WHOIS queries return the information that you
entered for the technical contact.

Default: C<true>



=head2 B<REQUIRED> RegistrantContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.



=head2 B<REQUIRED> TechContact => L<Paws::Route53Domains::ContactDetail>

Provides detailed contact information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterDomain in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

