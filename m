X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/04/27/6
Message-ID: <20100427184122.7c1ba2cd@foo.fgeek.fi>
Date: Tue, 27 Apr 2010 18:41:22 +0300
From: Henri Salo <henri@...v.fi>
To: cert@...t.org, "Steven M. Christey" <coley@...us.mitre.org>
Cc: soc@...cert.gov, oss-security@...ts.openwall.com, cert@...ora.fi, websecurity@...appsec.org, owasp-helsinki@...ts.owasp.org
Subject: wafp insecure temporary directory
Content-Type: text/plain; charset=utf-8

Wafp creates a temporary directory to predictable path and name. This
allows a local attacker to create a denial of service condition and
discloses sensitive information to unprivileged users. This also reduces
usability of this software, because one can't run more than one wafp-
instances at the same time. This issue can also be leveraged to delete
arbitrary files or directories via a symlink attack.

I notified the project:
http://code.google.com/p/webapplicationfingerprinter/issues/detail?id=8

Can I get CVE-identifier for this issue?

---
Henri Salo
