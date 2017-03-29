X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/03/29/4
Message-ID: <alpine.LFD.2.20.1703292229380.2723@austen3.home>
Date: Wed, 29 Mar 2017 23:16:15 +0100
From: Michael Young <m.a.young@...ham.ac.uk>
To: "Xen.org security team" <security@....org>
CC: <xen-announce@...ts.xen.org>, <xen-devel@...ts.xen.org>, <xen-users@...ts.xen.org>, <oss-security@...ts.openwall.com>
Subject: Re: [Xen-devel] Xen Security Advisory 206 - xenstore denial of service via repeated update
Content-Type: text/plain; charset=utf-8

On Wed, 29 Mar 2017, Xen.org security team wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
>                    Xen Security Advisory XSA-206
>                              version 9
>
>            xenstore denial of service via repeated update

I am seeing a build failure from these patches when using gcc 7. The 
problem is with
xsa206-4.80002-xenstored-Log-when-the-write-transaction-rate-limit-.patch 
because in tools/xenstore/xenstored_domain.c the patch adds the boolean 
wrl_delay_logged to the structure "domain" but later it tries to increment 
it, resulting in the error 
xenstored_domain.c: In function 'wrl_apply_debit_actual':
xenstored_domain.c:949:32: error: increment of a boolean expression 
[-Werror=bool-operation]
    if (!domain->wrl_delay_logged++) {

 	Michael Young
