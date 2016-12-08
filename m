X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["544" "Thursday" "8" "December" "2016" "12:14:43" "-0800" "Ian Zimmerman" "itz@primate.net" "<20161208201200.25774.134A28B2@matica.foolinux.mooo.com>" "16" "[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelMonochrome (pixel-accessor.h)" nil nil nil "12" "2016120820:14:43" "[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelMonochrome (pixel-accessor.h)" (number mark "U       itz@primate. Dec  8   16/544   " thread-indent "\"[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelMonochrome (pixel-accessor.h)\"\n") "<20161016024535.717936C0D4B@smtpvmsrv1.mitre.org>" ("<1975736.yU59nFIvqB@arcadia>" "<20161016024535.717936C0D4B@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7997 invoked by uid 550); 8 Dec 2016 20:32:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18141 invoked from network); 8 Dec 2016 20:15:08 -0000
X-Authentication-Warning: acedia.primate.net: itz set sender to itz@primate.net using -f
Date: Thu, 8 Dec 2016 12:14:43 -0800
From: Ian Zimmerman <itz@primate.net>
To: oss-security@lists.openwall.com
Message-ID: <20161208201200.25774.134A28B2@matica.foolinux.mooo.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <1975736.yU59nFIvqB@arcadia>
 <20161016024535.717936C0D4B@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161016024535.717936C0D4B@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelMonochrome
 (pixel-accessor.h)

On 2016-10-15 22:45, cve-assign@mitre.org wrote:

> > https://blogs.gentoo.org/ago/2016/10/07/
> > imagemagick-heap-based-buffer-overflow-in-ispixelmonochrome-pixel-accessor-h/

> Use CVE-2016-8678.

Since there seems to be at least a bit of controversy about this, I
think a pointer to the upstream issue may be helpful:

https://github.com/ImageMagick/ImageMagick/issues/272

-- 
Please *no* private Cc: on mailing lists and newsgroups
Personal signed mail: please _encrypt_ and sign
Don't clear-text sign: http://cr.yp.to/smtp/8bitmime.html
