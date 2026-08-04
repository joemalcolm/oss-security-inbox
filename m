X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/35
Message-ID: <0da550d3-db9e-487d-8639-a3f4a4e7c95f@cpansec.org>
Date: Tue, 4 Aug 2026 21:52:00 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-66902: Google::Auth versions before 0.06 for Perl run a command named in an external_account credentials JSON via an ungated system call
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-66902                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-66902
   Distribution:  Google-Auth
       Versions:  before 0.06

       MetaCPAN:  https://metacpan.org/dist/Google-Auth
       VCS Repo: 
https://github.com/GoogleCloudPlatform/google-auth-library-perl


Google::Auth versions before 0.06 for Perl run a command named in an
external_account credentials JSON via an ungated system call

Description
-----------
Google::Auth versions before 0.06 for Perl run a command named in an
external_account credentials JSON via an ungated system call.

The Pluggable subclass reads credential_source.executable.command from
the credentials JSON and runs it as `system($command)`, a single
argument call that passes the whole string to /bin/sh -c. The
executable's environment_variables map from the same JSON is copied
into %ENV first. No opt-in gate guards the call. make_creds selects the
Pluggable subclass whenever credential_source.executable is present, so
the path is reached from the standard Application Default Credentials
flow, including a "type": "external_account" configuration read from
the file named by GOOGLE_APPLICATION_CREDENTIALS. Configurations
without credential_source.executable do not select this subclass and do
not reach the call.

Any caller that builds credentials from a configuration it does not
fully control runs the embedded command with the privileges of the
application process.

Problem types
-------------
- CWE-78 Improper Neutralization of Special Elements used in an OS
   Command ('OS Command Injection')
- CWE-829 Inclusion of Functionality from Untrusted Control Sphere

Workarounds
-----------
For deployments that cannot upgrade to 0.06, apply the upstream fix
commit, or ensure that every credentials configuration reaching the
Application Default Credentials flow comes from a trusted source.


Solutions
---------
Upgrade to Google-Auth 0.06 or later, which throws unless the
environment variable GOOGLE_EXTERNAL_ACCOUNT_ALLOW_EXECUTABLES is set
to 1.


References
----------
https://github.com/GoogleCloudPlatform/google-auth-library-perl/commit/c95c77e70bec94f17e239d88050f843ea1cade95.patch
https://metacpan.org/release/CJCOLLIER/Google-Auth-0.06/diff/CJCOLLIER/Google-Auth-0.05

Timeline
--------
- 2026-07-28: Version 0.06 released with fix, which is not noted in the
   changelog.



