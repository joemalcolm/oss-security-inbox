X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/17/5
Message-ID: <CAGjw+kNH6rAk=OZzCSSMBMrTD+YgEKNgr_A0uY44f2tBwts4vQ@mail.gmail.com>
Date: Thu, 16 Jul 2026 23:46:34 -0600
From: Masakazu Kitajo <maskit@...che.org>
To: announce@...fficserver.apache.org, Dev <dev@...fficserver.apache.org>,  users <users@...fficserver.apache.org>, security@...fficserver.apache.org
Cc: oss-security@...ts.openwall.com
Subject: CVE-2026-59173: Apache Traffic Server is vulnerable to stalled HTTP/2 flow-control
Content-Type: text/plain; charset=utf-8

Apache Traffic Server is vulnerable to stalled HTTP/2 flow-control.

CVE:
CVE-2026-59173 - DoS vulnerability in HTTP/2 via stalled flow-control
conditions

Severity:
important

Reported By:
Okta Red Team

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.13
ATS 10.0.0 to 10.1.2

Mitigation:
9.x users should upgrade to 9.2.14 or later versions
10.x users should upgrade to 10.1.3 or later versions

Reference:
https://www.cve.org/CVERecord?id=CVE-2026-59173

