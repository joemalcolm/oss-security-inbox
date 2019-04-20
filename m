X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/04/20/1
Message-ID: <8d924921-8e31-838a-4957-970b176e42c5@apache.org>
Date: Sat, 20 Apr 2019 11:30:39 -0500
From: Daniel Gruno <humbedooh@...che.org>
To: dev@...ymail.incubator.apache.org, users@...ymail.incubator.apache.org, oss-security@...ts.openwall.com
Subject: [CVE-2019-0218] Apache Pony Mail (incubating) Reflected XSS
Content-Type: text/plain; charset=utf-8

CVE-2019-0218: Apache Pony Mail (incubating) Reflected XSS

Severity: Moderate

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Pony Mail (incubating) versions 0.8 through 0.10

Description:
A vulnerability was discovered wherein a specially crafted URL could
enable reflected XSS via JavaScript in the pony mail interface.

Mitigation:
All users should upgrade to Pony Mail (incubating) v/0.11

Credit:
- This issue was initially discovered by ﻿Francesco Soncina - ABN AMRO
   Red Team.

References:
http://ponymail.incubator.apache.org/support.html
https://s.apache.org/pony11


