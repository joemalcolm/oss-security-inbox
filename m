X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/30
Message-ID: <b1a037b9-9720-486a-be80-c10ca7ea1d79@oracle.com>
Date: Tue, 20 Oct 2026 10:37:18 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: NSS 3.131.1 Release - Important Security Updates
Content-Type: text/plain; charset=utf-8

https://groups.google.com/a/mozilla.org/g/dev-tech-crypto/c/vSxZxnOMMvs says:
> Network Security Services (NSS) 3.131.1 was released on 20th October 2026.
> This release contains important security updates (see below).
> 
> Distribution Information
> 
> The HG tag is NSS_3_131_1RTM. NSS 3.131.1 requires NSPR 4.39 or newer.
> 
> NSS 3.131.1 source distributions are available on ftp.mozilla.org for secure
> HTTPS download:
> 
>   Source tarballs:
>     https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_131_1_RTM/src/
> 
> Changes in NSS 3.131.1
> 
> This release removes trust in the following root certificates: 
> 
>     Bug 2083709 - emSign Root CA - C1
> 
>     Bug 2083709 - emSign ECC Root CA - C3
> 
>     Bug 2084101 - emSign ECC Root CA - G3
> 
> The G3 root removal is in response to a recent security incident which
> impacted some intermediate certificates. Mozilla has already protected
> Firefox clients via an update to OneCRL which was delivered on
> Saturday 19th. This release helps protect downstream users beyond
> Firefox who don’t receive revocation information or cannot block
> intermediate certificates.
> 
> We recommend you update as soon as possible
> 
> Best,
> Dennis

https://www.mozilla.org/en-US/security/advisories/mfsa2026-112/
suggests this update is tracked under CVE-2026-113470 for Mozilla
products.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

