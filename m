X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/18/7
Message-ID: <20150218141411.GB23489@eldamar.local>
Date: Wed, 18 Feb 2015 15:14:11 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: CVE Assignments MITRE <cve-assign@...re.org>
Subject: CVE Request: xdg-utils: xdg-open: command injection vulnerability
Content-Type: text/plain; charset=utf-8

Hi

Another command injection vulnerability was reported to the Debian
bugtracker. The constraints to exploit this are similar to the ones
for CVE-2014-9622.

Debian Bug: https://bugs.debian.org/777722
Upstream Bug: https://bugs.freedesktop.org/show_bug.cgi?id=89129

Jiri Horner created as well a patch for this issue, which is attached
to the original bug and attached also a PoC.

https://bugs.debian.org/cgi-bin/bugreport.cgi?msg=5;filename=xdg-open.diff;att=1;bug=777722

Could you please assign a CVE for this issue?

Regards,
Salvatore
