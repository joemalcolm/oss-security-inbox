X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/01/22/3
Message-ID: <osro0op-5878-q9n9-55r2-9021propo6n3@redhat.com>
Date: Fri, 22 Jan 2021 16:52:19 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: Re: CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest
Content-Type: text/plain; charset=utf-8

+-- On Fri, 22 Jan 2021, Daniel Walsh wrote --+
| Did SELinux block this flaw?

* Not sure if there's a SELinux policy to block it. Didn't have a reproducer 
  handy.

| Seems virtiofsd should be running without CAP_MKNOD by default.

* Yes, there's an issue for nodev
    -> https://gitlab.com/virtio-fs/qemu/-/issues/24

  virtiofsd(1) also supports '-o modcaps=-mknod' option, it's not default 
  though.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

