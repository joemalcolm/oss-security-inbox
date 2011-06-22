X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/22/6
Message-ID: <20110622142847.GA14951@suse.de>
Date: Wed, 22 Jun 2011 16:28:47 +0200
From: Sebastian Krahmer <krahmer@...e.de>
To: oss-security@...ts.openwall.com
Subject: CVE requests: opie off by one and setuid() failure
Content-Type: text/plain; charset=utf-8

Hi,

Can someone assign 2 CVE's for a off by one in opiesu
and a missing setuid() retval check in opielogin which
leads to easy root compromise? Reviewed opie-2.4.

Patches are available here:

https://bugzilla.novell.com/show_bug.cgi?id=698772

thx,
Sebastian


-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@...e.de - SuSE Security Team

---
SUSE LINUX Products GmbH,
GF: Jeff Hawn, Jennifer Guild, Felix Imendörffer, HRB 16746 (AG Nürnberg)
Maxfeldstraße 5
90409 Nürnberg
Germany

