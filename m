X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/09/04/2
Message-ID: <f97cfa42-1bb0-edd0-f254-ab0545be3b6a@canonical.com>
Date: Tue, 4 Sep 2018 11:47:06 -0500
From: Tyler Hicks <tyhicks@...onical.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2018-6554 and CVE-2018-6555: Linux kernel: irda memory leak and use after free
Content-Type: text/plain; charset=utf-8

Two issues were discovered in the irda subsystem within the Linux
kernel.

The irda subsystem has been removed from the upstream kernel starting in
v4.17 but it is present in many distro kernels and the stable kernel tree.

Memory leak in the irda_bind function in net/irda/af_irda.c and later
in drivers/staging/irda/net/af_irda.c in the Linux kernel before 4.17
allows local users to cause a denial of service (memory consumption) by
repeatedly binding an AF_IRDA socket. (CVE-2018-6554)

The irda_setsockopt function in net/irda/af_irda.c and later in
drivers/staging/irda/net/af_irda.c in the Linux kernel before 4.17
allows local users to cause a denial of service (ias_object
use-after-free and system crash) or possibly have unspecified other
impact via an AF_IRDA socket. (CVE-2018-6555)

I've sent the fixes to the stable kernel list but I don't yet see my
submissions in the list archive on Spinics. Here are the equivalent
versions of the patches against the Ubuntu kernel:

https://lists.ubuntu.com/archives/kernel-team/2018-September/095134.html
(>= 4.14)

https://lists.ubuntu.com/archives/kernel-team/2018-September/095137.html
(< 4.14)

Tyler




Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
