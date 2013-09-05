X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/09/05/8
Message-ID: <CAA7hUgGF7wN69VuUR900_29QHMdRPvbpwwZxhSvudcPOk1R1aA@mail.gmail.com>
Date: Thu, 5 Sep 2013 10:38:14 +0200
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Subject: [notification] exactimage DoS, jumping into the unknown
Content-Type: text/plain; charset=utf-8

Hi,

While testing the update of exactimage for the fixes in its embedded
copy of dcraw (CVE-2013-1438) I noticed that it did not initialize
(setjmp) the jump pointer used by dcraw for error handling.
In addition to the new checks introduced to fix the above-mentioned
issue, there were already some cases where longjmp was called, causing
the execution to jump to a location defined by an uninitialized
variable.

This new issue has been assigned CVE-2013-1441.

Note that this is specific to exactimage and is not a bug, per-se, in dcraw.

According to the Debian maintainer this bug has probably been present
since ExactImage 0.0.12

This has been fixed in Debian with the patch added in the following commit:
http://anonscm.debian.org/gitweb/?p=collab-maint/exactimage.git;a=commitdiff;h=1dff2eb586a3d10d8528a984bc471292e3789f5c;hp=acfe54193b18b46e880f4b474d2e40b4fdb44a8d

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
