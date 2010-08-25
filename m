X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/25/5
Message-ID: <1207142256.261621282746177336.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 25 Aug 2010 10:22:57 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: pierre php <pierre.php@...il.com>, Thomas Biege <thomas@...e.de>, Moritz Muehlenhoff <jmm@...ian.org>, "Steven M. Christey" <coley@...us.mitre.org>, Tomas Hoger <thoger@...hat.com>
Subject: Re: CVE request: PHP MOPS-2010-56..60
Content-Type: text/plain; charset=utf-8

Please use CVE-2010-2950

Thanks.

-- 
    JB


----- "Steven M. Christey" <coley@...us.mitre.org> wrote:

> On Tue, 24 Aug 2010, Tomas Hoger wrote:
> 
> > Standard practice is to use new CVE.  As all 5 phar MOPS were
> covered
> > under single CVE, and not all of them were fixed in 5.3.3, I'd
> expect a
> > new "incomplete fix" CVE.
> 
> That's appropriate in this case.  I'll let Josh assign a CVE to avoid
> the 
> possibility of dupes.
> 
> General practice (subject to modification on a case-by-case basis)
> is:
> 
> - issue was never fixed and never claimed to be fixed: use original
> CVE
>    (probably triggers an update to description for affected versions)
> 
> - issue was claimed fixed but the fix was incomplete: use new CVE
> 
> - issue was never fixed but claimed to be fixed: ??? (it's happened a
> few
>    times)
> 
> 
> 
> - Steve
