X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/07/3
Message-ID: <4DEE628F.1010806@redhat.com>
Date: Tue, 07 Jun 2011 19:40:31 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>, nospam@...il.it
Subject: CVE Request -- WebSVN -- execCommand() remote commands injection vulnerability
Content-Type: text/plain; charset=utf-8

Hello, Josh, Steve, vendors,

   it was found that WebSVN is prone to remote commands injection 
vulnerability due improper escaping / quoting of strings, to be
sent to the command line. Microsoft Windows specific issue and
different vulnerability than CVE-2008-5918, CVE-2008-5919,
CVE-2008-5920, and CVE-2009-0240.

References:
[1] http://seclists.org/bugtraq/2011/Jun/34
[2] http://retrogod.altervista.org/rgod_websvn_adv.html
[3] http://retrogod.altervista.org/rgod_websvn_poc.html

Could you allocate a CVE id for this?

Thank you & Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
