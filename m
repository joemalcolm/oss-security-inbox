X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/21/7
Message-ID: <4ECA37FF.8080100@redhat.com>
Date: Mon, 21 Nov 2011 12:37:35 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security@...ts.openwall.com
Subject: CVE Request (minor) -- gnash -- Unsafe management of HTTP cookies
Content-Type: text/plain; charset=utf-8

Hello Kurt, Steve, vendors,

   a security flaw was found in the way Shockwave Flash plug-in of the
gnash, a GNU flash movie player, performed management of HTTP cookies
(they were stored under /tmp directory with predictable name and world-
readable permissions). A local attacker could use this flaw to obtain
sensitive information.

References:
[1] http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=649384
[2] https://bugzilla.redhat.com/show_bug.cgi?id=755518

Could you allocate a CVE id for this?

Thank you && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
