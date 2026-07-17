X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/17/12
Message-ID: <c51af79c-49d2-479d-9b32-ad3c3e2a0da3@oracle.com>
Date: Fri, 17 Jul 2026 13:00:21 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: 7-Zip XZ Decompression Heap-based Buffer Overflow Remote Code Execution Vulnerability
Content-Type: text/plain; charset=utf-8

https://www.zerodayinitiative.com/advisories/ZDI-26-444/ advises:
> 7-Zip XZ Decompression Heap-based Buffer Overflow Remote Code Execution
> Vulnerability
> 
> July 15th, 2026
> ZDI-26-444 ZDI-CAN-30169
> 
> CVE ID
> CVE-2026-14266
> 
> CVSS Score
> 7.0 AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H
> 
> Affected Vendors
> 7-Zip
> 
> Affected Products
> 7-Zip
> 
> Vulnerability Details
> 
> This vulnerability allows remote attackers to execute arbitrary code on
> affected installations of 7-Zip. User interaction is required to exploit
> this vulnerability in that the target must visit a malicious page or open
> a malicious file.
> 
> The specific flaw exists within the processing of XZ chunked data.
> Crafted XZ-compressed data can trigger an overflow of a heap-based buffer.
> An attacker can leverage this vulnerability to execute code in the context
> of the current process.
> 
> Additional Details
> 
> Fixed in 7-Zip 26.02
> 
> Disclosure Timeline
> 
>     2026-06-05 - Vulnerability reported to vendor
>     2026-07-15 - Coordinated public release of advisory
>     2026-07-15 - Advisory Updated
> 
> Credit
> 
> Lunbun LLC (Landon Peng)

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

