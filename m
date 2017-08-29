X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1429" "Tuesday" "29" "August" "2017" "15:49:46" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<3051527.WuieGNAktk@wanheda>" "33" "Re: [oss-security] A bunch of duplicate CVEs requested for?? bho.." "^Date:" nil nil "8" "2017082913:49:46" "[oss-security] A bunch of duplicate CVEs requested for?? bho.." (number mark "        ago@gentoo.o Aug 29   33/1429  " thread-indent "\"Re: [oss-security] A bunch of duplicate CVEs requested for?? bho..\"\n") "<6609652.OIiHvm4qLd@wanheda>" ("<6609652.OIiHvm4qLd@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5390 invoked by uid 550); 29 Aug 2017 13:50:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5365 invoked from network); 29 Aug 2017 13:50:00 -0000
Message-ID: <3051527.WuieGNAktk@wanheda>
In-Reply-To: <6609652.OIiHvm4qLd@wanheda>
References: <6609652.OIiHvm4qLd@wanheda>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 29 Aug 2017 15:49:46 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] A bunch of duplicate CVEs requested for?? bho..
To: oss-security@lists.openwall.com

Another recent example by owl337:
https://nvd.nist.gov/vuln/detail/CVE-2017-13737 which points to:
https://bugzilla.redhat.com/show_bug.cgi?id=1484196
There is an invalid free in the MagickFree function in magick/memory.c in 
GraphicsMagick 1.3.26 that will lead to a remote denial of service attack.


The maintainer of Graphicsmagick, Mr Bob Friesenhahn said to me:

"It looks like this problem is not a GM bug but it is already fixed in 
libtiff.  Using latest libtiff CVS sources I see this in the GM traces 
which are produced by libtiff:

08:41:48 0:01 0.000u 25164 tiff.c/unknown/2268/Coder:
   Allocating scanline buffer of 104 bytes
08:41:48 0:01 0.000u 25164 tiff.c/unknown/932/Coder:
   TIFF Warning: Discarding 89 bytes to avoid buffer overrun.
08:41:48 0:01 0.000u 25164 tiff.c/unknown/932/Coder:
   TIFF Warning: Discarding 16 bytes to avoid buffer overrun.
08:41:48 0:01 0.000u 25164 tiff.c/unknown/932/Coder:
   TIFF Warning: Discarding 1 bytes to avoid buffer overrun.
08:41:48 0:01 0.000u 25164 tiff.c/unknown/932/Coder:
   TIFF Warning: Terminating PackBitsDecode due to lack of data..
08:41:48 0:01 0.000u 25164 tiff.c/unknown/793/Coder:
   Not enough data for scanline 3. (PackBitsDecode)

I am not sure what libtiff Red Hat is using.  It may be that the 
changes are since the latest libtiff release.  I could help with that 
by making another libtiff release."

-- 
Agostino Sarubbo
Gentoo Linux Developer
