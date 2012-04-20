X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/20/5
Message-ID: <4F90EB75.2060502@redhat.com>
Date: Fri, 20 Apr 2012 12:52:05 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: fcaps: clear the same personality flags as suid when fcaps are used
Content-Type: text/plain; charset=utf-8

Reported by Steve Grubb, if a process increases permissions using fcaps
all of the dangerous personality flags which are cleared for suid apps
should also be cleared. Thus programs given priviledge with fcaps will
continue to have address space randomization enabled even if the parent
tried to disable it to make it easier to attack.

Upstream commit:
http://git.kernel.org/linus/d52fc5dde171f030170a6cb78034d166b13c9445

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=806722

Thanks, Eugene
