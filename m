X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/25/4
Message-ID: <2ECE9D9EEF1F524185270138AE23265947D4731D@S0MSMAIL112.arc.local>
Date: Tue, 25 Nov 2014 09:09:14 +0000
From: Fiedler Roman <Roman.Fiedler@....ac.at>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: "security@...ntu.com" <security@...ntu.com>, Seth Arnold <seth.arnold@...onical.com>
Subject: AW: parse_datetime() bug in coreutils
Content-Type: text/plain; charset=utf-8

> Von: Seth Arnold [mailto:seth.arnold@...onical.com]
> 
> Hello,
> 
> Fiedler Roman discovered that coreutils' parse_datetime() function
> has some flaws that may be exploitable if the date(1), touch(1),
> or potentially other programs, accept untrusted input for certain
> parameters.

As some people won't have a hard time to correlate this: the issue was
discovered fixing the php session cleanup code running with root privileges,
which, apart from the symlink issues, could to my opinion also allow to pass
a single but arbitrary parameters to touch, see [1]

> [Snip]

[1] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=766147

Download attachment "smime.p7s" of type "application/pkcs7-signature" (6344 bytes)
