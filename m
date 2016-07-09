X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/09/1
Message-ID: <57809C8C.6070902@canonical.com>
Date: Fri, 8 Jul 2016 23:41:16 -0700
From: John Johansen <john.johansen@...onical.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: apparmor: oops in apparmor_setprocattr()
Content-Type: text/plain; charset=utf-8

There is a potential privilege escalation in apparmor's setprocattr() interface.

https://lkml.org/lkml/2016/7/7/906

introduced by: 30a46a4647fd1df9cf52e43bf467f0d9265096ca
fixed by: 30a46a4647fd1df9cf52e43bf467f0d9265096ca

Could you assign a CVE for this issue?

thanks
John



Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
