X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/18/3
Message-ID: <1318943004.5781.2.camel@mdlinux>
Date: Tue, 18 Oct 2011 09:03:24 -0400
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: coley@...us.mitre.org
Cc: oss-security@...ts.openwall.com, security@...ntu.com
Subject: CVE Request: pam
Content-Type: text/plain; charset=utf-8

Hello,

Could a CVE please be assigned to the following issue:

A Debian/Ubuntu specific patch in pam, update-motd, calls the scripts
in /etc/update-motd.d as root without sanitizing the environment.

See:

https://bugs.launchpad.net/ubuntu/+source/pam/+bug/610125

Thanks,

Marc.



