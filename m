X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/8
Message-Id: <E48C9287-ECC2-46EC-BF9D-7BAD8BB75C20@stig.io>
Date: Mon, 5 Oct 2026 08:54:33 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2017-20285: YAML versions before 1.30 for Perl allow a loaded document to trigger the DESTROY method of arbitrary classes
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2017-20285                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2017-20285

  Distribution:  YAML
      Versions:  before 1.30
      MetaCPAN:  https://metacpan.org/dist/YAML
      VCS Repo:  https://github.com/ingydotnet/yaml-pm


YAML versions before 1.30 for Perl allow a loaded document to trigger
the DESTROY method of arbitrary classes

Description
-----------
YAML versions before 1.30 for Perl allow a loaded document to trigger
the DESTROY method of arbitrary classes.

A perl/hash:Class tag blesses a hash into the class it names. The
document supplies the object's fields, and Perl calls DESTROY when it
goes out of scope.

What DESTROY does depends on the classes the process has loaded. With
File::Temp::Dir from core Perl, it can delete a directory tree the
document names.

Problem types
-------------
- CWE-502 Deserialization of Untrusted Data
- CWE-470 Use of Externally-Controlled Input to Select Classes or Code
  ('Unsafe Reflection')

Workarounds
-----------
For deployments that cannot upgrade to YAML 1.30, set
$YAML::LoadBlessed = 0 before loading untrusted input. The option
exists from YAML 1.25.

Solutions
---------
Upgrade to YAML 1.30 or later.

References
----------
https://github.com/ingydotnet/yaml-pm/issues/176
https://github.com/ingydotnet/yaml-pm/commit/471314bbdcbd62077eea32755929122aa8bd00a3.patch
https://github.com/ingydotnet/yaml-pm/commit/7736f38bd02e4f9f77d5468721e3be3d7b34a8ec.patch
https://metacpan.org/release/TINITA/YAML-1.30/changes

Timeline
--------
- 2017-05-10: Issue reported.
- 2018-05-11: Version 1.25 released with the $YAML::LoadBlessed option.
- 2020-01-27: Version 1.30 released with the option defaulting to off.
- 2022-06-27: Issue added as CPANSA-YAML-2017-01 in the CPAN::Audit
  database.
- 2026-09-21: CVE number reserved.


