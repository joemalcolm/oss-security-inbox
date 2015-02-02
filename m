X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/02/1
Message-ID: <CAE7jHC9A3zKWAvv5__j0WS1DTxLhX0CZui4pXqW7Jx6cHA4GLw@mail.gmail.com>
Date: Mon, 2 Feb 2015 16:52:18 +0200
From: Constantine Shulyupin <const@...elinux.com>
To: oss-security@...ts.openwall.com
Subject: workaround for GHOST glibc vulnerability CVE-2015-0235
Content-Type: text/plain; charset=utf-8

CVE-2015-0235-workaround is a shared library wrapper with additional checks
for the vulnerable functions gethostbyname2_r and gethostbyname_r .

The proper solution for CVE-2015-0235 is to upgrade glibc to at least
glibc-2.18.

In some cases, an immediate glibc upgrade is not possible, for example in
custom production embedded systems, because such an upgrade requires a
validation of the whole system.

In such cases, this workaround provides a hot fix solution, which is easier
to validate.

Source code: https://github.com/makelinux/CVE-2015-0235-workaround


-- 
Constantine Shulyupin
http://www.MakeLinux.com/
Embedded Linux Systems
and Device Drivers

