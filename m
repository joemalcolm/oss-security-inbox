X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/12/6
Message-ID: <AANLkTikiFgeQgr18P6Iwavf9kYBSfJky0I_GJ-cOKhBX@mail.gmail.com>
Date: Mon, 12 Jul 2010 14:33:31 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com, coley <coley@...re.org>
Cc: security-alert@...bsd.org, secteam@...ebsd.org, product-security@...le.com
Subject: CVE request: NetSMB BSD kernel module (minor)
Content-Type: text/plain; charset=utf-8

I discovered and reported a minor security issue in the netsmb kernel
module for NetBSD and FreeBSD.  The issue also affects Mac OS X 10.x,
where netsmb is available as a kernel extension.

Several of the subroutines in the netsmb module (see reference below
for vulnerable functions), which are reachable by unprivileged local
users via device ioctls sent to a /dev/nsmb* device, had signedness
errors.  By providing a negative value for a size field for certain
device ioctls (including SMBIOC_LOOKUP and SMBIOC_OPENSESSION for
*BSD), a size check will be bypassed and a memory overallocation will
occur, causing a kernel panic.  NetBSD committed their fix to CVS
today:

http://cvsweb.netbsd.org/bsdweb.cgi/src/sys/netsmb/smb_subr.c.diff?r1=1.34&r2=1.35&only_with_tag=MAIN&f=h

Regards,
Dan Rosenberg
