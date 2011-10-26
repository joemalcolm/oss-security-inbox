X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/26/12
Message-ID: <20111026160159.GA29335@suse.de>
Date: Wed, 26 Oct 2011 18:02:00 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE-2011-3368 suggested patch incomplete for apache2 < 2.2.18
Content-Type: text/plain; charset=utf-8

Hi,

during our QA we noticed that the mod_proxy fix for CVE-2011-3368
was incomplete for HTTP 0.9 style requests. 

https://bugzilla.novell.com/show_bug.cgi?id=722545

to cross check, with the RewriteRules setup as in the exploit:

$ telnet testhost 80
GET @www.otherhost/foo.png
... should give a 400 error, and not the 404 code from www.otherhost

Ciao, Marcus
