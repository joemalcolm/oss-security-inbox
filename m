X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/01/31/7
Message-ID: <27c1d618-c6b1-e9bc-af65-1a4579f18fa1@oracle.com>
Date: Tue, 31 Jan 2023 09:42:14 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Eric Covener <covener@...che.org>
Subject: Re: CVE-2022-24963: Apache Portable Runtime (APR): out-of-bound writes in the apr_encode family of functions
Content-Type: text/plain; charset=utf-8

On 1/31/23 07:12, Eric Covener wrote:
> Severity: moderate
> 
> Description:
> 
> Integer Overflow or Wraparound vulnerability in apr_encode functions of Apache Portable Runtime (APR) allows an attacker to write beyond bounds of a buffer.
> This issue affects Apache Portable Runtime (APR) version 1.7.0.
> 
> Credit:
> 
> Ronald Crane (Zippenhop LLC) (finder)
> 
> References:
> 
> https://apr.apache.org/
> https://www.cve.org/CVERecord?id=CVE-2022-24963

And what's the fix?  Is there a patch to apply or new version to upgrade to?

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

