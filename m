X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/03/15/3
Message-ID: <f89f6551-b72e-5a20-6013-8adf5acd752a@apache.org>
Date: Thu, 15 Mar 2018 14:52:52 -0400
From: Dave Brondsema <brondsem@...che.org>
To: dev@...ura.apache.org, users@...ura.apache.org, announce@...che.org, oss-security@...ts.openwall.com, Apache Security Team <security@...che.org>
Subject: [SECURITY] CVE-2018-1319 Apache Allura HTTP response splitting
Content-Type: text/plain; charset=utf-8

CVE-2018-1319 Apache Allura HTTP response splitting

Severity: Important
Versions Affected: All

Description:
Attackers may craft URLs that cause HTTP response splitting.  If a victim goes
to a maliciously crafted URL, unwanted results may occur including XSS or
service denial for the victim's browsing session.

Mitigation:
Users of Allura should upgrade to Allura 1.8.1 immediately.

Credit:
This issue was discovered by Everardo Padilla Saca
