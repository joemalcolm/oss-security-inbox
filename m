X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/18/1
Message-ID: <4DD310E5.5000004@redhat.com>
Date: Wed, 18 May 2011 08:20:53 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: net: ip_expire() must revalidate route
Content-Type: text/plain; charset=utf-8

aka Linux Kernel 2.6.38 Remote NULL Pointer Dereference

http://seclists.org/bugtraq/2011/May/123
http://packetstormsecurity.org/files/view/101475/linux2638-null.txt
http://marc.info/?l=linux-netdev&m=130558001727019&w=2

fix: http://git.kernel.org/linus/64f3b9e2

Thanks, Eugene
