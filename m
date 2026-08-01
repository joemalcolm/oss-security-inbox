X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/01/6
Message-ID: <ed3c725b-8321-4a51-8ada-03532573b44f@oracle.com>
Date: Fri, 31 Jul 2026 19:33:16 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: Rails CVE-2026-66066: Possible arbitrary file read and remote code execution in Active Storage variant processing
Content-Type: text/plain; charset=utf-8

On 7/29/2026 3:46 PM, Alan Coopersmith wrote:
> https://github.com/rails/rails/security/advisories/GHSA-xr9x-r78c-5hrm
> advises:
>> Possible arbitrary file read and remote code execution in Active Storage
>>  variant processing
>>
>> Critical
>>
>> byroot published GHSA-xr9x-r78c-5hrm 29 July 2026
>>
[...]
>> Disclosure
>> ----------
>>
>> Technical details of the attack chain are intentionally omitted from this
>> advisory. They would add nothing to an administrator's decision to 
>> upgrade,
>> while making it substantially easier to attack applications that have 
>> not yet
>> done so.
>>
>> Details will be disclosed no later than 2026-08-28, via the Rails 
>> Security
>> Announcements forum:
>> https://discuss.rubyonrails.org/c/security-announcements/9

That further disclosure has happened now, announced at:
https://discuss.rubyonrails.org/t/cve-2026-66066-attack-details-and-tools-to-perform-a-forensic-investigation/91441

> We originally intended to publish these details no later than
> 2026-08-28, but several researchers quickly reverse-engineered the
> attack and have already published proofs-of-concept. As a result, we are
> disclosing details about the attack now, along with some tools to help
> assess whether an application was vulnerable and to help examine the
> forensic evidence for signs of secret exfiltration.
> 
> We have published all of this in a git repository,
> <https://github.com/rails/rails-forensics-CVE-2026-66066>, 
> which contains:
> 
>  * reference/the-attack.md explains how the attack works, step by step,
>    from the incoming request to the file being read.
>  * reference/the-investigation.md explains what evidence the attack
>    leaves behind in your database and your object store, and what that
>    evidence does and does not prove.
>  * The kr2s-was-i-vulnerable agent skill works out whether your
>    application was ever vulnerable, and if it was, over what period of
>    time.
>  * The kr2s-was-i-exploited agent skill searches your Active Storage
>    data for the crafted files, and works out what was read if it finds
>    any.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

