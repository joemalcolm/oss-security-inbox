X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/15/1
Message-ID: <20161215053348.5sioflbygm3ba3h5@lorien.valinor.li>
Date: Thu, 15 Dec 2016 06:33:48 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: CVE Request: Game Music Emulators: incorrect emulation of the SPC700 audio co-processor of SNES: arbitrary code execution via malformed SPC music file
Content-Type: text/plain; charset=utf-8

Hi

As reported by Chris Evans via

http://scarybeastsecurity.blogspot.de/2016/12/redux-compromising-linux-using-snes.html

Incorrect emulation of the SPC700 audio co-processor of the Super
Nintendo Entertainment System allows the execution of arbitrary code
if a malformed SPC music file is opened.

Debian released a DSA for this issue (in the qemu-music-emu source
package):

https://lists.debian.org/debian-security-announce/2016/msg00318.html

Could you please assign a CVE for this issue.

Regards,
Salvatore
