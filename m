X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/07/11/3
Message-ID: <1705863526.3270323.1373562441477.JavaMail.root@redhat.com>
Date: Thu, 11 Jul 2013 13:07:21 -0400 (EDT)
From: Jan Lieskovsky <jlieskov@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>, Henri Wahl <henriwww@...rs.sourceforge.net>
Subject: CVE Request -- Nagstamon (prior 0.9.10): Monitor server user credentials exposure in automated requests to get update information
Content-Type: text/plain; charset=utf-8

Hello Kurt, Steve, vendors,

  an user details information exposure flaw was found in the way Nagstamon,
Nagios status monitor for desktop, performed automated requests to get
information about available updates. Remote attacker could use this flaw
to obtain user credentials for server monitored by the desktop status
monitor due to their improper (base64 encoding based) encoding in the
HTTP request, when the HTTP Basic authentication scheme was used.

References:
[1] http://nagstamon.ifw-dresden.de/docs/security/
[2] https://bugs.gentoo.org/show_bug.cgi?id=476538
[3] https://bugzilla.redhat.com/show_bug.cgi?id=983673

Can you allocate a CVE id for this?

Thank you && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
