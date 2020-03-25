X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/03/25/1
Message-ID: <CAHbpyFYWV3mM9GHwpmKhVB-aMhXKa2w4HBRwSER6sqGHuYP2ag@mail.gmail.com>
Date: Tue, 24 Mar 2020 23:21:38 -0400
From: Daniel Klco <dklco@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-1949: Apache Sling CMS Reflected XSS Vulnerability
Content-Type: text/plain; charset=utf-8

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Sling CMS 0.14.0 and previous releases

Description:
Scripts in Sling CMS do not property escape the Sling Selector from URLs
when generating navigational elements for the administrative consoles and
are vulnerable to reflected XSS attacks.

Mitigation:
All users should upgrade to 0.16.0

Credit:
This issue was discovered by Guillaume GRABÉ Pentester from Orange
Cyberdefense France

References:
https://sling.apache.org/project-information/security.html

