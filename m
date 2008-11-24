X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/11/24/1
Message-Id: <1227519963.4431.6.camel@dhcp-lab-164.englab.brq.redhat.com>
Date: Mon, 24 Nov 2008 10:46:03 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: coley@...re.org
Cc: oss-security@...ts.openwall.com
Subject: CVE Request -- wireshark
Content-Type: text/plain; charset=utf-8

Hello Steve,

  the following remotely exploitable vulnerability in Wireshark's
SMTP dissector has been reported:

References:
http://packetstormsecurity.org/0811-advisories/wireshark104-dos.txt
http://bugs.gentoo.org/show_bug.cgi?id=248425
https://bugzilla.redhat.com/show_bug.cgi?id=472737
http://www.nabble.com/-SVRT-04-08--Vulnerability-in-WireShark-1.0.4-for-DoS-Attack-td20640164.html
http://www.derkeiler.com/Mailing-Lists/securityfocus/bugtraq/2008-11/msg00166.html

Proposed upstream patches:
http://anonsvn.wireshark.org/viewvc/trunk/epan/dissectors/packet-smtp.c?r1=24989&r2=24988&pathrev=24989&view=patch
http://anonsvn.wireshark.org/viewvc/trunk/epan/dissectors/packet-smtp.c?r1=24994&r2=24993&pathrev=24994&view=patch

Affected Wireshark's versions: SVRT-Bkis mentions 1.0.4 and all previous
                               Checked 0.99.5 and the vulnerability is there.

Could you please allocate a new CVE id for it?

Thanks, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team

