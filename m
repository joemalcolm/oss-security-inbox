X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/09/8
Message-ID: <FC72FC641B949240B947AC6F1F83FBAF26FBCE88@IMCMBX01.MITRE.ORG>
Date: Fri, 9 Aug 2013 17:16:58 +0000
From: "Christey, Steven M." <coley@...re.org>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: RE: CVE request: nullmailer world readable /etc/nullmailer/remotes
Content-Type: text/plain; charset=utf-8

Agostino,

Out of curiosity, what types of sensitive information are contained in this file that cause world-readable permissions to pose a vulnerability?

- Steve


>-----Original Message-----
>From: Agostino Sarubbo [mailto:ago@...too.org]
>Sent: Friday, August 09, 2013 1:15 PM
>To: oss-security@...ts.openwall.com
>Subject: [oss-security] CVE request: nullmailer world readable
>/etc/nullmailer/remotes
>
>Hello,
>
>On Gentoo, the file /etc/nullmailer/remotes is installed with wrong
>permissions:
>
>~ # ls -la /etc/nullmailer/remotes
>-rw-r--r-- 1 root root 971 Aug  9 18:58 /etc/nullmailer/remotes
>
>Nullmailer-1.11-r2 contains the fix, all prior versions are affected.
>
>Please assign a CVE.
>--
>Agostino Sarubbo
>Gentoo Linux Developer
