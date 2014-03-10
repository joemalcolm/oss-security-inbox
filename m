X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/10/2
Message-ID: <CAA7hUgGcqQ30xJ_u5LadTO-Z=3nh1dbyDRUq5xS5fo3R7naoVQ@mail.gmail.com>
Date: Mon, 10 Mar 2014 16:31:33 +0100
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Two stack-based issues in freetype [NOT a request]
Content-Type: text/plain; charset=utf-8

Hi,

Just a heads up as I've not seen this issue anywhere. There is an
"Out-of-bounds stack-based read/write in cf2_hintmap_build" in freetype

If I understood things correctly, CVE-2014-2240 is:
https://savannah.nongnu.org/bugs/?41697#comment0
http://git.savannah.gnu.org/cgit/freetype/freetype2.git/commit/?id=0eae6eb0645264c98812f0095e0f5df4541830e6

While CVE-2014-2241is:
https://savannah.nongnu.org/bugs/?41697#comment2
http://git.savannah.gnu.org/cgit/freetype/freetype2.git/commit/?id=135c3faebb96f8f550bd4f318716f2e1e095a969

Release notes:
http://sourceforge.net/projects/freetype/files/freetype2/2.5.3/

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
