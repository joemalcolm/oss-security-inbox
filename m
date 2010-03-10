X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/03/10/6
Message-ID: <4B97D746.3010700@redhat.com>
Date: Wed, 10 Mar 2010 18:30:46 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request -- Dovecot v1.2.11 -- DoS (excessive CPU use) by processing email with huge header
Content-Type: text/plain; charset=utf-8

Hi Steve, vendors,

   Dovecot upstream has released latest v1.2.11 version of Dovecot IMAP server:
     [1] http://www.dovecot.org/list/dovecot-news/2010-March/000152.html

   addressing one denial of service issue (from upstream announcement):
   "mbox users really should upgrade, because by sending a message with
    a huge header you could basically cause a DoS (this problem exists only
    with v1.2.x, not with v1.0 or v1.1)."

   References:
     [2] http://dovecot.org/pipermail/dovecot/2010-February/047190.html
     [3] http://dovecot.org/pipermail/dovecot/2010-February/047058.html
     [4] http://secunia.com/advisories/38881/

Could you allocate a CVE id for it?

Thanks && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
