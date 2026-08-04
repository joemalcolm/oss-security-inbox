X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/34
Message-ID: <5ed082bf-eb2c-4725-8d34-4e16a6081717@cpansec.org>
Date: Tue, 4 Aug 2026 21:50:56 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-66901: Google::Auth versions before 0.09 for Perl allow server side request forgery and credential exfiltration via unvalidated URLs taken from the credentials JSON
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-66901                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-66901
   Distribution:  Google-Auth
       Versions:  before 0.09

       MetaCPAN:  https://metacpan.org/dist/Google-Auth
       VCS Repo: 
https://github.com/GoogleCloudPlatform/google-auth-library-perl


Google::Auth versions before 0.09 for Perl allow server side request
forgery and credential exfiltration via unvalidated URLs taken from the
credentials JSON

Description
-----------
Google::Auth versions before 0.09 for Perl allow server side request
forgery and credential exfiltration via unvalidated URLs taken from the
credentials JSON.

The URLs the library requests are read from the credentials JSON, and
their hosts were not checked against the universe domain before the
request. For an external_account configuration, retrieve_subject_token
fetched credential_source.url with headers from the same JSON, and
fetch_access_token posted the subject token to token_url, then sent the
STS access token it received to service_account_impersonation_url in an
Authorization: Bearer header. The authorized_user,
impersonated_service_account and service_account configurations posted
the client secret and refresh token, the source access token, and a
signed JWT assertion to their own JSON-supplied token_uri or
impersonation URL.

Any caller that builds credentials from a configuration it does not
fully control issues those requests from the application's network
position, reaching hosts the configuration names, including internal
services and link-local metadata endpoints, and hands them the
credentials each request carries. The service_account assertion is
bound to aud, so it is not replayable against Google.

Version 0.06 added a _validate_url host check to the external_account
class, keyed on a universe_domain read from the same credentials JSON.
Version 0.07 gated a JSON-supplied universe domain behind
GOOGLE_EXTERNAL_ACCOUNT_ALLOW_CUSTOM_UNIVERSES=1, deriving the pin flag
from arguments that an earlier BUILDARGS pass had already merged on the
make_creds path. Version 0.08 passed the pin decision through as an
explicit constructor argument and moved _validate_url to
Google::Auth::Credentials, adding the call to UserRefreshCredentials
and ImpersonatedServiceAccountCredentials, and 0.09 added it to
ServiceAccountCredentials.

Problem types
-------------
- CWE-918 Server-Side Request Forgery (SSRF)
- CWE-201 Insertion of Sensitive Information Into Sent Data

Workarounds
-----------
For deployments that cannot upgrade to 0.09, ensure that every
credentials configuration reaching the Application Default Credentials
flow comes from a trusted source.


Solutions
---------
Upgrade to Google-Auth 0.09 or later, which validates each URL host
against googleapis.com or a universe domain pinned by the application
before the request.


References
----------
https://github.com/GoogleCloudPlatform/google-auth-library-perl/commit/c95c77e70bec94f17e239d88050f843ea1cade95.patch
https://github.com/GoogleCloudPlatform/google-auth-library-perl/commit/cd42bdef53afcc4531161e85e91d0d5997e01324.patch
https://github.com/GoogleCloudPlatform/google-auth-library-perl/commit/9b5157062acc605ca9e6c507b910587f4829ce9e.patch
https://github.com/GoogleCloudPlatform/google-auth-library-perl/commit/cbbb07804e3f8cc7cf9638ecc9c2097d80a9ef50.patch
https://metacpan.org/release/CJCOLLIER/Google-Auth-0.09/changes

Timeline
--------
- 2026-07-28: Version 0.06 released with a partial fix.
- 2026-08-02: Version 0.08 released, extending the fix to two further
   credential classes.
- 2026-08-03: Version 0.09 released with the complete fix.



