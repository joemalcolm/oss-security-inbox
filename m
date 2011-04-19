X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/19/2
Message-ID: <4DAD86F9.5090005@redhat.com>
Date: Tue, 19 Apr 2011 14:58:33 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>, Gerlof Langeveld <gerlof@...omputing.nl>
Subject: CVE Request -- atop: Symlink attacks via process accounting file
Content-Type: text/plain; charset=utf-8


Hello Josh, Steve, vendors,

   atop v1.23 and earlier created process accounting file (/tmp/atop.d/atop.acct)
in an insecure way. A local attacker could use this flaw to conduct symlink
attacks (e.g. overwrite arbitrary system files).

References:
[1] http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=622794
[2] http://secunia.com/advisories/44175/
[3] https://bugzilla.redhat.com/show_bug.cgi?id=697848

Could you allocate a CVE id for this?

Thanks && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team


