X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/32
Message-ID: <a32e6f10-bd5b-4d12-9af8-1ecdb595e540@oracle.com>
Date: Tue, 4 Aug 2026 12:23:12 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Albert Veli <albert.veli@...il.com>
Subject: Re: Some Changes to GNOME Security Tracking
Content-Type: text/plain; charset=utf-8

On 8/4/2026 2:10 AM, Albert Veli wrote:
> Hi!
> 
> On 8/3/26 18:33, David A. Wheeler wrote:
>> Please allow me to point you to the actual announcement & project page,
>> which explains what is *actually* going on instead.
>>
>> The Akrites announcement here:
>> https://www.linuxfoundation.org/press/linux-foundation-and-industry- 
>> leaders-launch-akrites-to-defend-critical-open-source-software- 
>> against-ai-enabled-cyber-threats
> I read through this as well as the information at https://akrites.org/. 
> It sounds like Akrites does something similar to what I understand is 
> already being done at the distros list. I hope you (the organisations on 
> the distros list) can find a way to cooperate with Akrites. Otherwise, 
> there is a risk of fragmenting the community and creating parallel 
> vulnerability coordination processes.

No, these are working at different stages of the process.

The akrites.org site lists they are involved at:
   1) Intake
   2) Deduplicate & Validate
   3) Remediate
   4) Synchronized Disclosure

The distros list only is involved with step 4 there - after projects
have triaged, verified, and fixed a security vulnerability, they contact
the distros list to let the distros have early access to the fixes so
that distros can prepare and test their packages with the fixes.

While we haven't heard from them directly, I would hope that when 
Akrites has a fix to distribute for software packaged in distros,
they use the existing distros list instead of creating a new forum.
Of course, there's a lot of software out there outside the scope of
common OS distros, and they may need a different disclosure process
for that.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

