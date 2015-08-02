X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1684" "Saturday" "1" "August" "2015" "19:09:07" "-0500" "Mark Felder" "feld@feld.me" "<1438474147.2191174.345323673.28F8B482@webmail.messagingengine.com>" "47" "Re: [oss-security] CVE-2015-1416: vulnerability in patch(1)" nil nil nil "8" "2015080200:09:07" "[oss-security] CVE-2015-1416: vulnerability in patch(1)" (number mark "        feld@feld.me Aug  1   47/1684  " thread-indent "\"Re: [oss-security] CVE-2015-1416: vulnerability in patch(1)\"\n") "<87r3nmzks7.fsf@mid.deneb.enyo.de>" ("<55BA131C.20501@redhat.com>" "<1438436974.154880.345073153.04BE710A@webmail.messagingengine.com>" "<87r3nmzks7.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3178 invoked by uid 550); 2 Aug 2015 00:09:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3158 invoked from network); 2 Aug 2015 00:09:19 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=NCCFOnLOnMMg72xZEw5NiLuhCqE=; b=il/7hr
	EFsyeltw/nD6eqwOA6v8BQ/5uz9TSFB/r8gZjBFCRkRhvON5uHZ4l8mI8jXgaM62
	z9TK4rQeoYDtnFtHWXu2ug/kROe/3/OxcBwY0BDk3Q3GY6n4uejAG5kG0edIsOyD
	NNYY+WOJNxt8Wthvmn77yLAXovqJD+c9ZCeqw=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=NCCFOnLOnMMg72x
	ZEw5NiLuhCqE=; b=jVCrJiKK+W3mco3iwIRirbqvMD4CyMTAffaU16rOxd/MlxB
	KJPDCIf+YbBHE3cJfH5peAni01Q/e0E2IWfOfFz8bZTmYdr3hUCYqF3G7sgJj9qv
	O7HFSeLr/x42+GVSclLRVmOWnJksp9s7B7y3i6zUqMqWXu4sDwX0HvLejHGo=
Message-Id: <1438474147.2191174.345323673.28F8B482@webmail.messagingengine.com>
X-Sasl-Enc: CCwwpSSLarJXcl50D9NjkvV0YhVTozlXbApbxpcHuR5j 1438474147
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-63a5d8c6
In-Reply-To: <87r3nmzks7.fsf@mid.deneb.enyo.de>
References: <55BA131C.20501@redhat.com>
 <1438436974.154880.345073153.04BE710A@webmail.messagingengine.com>
 <87r3nmzks7.fsf@mid.deneb.enyo.de>
Date: Sat, 01 Aug 2015 19:09:07 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-1416: vulnerability in patch(1)
To: oss-security@lists.openwall.com



On Sat, Aug 1, 2015, at 17:49, Florian Weimer wrote:
> * Mark Felder:
> 
> > Which upstream? There are a few different flavors of patch(1) out there.
> > The one in FreeBSD is a variant of Larry Wall's patch, not GNU patch.
> 
> GNU patch is a variant of Larry Wall's patch, too.  I guess this makes
> FreeBSD (and OpenBSD?) patch and GNU patch siblings.

Aha, I see that mentioned under AUTHORS in GNU Patch's man page. This
piqued my interest, so I went down the following rabbit hole:

This fix in FreeBSD seems to have been sourced from Bitrig, the OpenBSD
fork:

https://svnweb.freebsd.org/base?view=revision&revision=285974

A quick glance shows the first parts of the vulnerability fix changes
code introduced by this commit, the actual initial import of this BSD
licensed patch to FreeBSD from DragonflyBSD. 

https://svnweb.freebsd.org/base?view=revision&revision=246074

Bitrig originally patched it here:

https://github.com/bitrig/bitrig/commit/84c2a000b0029c3a2fcb5040855434273530e478

DragonflyBSD removed this functionality entirely here:

https://github.com/DragonFlyBSD/DragonFlyBSD/commit/05172c8dd418493b9dd5ea9bf9cc684f3cf2e705

and then Bitrig did the same:

https://github.com/bitrig/bitrig/commit/d457d994c202c1bd6cc1483e6e3e48f27205e587

I checked and NetBSD patched it here:

http://cvsweb.netbsd.org/bsdweb.cgi/src/usr.bin/patch/inp.c?rev=1.24&content-type=text/x-cvsweb-markup&only_with_tag=MAIN

OpenBSD's patch was here:

http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.bin/patch/inp.c?rev=1.37.6.1&content-type=text/x-cvsweb-markup

As for GNU patch, looking in src/inp.c shows it has diverged a lot, but
I couldn't say if that makes it invulnerable.
