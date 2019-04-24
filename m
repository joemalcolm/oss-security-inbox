X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/04/24/3
Message-ID: <20190424161241.GB13360@iolanthe>
Date: Wed, 24 Apr 2019 11:12:42 -0500
From: Jamie Strandboge <jamie@...onical.com>
To: OSS Security List <oss-security@...ts.openwall.com>
Cc: security@...ntu.com, mheon@...hat.com, paul@...l-moore.com
Subject: CVE Request: golang-seccomp incorrectly handles multiple syscall arguments
Content-Type: text/plain; charset=utf-8

Hi,

https://github.com/seccomp/libseccomp-golang/issues/22 describes a bug where
golang-seccomp incorrectly generates BPFs which OR multiple arguments rather
than ANDing them. This bug was fixed here:

https://github.com/seccomp/libseccomp-golang/commit/06e7a29f36a34b8cf419aeb87b979ee508e58f9e

which is currently only in master and not the most current 0.9.0 release. Since
golang-seccomp is meant to be a golang package to facilitate reducing the
syscall surface for applications and this bug produces incorrect BPF to achieve
that when specifying more that 2 syscall arguments, this probably deserves a
CVE assignment so distributions will see the issue and incorporate the fix into
their stable releases. I've included upstream developers Matthew and Paul in CC
for comment.

Thanks

-- 
Jamie Strandboge             | http://www.canonical.com

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
