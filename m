X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/03/03/9
Message-ID: <20150303182658.GA13127@eldamar.local>
Date: Tue, 3 Mar 2015 19:26:58 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Cc: CVE Assignments MITRE <cve-assign@...re.org>
Subject: Re: Possible CVE Requests: libmspack: several issues
Content-Type: text/plain; charset=utf-8

Hi MITRE CVE assignment team,

On Sun, Feb 22, 2015 at 07:55:55PM +0100, Moritz Mühlenhoff wrote:
> On Tue, Feb 03, 2015 at 04:52:05PM +0100, Salvatore Bonaccorso wrote:
> > Hi
> > 
> > Several issues with the libmspack library were reported recently in
> > the Debian bugtracker by Jakub Wilk. An (older) copy of libmspack is
> > also embedded in ClamAV (not verified if this version is also affected
> > by these issues).
> > 
> > The reported bugs are the following:
> > 
> > null pointer dereference on a crafted CAB:
> >  - https://bugs.debian.org/774665
> > 
> > CHM decompression: division by zero
> >  - https://bugs.debian.org/774725
> > 
> > CHM decompression: pointer arithmetic overflow
> >  - https://bugs.debian.org/774726
> > 
> > off-by-one buffer over-read in mspack/mszipd.c
> >  - https://bugs.debian.org/775498
> > 
> > off-by-one buffer under-read in mspack/lzxd.c
> >  - https://bugs.debian.org/775499
> > 
> > CHM decompression: another pointer arithmetic overflow
> >  - https://bugs.debian.org/775687
> > 
> > Could CVEs be assigned for these issues?
> 
> This seems to have fallen through the cracks.

Can you assign CVEs for these issues, or is there anything more
needed? 

Regards,
Salvatore
