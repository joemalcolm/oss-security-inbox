X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/01/17/1
Message-ID: <CAH8yC8n6X75L0dC_50wjc+Cq-Cubj568g=NXon19s_-Kxgz+2w@mail.gmail.com>
Date: Thu, 16 Jan 2020 23:21:52 -0500
From: Jeffrey Walton <noloader@...il.com>
To: oss-security@...ts.openwall.com
Subject: Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume
Content-Type: text/plain; charset=utf-8

This just made my radar. It appears some AMD cpus with RDRAND fail to
produce random numbers after a suspend/resume. It looks like it was
first reported in 2014 or so.

Kernel bug:

    * https://bugzilla.kernel.org/show_bug.cgi?id=85911

Systemd bug:

    * https://github.com/systemd/systemd/issues/11810

Fedora bug:

    * https://bugzilla.redhat.com/show_bug.cgi?id=1150286

AMD patch:

    * https://lore.kernel.org/patchwork/patch/1115413/

I agree with Lennart Poettering. This seems CVE worthy given RDRAND is
often used to get the kernel generator (and other userland generators)
in good working order.

(Thanks to https://www.phoronix.com/scan.php?page=news_item&px=AMD-CPUs-RdRand-Suspend
for the article and links).
