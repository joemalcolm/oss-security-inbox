X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/08/8
Message-ID: <20111108155647.GC3561@suse.de>
Date: Tue, 8 Nov 2011 16:56:47 +0100
From: Sebastian Krahmer <krahmer@...e.de>
To: oss-security@...ts.openwall.com
Subject: potential OpenPAM vulnerability
Content-Type: text/plain; charset=utf-8

Hi,

OpenPAM, until recently, was not filtering the service argument of
pam_start() invocations. This can lead to a root compromise.
Note that Linux-PAM is entirely different as forbids anything with '/'
inside.

Please see 

http://c-skills.blogspot.com/2011/11/openpam-trickery.html

for more discussion and PoC.
This most likely affects FreeBSD and Solaris via the kcheckpass
vector.

regards,
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

