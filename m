X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/20/2
Message-ID: <CADk+mPAv8mG53ACP5mO7i0hNzSDyEF8YLtLYJUKW4Ae=xhpzHA@mail.gmail.com>
Date: Sun, 20 Sep 2026 17:17:40 +0200
From: Rainer Gerhards <rgerhards@...adiscon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog: mmpstrucdata denial of service fixed in 8.2606.0
Content-Type: text/plain; charset=utf-8

Hello,

We are publishing a GitHub Security Advisory for a denial-of-service
vulnerability in the rsyslog mmpstrucdata module:

https://github.com/rsyslog/rsyslog/security/advisories/GHSA-2whq-6rcm-64m8

Affected configurations use mmpstrucdata to parse RFC 5424 structured
data and accept messages large enough to carry an oversized parameter
value. The module is not enabled by default. In affected versions, a
crafted message could terminate rsyslogd.

The issue is fixed in rsyslog 8.2606.0. The fix removes the fixed-size
stack buffer, uses storage sized from the received structured data,
and adds structured-data size limiting.

Please upgrade to rsyslog 8.2606.0 or later. If you use a distribution
package, consult your distribution's security advisory or package
changelog for backported fixes.

No code execution has been demonstrated or is claimed.

The issue was reported by Georgii Shutiaev (@gart0s). A CVE request is
pending; GitHub will add the identifier to the advisory when it is
assigned.

Regards,
Rainer
