X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/11/21/1
Message-ID: <4B07FD77.1000807@redhat.com>
Date: Sat, 21 Nov 2009 15:47:19 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request - Dovecot - 1.2.8
Content-Type: text/plain; charset=utf-8

Hi Josh, Steve, vendors,

   Dovecot upstream has released latest 1.2.8 version, fixing
one security issue. Quoting from news:

This is mainly to fix the 0777 base_dir creation issue, which could be
considered a security hole, exploitable by local users. An attacker
could for example replace Dovecot's auth socket and log in as other
users. Gaining root privileges isn't possible though.

This affects only v1.2 users, v1.1 and older versions were creating the
directory with 0755 permission.

References:
-----------
http://www.dovecot.org/list/dovecot-news/2009-November/000143.html
http://www.dovecot.org/index.html

Could you allocate a CVE id? (in case there isn't one already).

Thanks && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
