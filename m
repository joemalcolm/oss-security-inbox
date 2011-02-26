X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/26/1
Message-ID: <AANLkTinmiFRonvoLxwdCdNqWbKhO4QzU4DVsWf_EBp-X@mail.gmail.com>
Date: Fri, 25 Feb 2011 21:17:30 -0500
From: Nelson Elhage <nelhage@...lice.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: v86d: Failure to validate netlink message sender
Content-Type: text/plain; charset=utf-8

Versions of the v86d userspace helper for the Linux uvesafb driver
before 0.1.10 did not verify that received netlink messages were sent
by the kernel, allowing unprivileged users to manipulate the video
mode and potentially other consequences.

v86d executes video BIOS code with access to /dev/mem in response to
netlink messages, using either vm86 mode or an x86 emulator, depending
on configuration. I an unclear on whether it is possible to e.g. crash
the machine or escalate privileges by spoofing requests, or only to
mess with the video card.

References:
http://repo.or.cz/w/v86d.git/commit/f9abfd412639286c3143e93e8ba2c9598dfba640
