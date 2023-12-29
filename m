X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/29/3
Message-ID: <658ed932.4d58967e.bm000@oddnet.de>
Date: Fri, 29 Dec 2023 15:34:07 +0100
From: Ingo Brückl <ib@...net.de>
To: oss-security@...ts.openwall.com
Cc: Markus Koschany <apo@...ian.org>
Subject: xarchiver: Path traversal with crafted cpio archives
Content-Type: text/plain; charset=utf-8

With

https://github.com/ib/xarchiver/commit/85dcd9058a528181c786da1899b68110301d1aa1

xarchiver rejects all unmodified cpio versions affected by path traversal
vulnerability.

It is recommended that all users upgrade to xarchiver 0.5.4.22.

Ingo
