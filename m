X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/01/3
Message-ID: <e83f836b-af96-4256-af32-c28efe306dfb@cpansec.org>
Date: Sun, 1 Nov 2026 16:48:27 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: Google::Auth for Perl (2 CVEs)
Content-Type: text/plain; charset=utf-8

CVE-2026-74759
   Google::Auth versions 0.12 for Perl allow server side request forgery
   via unvalidated credential_source URLs in AWS external account
   credentials

CVE-2026-74760
   Google::Auth versions from 0.11 through 0.12 for Perl accept an
   authorization code from any local process because the gcloud-auth
   login callback does not check the OAuth state


========================================================================
CVE-2026-74759                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-74759

   Distribution:  Google-Auth
       Versions:  0.12
       MetaCPAN:  https://metacpan.org/dist/Google-Auth
       VCS Repo: 
https://github.com/GoogleCloudPlatform/google-auth-library-perl


Google::Auth versions 0.12 for Perl allow server side request forgery
via unvalidated credential_source URLs in AWS external account
credentials

Description
-----------
Google::Auth versions 0.12 for Perl allow server side request forgery
via unvalidated credential_source URLs in AWS external account
credentials.

An external_account configuration with the AWS subject token type
selects Google::Auth::ExternalAccountCredentials::Aws. Its
retrieve_subject_token sends requests to the imdsv2_session_token_url,
url and region_url fields of credential_source without the host check
that the other credential classes apply.

Any caller that builds credentials from a configuration it does not
fully control issues GET and PUT requests to hosts the configuration
names, including internal services and link-local metadata endpoints.

Problem types
-------------
- CWE-918 Server-Side Request Forgery (SSRF)

Workarounds
-----------
Ensure that every credentials configuration reaching the Application
Default Credentials flow comes from a trusted source.

Solutions
---------
Upgrade to a future Google-Auth release.

References
----------
https://metacpan.org/release/CJCOLLIER/Google-Auth-0.12/source/lib/Google/Auth/ExternalAccountCredentials/Aws.pm


========================================================================
CVE-2026-74760                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-74760

   Distribution:  Google-Auth
       Versions:  from 0.11 through 0.12
       MetaCPAN:  https://metacpan.org/dist/Google-Auth
       VCS Repo: 
https://github.com/GoogleCloudPlatform/google-auth-library-perl


Google::Auth versions from 0.11 through 0.12 for Perl accept an
authorization code from any local process because the gcloud-auth login
callback does not check the OAuth state

Description
-----------
Google::Auth versions from 0.11 through 0.12 for Perl accept an
authorization code from any local process because the gcloud-auth login
callback does not check the OAuth state.

The gcloud-auth login and application-default login commands send a
state parameter with the authorization request, then take the code from
the first request to reach their loopback listener without comparing
the returned state.

A local attacker can submit an authorization code for their own Google
account. The CLI exchanges it and stores the refresh token as the
user's credentials, so the user's tools then act as the attacker's
account.

Problem types
-------------
- CWE-346 Origin Validation Error

Workarounds
-----------
Run gcloud-auth login and gcloud-auth application-default login with
--no-browser, which uses the out-of-band flow without a loopback
listener.

Solutions
---------
Upgrade to a future Google-Auth release.

References
----------
https://metacpan.org/release/CJCOLLIER/Google-Auth-0.12/source/bin/gcloud-auth.pl



