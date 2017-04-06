X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/06/3
Message-ID: <455b67a9-6d14-b374-8140-51546a53738d@redhat.com>
Date: Thu, 6 Apr 2017 08:04:47 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: libxslt math.random issue
Content-Type: text/plain; charset=utf-8

On 04/06/2017 07:44 AM, Marcus Meissner wrote:

> FWIW, why is glibc not doing srand(RANDOMVECTOR) during startup... :/

The C standard does not allow it.

”
If rand is called before any calls to srand have been made, the same 
sequence shall be generated as when srand is first called with a seed 
value of 1.
”

Thanks,
Florian
