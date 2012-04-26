X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/26/2
Message-ID: <4F99301C.3000305@redhat.com>
Date: Thu, 26 Apr 2012 13:23:08 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security@...ts.openwall.com, Jan Safranek <jsafrane@...hat.com>, Sergio Freire <sergio-s-freire@...novacao.pt>
Subject: CVE Request -- net-snmp: Array index error, leading to out-of heap-based buffer read (snmpd crash)
Content-Type: text/plain; charset=utf-8

Hello Kurt, Steve, vendors,

   an array index error, leading to out-of heap-based buffer read flaw was found
in the way net-snmp agent performed entries lookup in the extension table. When
certain MIB subtree was handled by the extend directive, a remote attacker
having read privilege to the subtree could use this flaw to cause a denial of
service (snmpd crash) via SNMP GET request involving a non-existent extension
table entry.

References:
[1] https://bugzilla.redhat.com/show_bug.cgi?id=815813

Could you allocate a CVE id for this?

Thank you && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
