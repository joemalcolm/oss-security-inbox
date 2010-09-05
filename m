X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/05/1
Message-ID: <4C83B289.7080904@redhat.com>
Date: Sun, 05 Sep 2010 17:08:57 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request -- Bip -- Remote Dos (crash) by exchanging user credentials
Content-Type: text/plain; charset=utf-8

Hello Steve, vendors,

   A denial of service flaw was found in the way Bip IRC Bouncer
exchanged user credentials by initiating the IRC protocol session.
A remote, unauthenticated user could send a specially crafted
connection request, leading to bip daemon crash (NULL pointer dereference)

References:
   [1] http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=595409
   [2] https://bugzilla.redhat.com/show_bug.cgi?id=630437

Could you allocate CVE id for this one?

Thanks && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
