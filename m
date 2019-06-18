X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/06/18/2
Message-ID: <2c6d449c-583b-f9c3-d35f-7477baf70cd6@brondsema.net>
Date: Tue, 18 Jun 2019 10:56:50 -0400
From: Dave Brondsema <dave@...ndsema.net>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-10085] Apache Allura XSS vulnerability
Content-Type: text/plain; charset=utf-8

CVE-2019-10085 Apache Allura XSS vulnerability in ticket user dropdown selector

Severity: Important
Versions Affected: 1.10.0 and earlier

Description:
A vulnerability exists for stored XSS on the user dropdown selector when
creating or editing tickets.  The XSS executes when a user engages with that
dropdown on that page.

Mitigation:
Users of Allura should upgrade to Allura 1.11.0 immediately.

Credit:
This issue was discovered by Bob "Wombat" Hogg
