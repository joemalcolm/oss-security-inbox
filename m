X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/08/6
Message-Id: <201103080933.38597.ludwig.nussel@suse.de>
Date: Tue, 8 Mar 2011 09:33:38 +0100
From: Ludwig Nussel <ludwig.nussel@...e.de>
To: oss-security@...ts.openwall.com
Subject: Buffer overflows in fsck may become security issues
Content-Type: text/plain; charset=utf-8

Hi,

A buffer overflow in dosfsck caught my attention recently. Don't
worry, it's harmless and already fixed upstream¹. However, it turned
out that udisks has a dbus method that by default allows the user on
the active console to run fsck on removable media. fsck is run as
root in this case. I haven't checked whether fsck is run
automatically in any environment. However, since some desktops
automatically mount removeable media it seems logical to call fsck
first. So overflows in the various fsck binaries could allow local
privilege escalation.

cu
Ludwig

[1] http://git.debian-maintainers.org/?p=daniel/dosfstools.git;a=commitdiff;h=a9055613f0d826021db65c79c2df87ac91e89215

-- 
 (o_   Ludwig Nussel
 //\
 V_/_  http://www.suse.de/
SUSE LINUX Products GmbH, GF: Markus Rex, HRB 16746 (AG Nuernberg)
