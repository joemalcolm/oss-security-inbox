X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/02/04/7
Message-ID: <Pine.GSO.4.64.1002041157260.8661@faron.mitre.org>
Date: Thu, 4 Feb 2010 12:00:24 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2009-3297 clarification needed - samba/fuse/ncpfs symlinks
Content-Type: text/plain; charset=utf-8


Regarding these bug reports:

https://bugzilla.redhat.com/show_bug.cgi?id=532940
https://bugzilla.redhat.com/show_bug.cgi?id=558833
https://bugzilla.samba.org/show_bug.cgi?id=6853

It seems that a separate CVE should be assigned for samba, fuse, and 
ncpfs, since these are all distinct codebases.

Since the Samba bug report says that Debian assigned CVE-2009-3297 to the 
Samba part, it looks like two new CVEs are needed, one for fuse and one 
for ncpfs.

Am I missing something here?


Thanks,
Steve
