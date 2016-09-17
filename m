X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["570" "Saturday" "17" "September" "2016" "12:50:41" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<3200281.PYQmTlBBlq@arcadia>" "19" "Re: [oss-security] Re: libav: NULL pointer dereference in put_no_rnd_pixels8_xy2_mmx (rnd_template.c)" nil nil nil "9" "2016091710:50:41" "[oss-security] Re: libav: NULL pointer dereference in put_no_rnd_pixels8_xy2_mmx (rnd_template.c)" (number mark "U       ago@gentoo.o Sep 17   19/570   " thread-indent "\"Re: [oss-security] Re: libav: NULL pointer dereference in put_no_rnd_pixels8_xy2_mmx (rnd_template.c)\"\n") "<20160917014919.76934B2E003@smtpvbsrv1.mitre.org>" ("<20160917014919.76934B2E003@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15403 invoked by uid 550); 17 Sep 2016 10:50:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15375 invoked from network); 17 Sep 2016 10:50:55 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Sat, 17 Sep 2016 12:50:41 +0200
Message-ID: <3200281.PYQmTlBBlq@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.20; x86_64; ; )
In-Reply-To: <20160917014919.76934B2E003@smtpvbsrv1.mitre.org>
References: <20160917014919.76934B2E003@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] Re: libav: NULL pointer dereference in put_no_rnd_pixels8_xy2_mmx (rnd_template.c)

On Friday 16 September 2016 21:49:19 cve-assign@mitre.org wrote:
> >> mpegvideo_motion: Handle edge emulation even without unrestricted_mv
> >> 
> >> Fix out of bounds read.
> >> 
> >> libavcodec/mpegvideo_motion.c
> 
> Use CVE-2016-7424.

I would like to mention that the upstream git commit is wrong.
This issue is a NULL pointer access and not an out-of-bounds

I already pinged an upstream developer to notify the discrepancy but I guess 
that their git does not allow to edit the message for the commit already 
pushed.

-- 
Agostino Sarubbo
Gentoo Linux Developer
