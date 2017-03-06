X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/03/06/4
Message-ID: <20170306153855.7eb0672f@redhat.com>
Date: Mon, 6 Mar 2017 15:38:55 +0100
From: Tomas Hoger <thoger@...hat.com>
To: Emilio Pozuelo Monfort <pochu27@...il.com>
Cc: oss-security@...ts.openwall.com, Anthony Sasadeusz <sasadeu1@...c.edu>
Subject: Re: CVE-Request JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)
Content-Type: text/plain; charset=utf-8

On Mon, 6 Mar 2017 09:06:00 +0100 Emilio Pozuelo Monfort wrote:

> > This also happens on the latest master branch.
> > The repo: https://github.com/mdadams/jasper
> > 
> > Crashing inputs found with afl:
> > https://github.com/nullsector/jasper-fuzz/tree/master/testcases/crashes  
> 
> You should request CVEs at http://cveform.mitre.org/ these days.
> 
> Also it'd be good if you opened an upstream bug report about this.

Looks like that was already done:

https://github.com/mdadams/jasper/issues/120

-- 
Tomas Hoger / Red Hat Product Security
