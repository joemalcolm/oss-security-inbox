X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/08/12/7
Message-ID: <20110812213719.53839a8d@redhat.com>
Date: Fri, 12 Aug 2011 21:37:19 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- libgssapi, libgssglue -- Ability to load untrusted configuration file, when loading GSS mechanisms and their definitions during initialization
Content-Type: text/plain; charset=utf-8

On Mon, 25 Jul 2011 08:57:10 +0200 Sebastian Krahmer wrote:

> On Fri, Jul 22, 2011 at 03:56:22PM -0400, Josh Bressers wrote:
> > I presume this only needs one ID
> > 
> > Use CVE-2011-2709
> 
> You probably speak about:
> 
> http://www.suse.de/~krahmer/libs-vs-fscaps/

I believe Josh was referring to libgssapi and libgssglue mentioned in
the subject.  It's the same code in both, libgssglue is libgssapi
renamed.

Would you mind sharing the patch you used in SLE packages?  It does not
seem to have been fixed in OpenSUSE yet.  Thanks!

-- 
Tomas Hoger / Red Hat Security Response Team
