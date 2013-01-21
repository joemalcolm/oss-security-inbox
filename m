X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/21/14
Message-ID: <20130121145448.GA8751@suse.de>
Date: Mon, 21 Jan 2013 15:54:48 +0100
From: Sebastian Krahmer <krahmer@...e.de>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org
Subject: CVE Request coreutils
Content-Type: text/plain; charset=utf-8

Hi,

Can someone assign a CVE id for a buffer overflow in coreutils?
Its the same code snippet (coreutils-i18n.patch) and it affects sort, uniq and join:

https://bugzilla.novell.com/show_bug.cgi?id=798538
https://bugzilla.novell.com/show_bug.cgi?id=796243
https://bugzilla.novell.com/show_bug.cgi?id=798541

regards,
Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@...e.de - SuSE Security Team

