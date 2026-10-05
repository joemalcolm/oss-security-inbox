X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/7
Message-Id: <2368EA95-062D-454F-88D1-1A0CC4BF29B1@stig.io>
Date: Mon, 5 Oct 2026 08:51:56 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2019-25777: YAML versions before 1.27_001 for Perl allow a loaded perl/glob document to replace any package variable, which can lead to arbitrary code execution 
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2019-25777                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2019-25777

  Distribution:  YAML
      Versions:  before 1.27_001
      MetaCPAN:  https://metacpan.org/dist/YAML
      VCS Repo:  https://github.com/ingydotnet/yaml-pm


YAML versions before 1.27_001 for Perl allow a loaded perl/glob
document to replace any package variable, which can lead to arbitrary
code execution

Description
-----------
YAML versions before 1.27_001 for Perl allow a loaded perl/glob
document to replace any package variable, which can lead to arbitrary
code execution.

A perl/glob document names a package and a symbol, and supplies the
value assigned to it. Nothing restricts the name, so the target can be
@INC or YAML's own load options.

A perl/glob document that sets $YAML::LoadCode or $YAML::UseCode turns
on code loading, which is off by default, for every later Load() in the
process. A perl/code document is then passed to a string eval, so an
attacker who supplies two documents to separate Load() calls in one
process can execute arbitrary Perl code.

Problem types
-------------
- CWE-914 Improper Control of Dynamically-Identified Variables
- CWE-502 Deserialization of Untrusted Data

Workarounds
-----------
For deployments that cannot upgrade to YAML 1.28, set
$YAML::LoadBlessed = 0 before loading untrusted input. The option
exists from YAML 1.25 and gates glob loading too.

Solutions
---------
Upgrade to YAML 1.28 or later.

References
----------
https://github.com/ingydotnet/yaml-pm/issues/212
https://github.com/ingydotnet/yaml-pm/commit/bace96b5e6661d521c7c515c94a09e081c911fce.patch
https://metacpan.org/release/TINITA/YAML-1.28/changes

Timeline
--------
- 2019-04-27: Issue reported.
- 2019-04-27: Version 1.27_001 released with fix.
- 2019-04-28: Version 1.28 released with fix.
- 2022-06-27: Issue added as CPANSA-YAML-2019-01 in the CPAN::Audit
  database.
- 2026-09-21: CVE number reserved.


