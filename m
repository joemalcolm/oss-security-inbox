X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/03/10
Message-ID: <4DE91968.7060901@redhat.com>
Date: Fri, 03 Jun 2011 19:27:04 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request -- xscreensaver -- exits when activated
Content-Type: text/plain; charset=utf-8


Hello, Josh, Steve, vendors,

   it was found that xscreensaver terminated, when it was activated upon 
launch. A local proximate attacker could use this deficiency to access
resources, which should be otherwise protected by authentication.

References:
[1] http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=627382
[2] https://bugzilla.redhat.com/show_bug.cgi?id=703483

Could you allocate a CVE id for this?

Thank you & Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
