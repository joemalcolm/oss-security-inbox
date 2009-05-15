X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/05/15/3
Message-Id: <1242405871.5889.5.camel@localhost.localdomain>
Date: Fri, 15 May 2009 18:44:31 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: Steven Christey <coley@...us.mitre.org>
Cc: oss-security@...ts.openwall.com
Subject: CVE Request -- Eggdrop
Content-Type: text/plain; charset=utf-8

Hello Steve,

  Thomas Sader yesterday reported, the original patch for original
stack-based buffer overflow flaw (CVE-2007-2807) in Eggdrop is
incomplete (might introduce another flaw). 

References:
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=528778
http://www.gossamer-threads.com/lists/fulldisc/full-disclosure/68341 
(affected versions, vulnerability details, PoC, resolution).
http://www.eggheads.org/downloads/ (upstream page)
http://www.eggheads.org/redirect.php?url=ftp://ftp.eggheads.org/pub/eggdrop/patches/official/1.6/eggdrop1.6.19%2Bctcpfix.patch.gz
(patch towards the latest version).

Could you allocate a new CVE id for it?

Thanks, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team

