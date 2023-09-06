X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/09/06/10
Message-ID: <a7ece13f-db08-4379-8733-6bf7d14a2c89@oracle.com>
Date: Wed, 6 Sep 2023 13:00:05 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2023-38633 in librsvg: Arbitrary file read when xinclude href has special characters
Content-Type: text/plain; charset=utf-8

On 7/27/23 13:36, Alan Coopersmith wrote:
> I haven't seen this go by yet, so for those who haven't seen it:
> 
> https://gitlab.gnome.org/GNOME/librsvg/-/issues/996 reports:
> 
> CVE-2023-38633: Arbitrary file read when xinclude href has special characters
> 
> This was reported by Zac Sims.

Zac's writeup on how the bug was found is now available at:
https://www.canva.dev/blog/engineering/when-url-parsers-disagree-cve-2023-38633/

It points to a root cause of mixing two different URL parsers, with one used to
validate the URL and a different one used to load the content from it.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

