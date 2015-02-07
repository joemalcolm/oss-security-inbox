X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/07/9
Message-ID: <20150207183347.75d03966@pc>
Date: Sat, 7 Feb 2015 18:33:47 +0100
From: Hanno Böck <hanno@...eck.de>
To: Kurt Seifried <kseifried@...hat.com>
Cc: Assign a CVE Identifier <cve-assign@...re.org>, "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: ghostscript double free and invalid read caused by embedded jbig2 data
Content-Type: text/plain; charset=utf-8

On Sat, 07 Feb 2015 10:27:29 -0700
Kurt Seifried <kseifried@...hat.com> wrote:

> https://bugzilla.redhat.com/show_bug.cgi?id=570425
> 
> I'm pretty sure this issue is different than CVE-2009-0196

Ghostscript right now has ~180 open unfixed bugs from fuzzing:
http://bugs.ghostscript.com/buglist.cgi?component=fuzzing&query_format=advanced&resolution=---

I believe most of them are related to this fuzzing effort from 2013:
http://gynvael.coldwind.pl/?id=493
(I think Gynvael is on this list, maybe he can comment on the state)

gs already does invalid memory reads without any fuzzing at all. Just
compile it with asan and try to use the pdfwrite device.


-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Content of type "application/pgp-signature" skipped
