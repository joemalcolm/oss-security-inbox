X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/02/20/2
Message-ID: <28fa9c5e0902192330q3a3fe623y6b6c4c68dd6603cf@mail.gmail.com>
Date: Fri, 20 Feb 2009 15:30:34 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: skfp_ioctl inverted logic flaw
Content-Type: text/plain; charset=utf-8

According to the upstream commit
c25b9abbc2c2c0da88e180c3933d6e773245815a "[PATCH] drivers/net/skfp: if
!capable(CAP_NET_ADMIN): inverted logic", there is an inverted logic
flaw in skfp_ioctl(). Non-privileged users should not be able to clear
the driver statistics.

http://lists.openwall.net/netdev/2009/01/28/90
https://bugzilla.redhat.com/show_bug.cgi?id=486534
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=c25b9abb

Thanks, Eugene
