X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/10/18/8
Message-Id: <201210181251.39653.mweckbecker@suse.de>
Date: Thu, 18 Oct 2012 12:51:39 +0200
From: Matthias Weckbecker <mweckbecker@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: ruby file creation due in insertion of illegal NUL character
Content-Type: text/plain; charset=utf-8

On Wednesday 17 October 2012 20:14:22 Simon McVittie wrote:
[...]
>
> For Perl, one possibility would be to continue to treat an input of
> "foo\0" as equivalent to "foo" (so that you can use "./ foo \0" to
> mean " foo ", as documented), but disallow NULs anywhere except the
> last position.
>

Although this is a very elegant solution it's on the other hand probably not
trivially implemented, because NUL is mostly treated as the end of a string.
Simply reading beyond it to check whether there is something else that might
need to be taken into account will likely result in more work for Kurt. ;-)

>     S

Matthias

-- 
Matthias Weckbecker, Senior Security Engineer, SUSE Security Team
SUSE LINUX Products GmbH, Maxfeldstr. 5, D-90409 Nuernberg, Germany
Tel: +49-911-74053-0;  http://suse.com/
SUSE LINUX Products GmbH, GF: Jeff Hawn, HRB 16746 (AG Nuernberg) 
