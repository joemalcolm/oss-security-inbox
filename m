X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/01/31/3
Message-ID: <d6e0d9ec-8bc5-9034-b387-7e66f71fa0de@census-labs.com>
Date: Fri, 31 Jan 2020 23:17:29 +0200
From: Dimitrios Glynos <dimitris@...sus-labs.com>
To: oss-security@...ts.openwall.com
Subject: multiple NULL pointer dereference vulnerabilities in newlib
Content-Type: text/plain; charset=utf-8

Hello all,

newlib versions prior to 3.3.0 (and derivatives like newlib-nano,
picolibc, related ARM toolchains) are vulnerable to a number
of NULL pointer dereference vulnerabilities.

The following CVEs were assigned by RedHat for these issues:

CVE-2019-14871, CVE-2019-14872, CVE-2019-14873, CVE-2019-14874,
CVE-2019-14875, CVE-2019-14876, CVE-2019-14877, CVE-2019-14878

More details about the issues are available here:

https://census-labs.com/news/2020/01/31/multiple-null-pointer-dereference-vulnerabilities-in-newlib/

It is advised to update newlib installations to version 3.3.0
and make sure to build with the newlib-reent-check-verify
'configure' option enabled, to correctly address these
issues.

Kind Regards,

Dimitris
