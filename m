X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/13/3
Message-ID: <4DF602F4.50000@redhat.com>
Date: Mon, 13 Jun 2011 14:30:44 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security@...ts.openwall.com, Ville-Pekka Vainio <vpivaini@...helsinki.fi>
Subject: CVE Request -- libvoikko -- DoS of application linked against libvoikko due improper handling of embedded null characters in input strings
Content-Type: text/plain; charset=utf-8

Hello, Josh, Steve, vendors,

   A denial of service flaw was found in the way Python and Java
interfaces of libvoikko, a library for spellcheckers and hyphenators,
processed embedded null characters in input strings. If a specially-
crafted input string was provided to an application linked against
libvoikko, it could lead to that particular application termination.

References:
[1] http://voikko.sourceforge.net/releases.html
[2] https://bugzilla.redhat.com/show_bug.cgi?id=712863

Upstream patches:
[3] 
http://voikko.svn.sourceforge.net/viewvc/voikko?view=revision&revision=3901
[4] 
http://voikko.svn.sourceforge.net/viewvc/voikko?view=revision&revision=3902
[5] 
http://voikko.svn.sourceforge.net/viewvc/voikko?view=revision&revision=3903

Could you allocate a CVE identifier for this?

Thank you && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
