X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/08/24/7
Message-ID: <20110824140827.GA1477@suse.de>
Date: Wed, 24 Aug 2011 16:08:27 +0200
From: Sebastian Krahmer <krahmer@...e.de>
To: oss-security@...ts.openwall.com
Cc: robert.ancell@...onical.com
Subject: lightdm issues
Content-Type: text/plain; charset=utf-8

Hi,

lightdm (0.9.2) which aims to be a xdm replacement seems to
fall into the same pitfalls like kdm and gdm recently. There is
a lot of uid 0 code creating and chown()ing files in user dirs such as
for ~/.dmrc and ~/.Xauthority. Probably more, depending on
how the permissions of cache and log directories are set up. For example
process_start() also creates and chown()s logfiles on users behalf.

There is also one thing that I dont understand about the lightdm
user itself and why pam sessions seem to be started for it inside
the greeter session code.

The xdmcp code seems to be OK so far, after a quick review.

l8er,
-s


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

