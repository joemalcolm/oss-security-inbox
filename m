X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/07/09/9
Message-Id: <200807100050.45264.steffen.joeris@skolelinux.de>
Date: Thu, 10 Jul 2008 00:50:44 +1000
From: Steffen Joeris <steffen.joeris@...lelinux.de>
To: oss-security@...ts.openwall.com
Subject: CVE id request: libavformat
Content-Type: text/plain; charset=utf-8

Hi

There is a possible DoS in libavformat.

mplayer bugreport:
https://roundup.mplayerhq.hu/roundup/ffmpeg/issue311

The quote from the bugreport:
This has audio sectors mixed in with video sectors, so the check at 
psxstr.c:319 copies them onto the end of the video packet, going past 
the end of the buffer.

Upstream patch:
http://svn.mplayerhq.hu/ffmpeg/trunk/libavformat/psxstr.c?r1=13993&r2=13992&pathrev=13993

Debian bugreport:
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=489965

Could I get a CVE id for this?

Cheers
Steffen

Download attachment "signature.asc " of type "application/pgp-signature" (198 bytes)
