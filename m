X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/23/4
Message-ID: <50FF969E.5090808@redhat.com>
Date: Wed, 23 Jan 2013 08:51:58 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
CC: Vincent Danen <vdanen@...hat.com>, Sebastian Krahmer <krahmer@...e.de>
Subject: Re: CVE Request coreutils
Content-Type: text/plain; charset=utf-8

On 01/22/2013 04:47 PM, Vincent Danen wrote:

> Do you believe this would be the case with modern GCC/Glibc hardening
> though?  Wouldn't this just be rendered a crash?

Catching this reliably needs compiling with -fstack-check, which is 
currently not among commonly used hardening flags.  The generated code 
used to be rather buggy, too.

-- 
Florian Weimer / Red Hat Product Security Team
