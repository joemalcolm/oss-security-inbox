X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/05/8
Message-ID: <AANLkTikfKh_2M7Stg9z0PJ0fz_nXq02Rnhh39kr=9Z87@mail.gmail.com>
Date: Wed, 5 Jan 2011 20:23:57 +0100
From: Pierre Joye <pierre.php@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: possible flaw in widely used strtod.c implementation
Content-Type: text/plain; charset=utf-8

On Wed, Jan 5, 2011 at 5:52 PM, Michael Gilbert
<michael.s.gilbert@...il.com> wrote:

> The fact that this bug can lead to a denial-of-service in PHP is
> sufficient to warrant a CVE for PHP, but nothing else (I think).  If it
> can lead to a dos in other apps, then each should get their own CVE
> (again in my opinion).

I think so too but in any case it would rock if I could get a CVE #
asap, we are going to release 5.2.17/5.3.5 tomorrow (packaging now).

Cheers,
-- 
Pierre

@pierrejoye | http://blog.thepimp.net | http://www.libgd.org
