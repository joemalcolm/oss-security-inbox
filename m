X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/23/11
Message-Id: <201103231725.35626.ludwig.nussel@suse.de>
Date: Wed, 23 Mar 2011 17:25:35 +0100
From: Ludwig Nussel <ludwig.nussel@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- logrotate -- nine issues
Content-Type: text/plain; charset=utf-8

Ludwig Nussel wrote:
> Josh Bressers wrote:
> > We then will need to assign IDs for various broken uses of /var/log (If
> > someone has a list of the currently known ones, please pass it along)
> 
> AFAICS on openSUSE Factory we have
> cobbler

The cobbler daemon actually runs as root so having
/var/log/cobbler/* owned by the web service user is likely not only a
problem for logrote but also for cobbler itself when it opens files
there.

cu
Ludwig

-- 
 (o_   Ludwig Nussel
 //\
 V_/_  http://www.suse.de/
SUSE LINUX Products GmbH, GF: Markus Rex, HRB 16746 (AG Nuernberg)
