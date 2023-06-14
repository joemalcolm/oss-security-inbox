X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/06/14/1
Message-ID: <ZIlQkTsEsfKbRus7@eldamar.lan>
Date: Wed, 14 Jun 2023 07:30:57 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Stack overflow in imagemagick coders/tiff.c
Content-Type: text/plain; charset=utf-8

Hi

On Mon, May 29, 2023 at 08:11:18AM +0000, Bastien Roucariès wrote:
> Hi,
> 
> Reading changelog and code of imagemagick, I want to report a stack overflow with crafted tiff file in imagemagick
> 
> Fixed (after 6.9.12-26) by:
> https://github.com/ImageMagick/ImageMagick6/commit/85a370c79afeb45a97842b0959366af5236e9023

CVE-2023-3195 has been assigned for this issue according to
https://bugzilla.redhat.com/show_bug.cgi?id=2214141 (not yet on
cve.org feed itself).

Regards,
Salvatore
