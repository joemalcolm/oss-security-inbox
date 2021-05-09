X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/05/09/2
Message-ID: <2d1bd340-fac1-b16a-c046-494c2d58f369@enst-bretagne.fr>
Date: Sun, 9 May 2021 21:38:23 +0200
From: Gabriel Corona <gabriel.corona@...t-bretagne.fr>
To: oss-security@...ts.openwall.com
Subject: Code execution through Thunar
Content-Type: text/plain; charset=utf-8

When called with a regular file as command line argument, Thunar
would delegate to some other program without user confirmation
based on the file type. This could be exploited to trigger code
execution in a chain of vulnerabilities.

This is fixed in 4.16.7 and 4.17.2. When called with a regular
file, Thunar now opens the containing directory and selects the
file.

A CVE ID has been requested.

Reference:

https://gitlab.xfce.org/xfce/thunar/-/commit/9165a61f95e43cc0b5abf9b98eee2818a0191e0b

Note: the fix introduced a regression which is fixed in 4.16.8 and 4.17.3.

https://gitlab.xfce.org/xfce/thunar/-/commit/3b54d9d7dbd7fd16235e2141c43a7f18718f5664

Gabriel
