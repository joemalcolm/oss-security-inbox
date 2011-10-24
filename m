X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/24/4
Message-ID: <4EA53E3F.8020103@redhat.com>
Date: Mon, 24 Oct 2011 12:30:23 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security@...ts.openwall.com, Elio Maldonado <emaldona@...hat.com>, Robert Relyea <rrelyea@...hat.com>
Subject: CVE Request -- nss: Did honour /pkcs11.txt and /secmod.db files by initialization
Content-Type: text/plain; charset=utf-8

Hello Josh, Steve, vendors,

   a security flaw was found in the way nss, the Network Security
Services (NSS) set of libraries, performed their initialization (the
file path for "pkcs11.txt" configuration file was constructed 
incorrectly). When that configuration file was loaded from remote WebDAV 
or Samba CIFS share, it could lead to arbitrary security module
load, potentially leading to execution of arbitrary code (execution of
code from untrusted security module).

Upstream bug report:
[1] https://bugzilla.mozilla.org/show_bug.cgi?id=641052

Other references:
[2] https://secunia.com/advisories/46557/
[3] https://bugs.gentoo.org/show_bug.cgi?id=388045
[4] http://code.google.com/p/chromium/issues/detail?id=97426#c8
[5] https://bugzilla.redhat.com/show_bug.cgi?id=748379

Could you allocate a CVE id for this? (as it looks there isn't one
for this deficiency yet)

Thank you && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
