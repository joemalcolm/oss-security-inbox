X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/10/20/8
Message-ID: <700225b5-c214-4f34-bf09-1c25703957b5@oracle.com>
Date: Fri, 20 Oct 2023 10:39:01 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2023-44487: HTTP/2 Rapid Reset attack against many implementations
Content-Type: text/plain; charset=utf-8

On 10/18/23 16:10, Alan Coopersmith wrote:
> On 10/10/23 11:40, Alan Coopersmith wrote:
>> Information I've found so far on open source implementations (most via the
>> current listings in the CVE) include:
> 
> Some more updates since last week:
> 
>> - Apache httpd:
>>    https://chaos.social/@icing/111210915918780532
> 
> The discussion in https://github.com/apache/httpd-site/pull/10 makes the
> situation a little murkier.

https://github.com/icing/blog/blob/main/h2-rapid-reset.md clears that up
and explains why Apache issued a fix under a different CVE id for the
problem identified in that discussion, as we saw on this list yesterday.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

