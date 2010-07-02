X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/02/2
Message-ID: <4C2E03B1.4030109@redhat.com>
Date: Fri, 02 Jul 2010 17:20:17 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>, Luigi Auriemma <aluigi@...istici.org>
Subject: CVE Request -- Mumble server (Murmur) / Qt SQLite -- Remotely exploitable DoS (murmur termination) due QueryUsers Qt SQLite database bug
Content-Type: text/plain; charset=utf-8

Hi Steve, vendors,

   Luigi Auriemma reported:
   [1] http://aluigi.altervista.org/adv/mumbleed-adv.txt

a deficiency in the way Mumble server processed malformed SQL query data.
A remote, authenticated user could use this flaw to cause denial of service
(mumble server termination) via specially-crafted QueryUsers Qt SQLite SQL
query.

References:
   [2] http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=587713

Public PoC:
   [3] http://aluigi.org/poc/mumbleed.zip

Though not sure, if the true reason for this is:
1, either Mumble server calling relevant Qt SQLite function in improper way or
2, deficiency in that particular Qt function itself

Luigi, could you please clarify on the above?

Steve, could you allocate a CVE id for this?

Thanks && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
