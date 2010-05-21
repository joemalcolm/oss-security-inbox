X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/05/21/4
Message-Id: <201005211239.48616.thomas@novell.com>
Date: Fri, 21 May 2010 12:39:48 +0200
From: Thomas Biege <thomas@...ell.com>
To: oss-security@...ts.openwall.com
Subject: clamav null pointer dereference
Content-Type: text/plain; charset=utf-8

Hi,
does someone, who knows moe about clamav than I do, know if the following has
security implications?

changelog: http://git.clamav.net/gitweb?p=clamav-
devel.git;a=blob_plain;f=ChangeLog;hb=master

Wed May 19 12:21:02 CEST 2010 (acab)
------------------------------------
 * libclamav/7z/Archive/7z/7zIn.c: fix possible(?) null dereference reported
                                by clang (bb#1909)


diff: http://git.clamav.net/gitweb?p=clamav-
devel.git;a=commitdiff;h=4531ba07e1ed5060ac8cb8ff748427ce0917bedd



Thanks,
Thomas

-- 
 Thomas Biege <thomas@...ell.com>, SUSE LINUX, Security Support & Auditing
 SUSE LINUX Products GmbH, GF: Markus Rex, HRB 16746 (AG Nuernberg)
