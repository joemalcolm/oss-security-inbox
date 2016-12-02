X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["821" "Friday" "2" "December" "2016" "19:16:04" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<3454029.yBeZ0OJpNZ@arcadia>" "22" "Re: [oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelGray (pixel-accessor.h) (Incomplete fix for CVE-2016-9556)" nil nil nil "12" "2016120218:16:04" "[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelGray (pixel-accessor.h) (Incomplete fix for CVE-2016-9556)" (number mark "U       ago@gentoo.o Dec  2   22/821   " thread-indent "\"Re: [oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelGray (pixel-accessor.h) (Incomplete fix for CVE-2016-9556)\"\n") "<5002229f1c1145cab231c07a2e1d43a2@imshyb02.MITRE.ORG>" ("<5002229f1c1145cab231c07a2e1d43a2@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30529 invoked by uid 550); 2 Dec 2016 18:14:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30511 invoked from network); 2 Dec 2016 18:14:53 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Fri, 02 Dec 2016 19:16:04 +0100
Message-ID: <3454029.yBeZ0OJpNZ@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
In-Reply-To: <5002229f1c1145cab231c07a2e1d43a2@imshyb02.MITRE.ORG>
References: <5002229f1c1145cab231c07a2e1d43a2@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelGray (pixel-accessor.h) (Incomplete fix for CVE-2016-9556)

On Friday 02 December 2016 13:07:34 cve-assign@mitre.org wrote:
> > https://blogs.gentoo.org/ago/2016/12/01/imagemagick-heap-based-buffer-over
> > flow-in-ispixelgray-pixel-accessor-h-incomplete-fix-for-cve-2016-9556
> > 
> > AddressSanitizer: heap-buffer-overflow
> > READ of size 4
> >
> >     #0 0x7f897b123266 in IsPixelGray
> >     ImageMagick-7.0.3-8/./MagickCore/pixel-accessor.h:507:30
> 
> Use CVE-2016-9773 for the vulnerability present in "an updated version
> which includes the fix for CVE-2016-9556."

The updated version which includes the fix for CVE-2016-9556 is 7.0.3.8 ( as 
stated under the affected version 'field'.

Anyway, upstream added a patch for this issue:
https://github.com/ImageMagick/ImageMagick/commit/4e8c2ed53fcb54a34b3a6185b2584f26cf6874a3

-- 
Agostino Sarubbo
Gentoo Linux Developer
