X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/1
Message-ID: <76607838-6f70-4c6a-8fa8-3f9b3d2e5bd8@oracle.com>
Date: Thu, 18 Jun 2026 17:37:44 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Amos Jeffries <squid3@...enet.co.nz>
Subject: Re: Squid CVE-2026-47729 and CVE-2026-50012
Content-Type: text/plain; charset=utf-8

On 6/15/26 04:26, Amos Jeffries wrote:
> On 12/06/2026 20:21, Amos Jeffries wrote:
>> Hi all,
>>
>> Squid 7.6 release contains fixes for and releases the embargo on 
>> CVE-2026-47729 and CVE-2026-50012.
>>
> 
> Apologies, this first one (CVE-2026-47729) embargo is over, but the fix will 
> actually be in Squid 7.7.

A blog was posted about it today:
https://blog.calif.io/p/squidbleed-cve-2026-47729

It says the root cause was a misunderstanding of what the C standard requires:
> strchr(w_space, '\0') returns non-NULL per C11 §7.24.5.2 (terminating NUL
> is part of the string). 

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
