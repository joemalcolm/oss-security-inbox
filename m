X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/19/4
Message-ID: <1319034455.2700.9.camel@mdlinux>
Date: Wed, 19 Oct 2011 10:27:35 -0400
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: coley@...us.mitre.org
Cc: oss-security@...ts.openwall.com, security@...ntu.com,  team@...urity.debian.org
Subject: CVE Request: apt
Content-Type: text/plain; charset=utf-8

Hello,

Could a CVE please be assigned to the following issue:

Apt before 0.8.11 incorrectly handles the Verify-Host configuration
option, resulting in a successful connection instead of a verification
failure when the certificate host name doesn't match.

See:

http://bazaar.launchpad.net/~donkult/apt/sid/revision/2053.1.28
https://bugs.launchpad.net/ubuntu/+source/apt/+bug/868353


Thanks,

Marc.




