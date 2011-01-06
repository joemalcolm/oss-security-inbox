X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/06/5
Message-ID: <180567066.183928.1294315826808.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 6 Jan 2011 07:10:26 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: possible flaw in widely used strtod.c implementation
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> On Wed, Jan 5, 2011 at 8:23 PM, Pierre Joye <pierre.php@...il.com>
> wrote:
> > On Wed, Jan 5, 2011 at 5:52 PM, Michael Gilbert
> > <michael.s.gilbert@...il.com> wrote:
> >
> >> The fact that this bug can lead to a denial-of-service in PHP is
> >> sufficient to warrant a CVE for PHP, but nothing else (I think). If
> >> it
> >> can lead to a dos in other apps, then each should get their own CVE
> >> (again in my opinion).
> >
> > I think so too but in any case it would rock if I could get a CVE #
> > asap, we are going to release 5.2.17/5.3.5 tomorrow (packaging now).
> 
> Anyone?

Please use CVE-2010-4645

Thanks.

-- 
    JB
