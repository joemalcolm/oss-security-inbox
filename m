X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["519" "Saturday" "1" "August" "2015" "08:49:34" "-0500" "Mark Felder" "feld@feld.me" "<1438436974.154880.345073153.04BE710A@webmail.messagingengine.com>" "20" "Re: [oss-security] CVE-2015-1416: vulnerability in patch(1)" nil nil nil "8" "2015080113:49:34" "[oss-security] CVE-2015-1416: vulnerability in patch(1)" (number mark "        feld@feld.me Aug  1   20/519   " thread-indent "\"Re: [oss-security] CVE-2015-1416: vulnerability in patch(1)\"\n") "<55BA131C.20501@redhat.com>" ("<55BA131C.20501@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11628 invoked by uid 550); 1 Aug 2015 13:49:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11599 invoked from network); 1 Aug 2015 13:49:48 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=qUTRiqpSeV93Pn9UdBsLnnJ5Go0=; b=qxbMKP
	X7fpjCYvMswRQ8x5yPh7IykxUak1+sezYqP5yRov7BKxGFpePvHAqD8ZooLWdBl+
	mDk3Nc1zGOpoxB4hqUvsEmMtBgUwXm1LJrdQFuEIrKJNg9OcdOczsMdP3+6kIkek
	x3gHbHGck+NXTavrYu4uKTNVmCz09DdgpWgcQ=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=qUTRiqpSeV93Pn9
	UdBsLnnJ5Go0=; b=MG13esVfAD/kx2+hpkRyZNaTVNyQOQAA/TTBOc7Lop+n+Mk
	kdeb2JjrUPqTtqmYjF1V5QsPpgbarRJcsWqx8z9bjcRdw9YRBM8trxQrNQt72X+t
	WB+BSYKzHNkLaTlHSRDVSJMBXNOJhS5a8lQSS2NgQrQNqszXuC3OTbB+ZbBI=
Message-Id: <1438436974.154880.345073153.04BE710A@webmail.messagingengine.com>
X-Sasl-Enc: H77H6sCQcTWCRPXJFPrz6bmTe4WvFqT1julw1I4au3zm 1438436974
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-63a5d8c6
In-Reply-To: <55BA131C.20501@redhat.com>
References: <55BA131C.20501@redhat.com>
Date: Sat, 01 Aug 2015 08:49:34 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-1416: vulnerability in patch(1)
To: oss-security@lists.openwall.com



On Thu, Jul 30, 2015, at 07:05, Adam Maris wrote:
> Hello,
> 
> I'd like to know whether CVE-2015-1416 is BSD-only issue 
> (https://www.freebsd.org/security/advisories/FreeBSD-SA-15:14.bsdpatch.asc) 
> or does it also affect upstream patch(1) utility?
> In that case, is it tracked in upstream?
> 
> Thank you
> 
> -- 
> Adam Maris / Red Hat Product Security
> 

Hi Adam,

Which upstream? There are a few different flavors of patch(1) out there.
The one in FreeBSD is a variant of Larry Wall's patch, not GNU patch.
