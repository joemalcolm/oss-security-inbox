X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/02/8
Message-ID: <CAHbpyFagAeVLCJW+E8RdgY3jb74fBwPiD7mC3oMrNFKz7A5uNg@mail.gmail.com>
Date: Wed, 2 Nov 2022 07:50:26 -0400
From: Daniel Klco <dklco@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-43670: Apache Sling App CMS: XSS in Sling CMS Reference App Taxonomy Path
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

An improper neutralization of input during web page generation
('Cross-site Scripting') [CWE-79] vulnerability in Sling App CMS
version 1.1.0 and prior may allow an authenticated remote attacker to
perform a reflected cross site scripting (XSS) attack in the taxonomy
management feature.

This issue is being tracked as SLING-11622

Mitigation:

Upgrade to Apache Sling App CMS >= 1.1.2

Credit:

Apache Sling would like to thank QSec-Team for reporting this issue
