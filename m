X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/12/01/5
Message-ID: <e5468d60-4732-2678-94b4-ff10939263c0@oracle.com>
Date: Wed, 1 Dec 2021 09:11:15 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Dennis Jackson <djackson@...illa.com>
Cc: Benjamin Beurdouche <beurdouche@...illa.com>, Daniel Veditz <dveditz@...illa.com>
Subject: Re: CVE-2021-43527: Heap overflow in NSS when verifying DSA/RSA-PSS DER-encoded signatures
Content-Type: text/plain; charset=utf-8

On 12/1/21 8:43 AM, Dennis Jackson wrote:
> Remediation:
> 
> NSS 3.73 [1] and NSS ESR 3.68.1 [2] have been released and contain the
> fix. A patch suitable for backporting is also attached (patch.diff).
> 
> Acknowledgements:
> 
> This vulnerability was reported to the NSS team by Tavis Ormandy of
> Project Zero.

https://bugs.chromium.org/p/project-zero/issues/detail?id=2237 states that
"It's been 30 days since the initial thunderbird patches have been released".

Is there a corresponding Thunderbird patch/advisory/release distros should be
shipping as well?


-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
