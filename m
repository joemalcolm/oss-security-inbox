X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/06/21/7
Message-ID: <201c4d4e-a734-4642-f0b3-74ee7d0d87c5@oracle.com>
Date: Wed, 21 Jun 2023 10:19:58 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2023-31975: memory leak in yasm
Content-Type: text/plain; charset=utf-8

On 6/20/23 23:45, Jeffrey Walton wrote:
> On Tue, Jun 20, 2023 at 6:49 PM Alan Coopersmith
> <alan.coopersmith@...cle.com> wrote:
>>
>> https://nvd.nist.gov/vuln/detail/CVE-2023-31975 is freaking out scanners
>> since it claims this bug has a CVSS of 9.8.
>>
>>   From what I see at https://github.com/yasm/yasm/issues/210 though, I can't
>> see any CVSS higher than 0.0 being relevant here and think the CVE should
>> be withdrawn.  Am I missing something here?  All I see is 2 objects of
>> 16 bytes each not being freed in the fraction of a second before the
>> command exits and automatically frees the memory - in a command the user
>> deliberately chooses to run, which runs as themselves with no raised
>> privileges, on an input file they provide, and which exits after processing
>> the file and doesn't hang around keeping that memory allocated - not a bit
>> of security risk at all there.  (Yes, it's a small bug and is good to fix,
>> but not to raise security alarms for.)
> 
> Memory leaks on exit are par for the course in GNU software per
> https://www.gnu.org/prep/standards/standards.html#Memory-Usage .
> 
> Nothing to see here, just move on.

This isn't a GNU program, but that doesn't matter here.  My argument
is still that this CVE should be revoked, and that this class of bug
shouldn't have CVEs issued.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

