X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/20/16
Message-ID: <4F198C62.5090706@redhat.com>
Date: Fri, 20 Jan 2012 16:46:42 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security@...ts.openwall.com, Joshua Colp <jcolp@...ium.com>
Subject: CVE Request -- Asterisk AST-2012-001 / Remote DoS while processing crypto line for media stream with non-existing RTP
Content-Type: text/plain; charset=utf-8

Hello Kurt, Steve, vendors,

   a denial of service flaw was found in the way asterisk processed certain
requests to negotiate secure video stream, when the res_srtp Asterisk module
has been loaded and video support has not been enabled. A remote attacker could
provide a specially-crafted media stream negotiation request, which once
processed by Asterisk would lead to asterisk daemon crash by processing crypto
line for such media stream.

References:
[1] http://downloads.asterisk.org/pub/security/AST-2012-001.html
[2] https://issues.asterisk.org/jira/browse/ASTERISK-19202
[3] https://bugzilla.redhat.com/show_bug.cgi?id=783487

Upstream patch against the v1.8.x branch:
[4] http://downloads.asterisk.org/pub/security/AST-2012-001-1.8.diff

Upstream patch against the v1.10.x branch:
[5] http://downloads.asterisk.org/pub/security/AST-2012-001-10.diff

Could you allocate a CVE identifier for this?

Thank you && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
