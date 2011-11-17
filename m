X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/17/9
Message-ID: <4EC52A29.5040804@redhat.com>
Date: Thu, 17 Nov 2011 08:37:13 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: nginx resolver heap overflow
Content-Type: text/plain; charset=utf-8

On 11/16/2011 10:50 PM, Ben Hawkes wrote:
> Hi,
>
> The nginx team have released stable version 1.0.10, which includes a fix 
> for a heap overflow bug in the custom DNS resolver:
>
> http://trac.nginx.org/nginx/changeset/4268/nginx
>
> The resolver is most commonly used with the proxy and fastcgi modules,
> which are not enabled by default.
>
> In order to trigger this condition an attacker would need to be in
> control of an upstream resolver host, or be in a position to brute-force
> the weakly generated 16-bit transaction identifier.
>
> Thanks,
> Ben Hawkes
Do you need a CVE # for this issue?

-- 

-Kurt Seifried / Red Hat Security Response Team

