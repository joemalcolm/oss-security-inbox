X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/09/2
Message-ID: <AANLkTimMxUh-yWhpp=tiEUvMtUw0b=MGTguo8YW-=RM7@mail.gmail.com>
Date: Wed, 9 Feb 2011 09:27:32 -0500
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: btrfs heap overflow
Content-Type: text/plain; charset=utf-8

Commit bf5fc093c5b625e4259203f1cee7ca73488a5620 refactored
btrfs_ioctl_space_info() and introduced security issues.  Since they
were all introduced at once and fixed at the same time, one CVE should
suffice.

Due to integer truncation or a signedness error in a typecasted
comparison, an integer overflow in an allocation size calculation, and
a failure to properly check bounds when copying data, it was possible
for an unprivileged user to cause a denial-of-service due to writing
to an invalid pointer (ZERO_SIZE_PTR) or cause a kernel heap overflow.

-Dan

[1] http://marc.info/?l=linux-kernel&m=129726078708425&w=2
