X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/07/10/5
Message-ID: <4FFC2A93.5030803@redhat.com>
Date: Tue, 10 Jul 2012 15:13:55 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: libdbus hardening
Content-Type: text/plain; charset=utf-8

On 07/10/2012 03:09 PM, Sebastian Krahmer wrote:

> There are certainly also other libs that will receive a patch.

Perhaps we can put a getenv_secure() into libc, which will perform all 
the appropriate checks (including future checks we do not know about 
yet)?  Duplicating the code in many libraries does not seem prudent.

(OTOH, library code should never use getenv(), but it's a long way to that.)

-- 
Florian Weimer / Red Hat Product Security Team


