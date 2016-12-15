X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/15/2
Message-ID: <20161215053803.GA2527@lorien.valinor.li>
Date: Thu, 15 Dec 2016 06:38:03 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: Game Music Emulators: incorrect emulation of the SPC700 audio co-processor of SNES: arbitrary code execution via malformed SPC music file
Content-Type: text/plain; charset=utf-8

H,

On Thu, Dec 15, 2016 at 06:33:48AM +0100, Salvatore Bonaccorso wrote:
> Hi
> 
> As reported by Chris Evans via
> 
> http://scarybeastsecurity.blogspot.de/2016/12/redux-compromising-linux-using-snes.html
> 
> Incorrect emulation of the SPC700 audio co-processor of the Super
> Nintendo Entertainment System allows the execution of arbitrary code
> if a malformed SPC music file is opened.
> 
> Debian released a DSA for this issue (in the qemu-music-emu source
> package):

There is an obvious typo in the above, not qemu-music-emu, but
game-music-emu.

Regards,
Salvatore
