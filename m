X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/26/4
Message-ID: <20111026142429.GA23713@suse.de>
Date: Wed, 26 Oct 2011 16:24:29 +0200
From: Sebastian Krahmer <krahmer@...e.de>
To: oss-security@...ts.openwall.com
Subject: CVE Request: slapd off by one
Content-Type: text/plain; charset=utf-8

Hi,

Is there already a CVE for this one?

http://www.openldap.org/its/index.cgi/Software%20Bugs?id=7059;selectid=7059

(UTF8StringNormalize() off by one)

Also see:

https://bugzilla.novell.com/show_bug.cgi?id=724201

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

