X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/09/27/1
Message-ID: <1317132688.2799.27.camel@mdlinux>
Date: Tue, 27 Sep 2011 10:11:28 -0400
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: coley@...us.mitre.org
Cc: oss-security@...ts.openwall.com, security@...ntu.com
Subject: CVE Request: samba, cifs-utils
Content-Type: text/plain; charset=utf-8

Hello,

I don't think this ever got a CVE:

https://bugzilla.samba.org/show_bug.cgi?id=7179

http://git.samba.org/?p=cifs-utils.git;a=commitdiff;h=810f7e4e0f2dbcbee0294d9b371071cb08268200


When mount.cifs is setuid, unprivileged users can kill it, resulting in
a denial of service from a stale lock file.

Thanks,

Marc.


