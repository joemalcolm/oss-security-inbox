X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/24/7
Message-ID: <87pqaxcm4x.fsf@mid.deneb.enyo.de>
Date: Tue, 24 Apr 2012 15:09:02 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- libgssapi, libgssglue -- Ability to load untrusted configuration file, when loading GSS mechanisms and their definitions during initialization
Content-Type: text/plain; charset=utf-8

* Sebastian Krahmer:

> nfs-client-1.2.5 rpm which is probably a result of the nfs-utils-1.2.5
> source package.

Thanks, it turns out that the dependency on libgssglue is pulled in
via libtirpc.  This doesn't happen in older versions (with Sun RPC
from libc, I guess).
