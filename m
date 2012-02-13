X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/02/13/3
Message-ID: <4F391836.7050308@redhat.com>
Date: Mon, 13 Feb 2012 15:03:34 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security@...ts.openwall.com, Daniel Callaghan <dcallagh@...hat.com>, David Malcolm <dmalcolm@...hat.com>
Subject: CVE Request -- python (SimpleXMLRPCServer): DoS (excessive CPU usage) via malformed XML-RPC / HTTP POST request
Content-Type: text/plain; charset=utf-8

Hello Kurt, Steve, vendors,

   we have been notified by Daniel Callaghan via:
[1] https://bugzilla.redhat.com/show_bug.cgi?id=789790

about a denial of service flaw present in the way
Simple XML-RPC Server module of Python processed
client connections, that were closed prior the
complete request body has been received. A remote
attacker could use this flaw to cause Python Simple
XML-RPC based server process to consume excessive
amount of CPU.

Issue has been reported upstream at:
[2] http://bugs.python.org/issue14001

Could you allocate a CVE identifier for this?

Thank you && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
