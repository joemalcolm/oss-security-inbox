X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/23/10
Message-ID: <1419758.eH1rNfhxKm@sarpedon>
Date: Fri, 23 Aug 2013 12:29:41 +0100
From: Tim Brown <tmb@...35.com>
To: oss-security@...ts.openwall.com
Subject: Re: [PATCH] implement privmode support in dash
Content-Type: text/plain; charset=utf-8

If we're going to fix dash to drop privs by default, might it also be worth 
reevaluating bash-as-sh where upon it *doesn't* drop privileges?  I can see 
the argument as to why, but Tavis' arguments also hold true for this case.

Tim
-- 
Tim Brown
<mailto:tmb@...35.com>
Download attachment "signature.asc" of type "application/pgp-signature" (837 bytes)
