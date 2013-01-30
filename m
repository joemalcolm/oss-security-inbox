X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/30/1
Message-ID: <540932871.18362792.1359546030409.JavaMail.root@redhat.com>
Date: Wed, 30 Jan 2013 06:40:30 -0500 (EST)
From: Jan Lieskovsky <jlieskov@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>, Jeff Law <law@...hat.com>, Paolo Bonzini <pbonzini@...hat.com>, Florian Weimer <fweimer@...hat.com>
Subject: CVE Request -- glibc: DoS due to a buffer overrun in regexp matcher by processing multibyte characters
Content-Type: text/plain; charset=utf-8

Hello Kurt, Steve, vendors,

  a security flaw was found in the regular expression matching
routine of glibc, the GNU libc libraries, processed multibyte
characters input. If an application utilized the glibc's regular
expression matching mechanism, an attacker could provide
a specially-crafted input that, when processed would lead
to that executable crash.

Upstream bug report:
[1] http://sourceware.org/bugzilla/show_bug.cgi?id=15078

Relevant patch:
[2] http://sourceware.org/ml/libc-alpha/2013-01/msg00967.html

More background:
* (from Paolo): Jan 30 11:34:19 <bonzini> iankko: it is a memset(foo, 0, ...) that
 overruns the buffer, so it's not controllable by the attacker

* but the denial of service scenario / attack vector is valid (consider network
facing application using glibc's regexp matching on untrusted input)

Could you allocate a CVE id for this?

Thank you && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
