X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/07/21/4
Message-ID: <20140721081731.GB14914@suse.de>
Date: Mon, 21 Jul 2014 10:17:31 +0200
From: Sebastian Krahmer <krahmer@...e.de>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Subject: CVE-Request: KAuth authentication bypass
Content-Type: text/plain; charset=utf-8

Hi

We'd like to request a CVE for the following issue:

The polkit authentication backend in KDE's KAuth code
used the UnixProcess subject for authenticating actions.
This is subject to race conditions and allows local users
to elevate their privileges by bypassing any of the KAuth checks.
A followup of CVE-2013-4288.

Discussion and patch can be found here:

https://bugzilla.novell.com/show_bug.cgi?id=864716

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@...e.de - SuSE Security Team

