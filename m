X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/3
Message-Id: <5F1F040A-77D9-45A8-B973-01F169D456DE@stig.io>
Date: Thu, 29 Oct 2026 22:39:10 +0100
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-115943: Spreadsheet::XLSX versions before 0.19 for Perl allow code execution via string eval of number format conditions in ExcelFmt
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-115943                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-115943

  Distribution:  Spreadsheet-XLSX
      Versions:  before 0.19
      MetaCPAN:  https://metacpan.org/dist/Spreadsheet-XLSX
      VCS Repo:  https://github.com/asb-capfan/Spreadsheet-XLSX


Spreadsheet::XLSX versions before 0.19 for Perl allow code execution
via string eval of number format conditions in ExcelFmt

Description
-----------
Spreadsheet::XLSX versions before 0.19 for Perl allow code execution
via string eval of number format conditions in ExcelFmt.

When a number format has a condition such as [>100], ExcelFmt chooses
the format section by passing the condition and the cell value to a
string eval. Both come from the workbook, and the eval runs while
Spreadsheet::XLSX->new parses it.

An attacker who supplies an XLSX file can run arbitrary Perl code.

Problem types
-------------
- CWE-95 Improper Neutralization of Directives in Dynamically Evaluated
  Code ('Eval Injection')

Solutions
---------
Upgrade to Spreadsheet-XLSX 0.19 or later.

References
----------
https://metacpan.org/release/ASB/Spreadsheet-XLSX-0.19/changes

Credits
-------
Allen Jeanine, reporter


