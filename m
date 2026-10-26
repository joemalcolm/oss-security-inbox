X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/13
Message-ID: <e0c055fd-0504-4201-aa6e-bae695932aea@oracle.com>
Date: Sun, 25 Oct 2026 19:10:07 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: Brotli CVE-2026-111497
Content-Type: text/plain; charset=utf-8

On 10/25/26 19:03, Alan Coopersmith wrote:
> For instance, Ghostscript appears to have brought in the fix to it's
> bundled copy of brotli in their 10.07.1rc1 release:
> https://github.com/ArtifexSoftware/ghostpdl/ 
> commit/0f318d9a288a4016b8a3ef11a52e536443aa8e2b
> in which you can see the changes are present from
> https://github.com/ArtifexSoftware/ghostpdl/ 
> commit/0f318d9a288a4016b8a3ef11a52e536443aa8e2b

Sorry, copy & paste error - the second URL should have been:
https://github.com/google/brotli/commit/0ed4268a4401abcb4472096340477cf4af7d1a2b

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
