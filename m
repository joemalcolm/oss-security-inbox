X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/2
Message-ID: <42872e0b-c2e4-433f-b8ec-4b2db3bab3c8@citrix.com>
Date: Tue, 10 Nov 2026 23:51:08 +0000
From: Andrew Cooper <andrew.cooper3@...rix.com>
To: "Xen.org security team" <security@....org>, xen-announce@...ts.xen.org, xen-devel@...ts.xen.org, xen-users@...ts.xen.org, oss-security@...ts.openwall.com
Cc: Andrew Cooper <andrew.cooper3@...rix.com>, "Xen.org security team" <security-team-members@....org>
Subject: Re: Xen Security Advisory 525 v1 (CVE-2024-36350,CVE-2024-36357,CVE-2026-0004) - x86: Transient Scheduler Attacks (update)
Content-Type: text/plain; charset=utf-8

On 10/11/2026 6:00 pm, Xen.org security team wrote:
>  Xen Security Advisory CVE-2024-36350,CVE-2024-36357,CVE-2026-0004 /
> XSA-525
>
>                x86: Transient Scheduler Attacks (update)
>
> ISSUE DESCRIPTION
> =================
>
> AMD have discovered further properties of Transient Scheduler Attacks.
>
> The previously published XSA-471 dealt with two TSA variants, TSA-SQ
> and TSA-L1 on Zen3 and Zen4 CPUs.  For details, see XSA-471.
>
> AMD had previously said that Zen5 CPUs were not vulnerable to TSA-SQ and
> TSA-L1.  This statement has been corrected, and is being tracked as
> AMD-SB-7073 using the existing CVE-2024-36350 and CVE-2024-36357.
>
> AMD have also disclosed a new TSA variant, TSA-Fill, which is being
> tracked as AMD-SB-3031 and CVE-2026-0004.
>
> For more information, see:
>   https://xenbits.xen.org/xsa/advisory-471.html
>  
> https://www.amd.com/content/dam/amd/en/documents/resources/bulletin/technical-guidance-for-mitigating-transient-scheduler-attacks.pdf
>  
> https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7073.html
>  
> https://www.amd.com/en/resources/product-security/bulletin/amd-sb-3031.html

My apologies.  Both references to 3031 should have been 3055 instead.

https://www.amd.com/en/resources/product-security/bulletin/amd-sb-3055.html

~Andrew
