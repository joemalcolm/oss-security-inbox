Received: (qmail 13673 invoked by uid 550); 4 Jun 2026 23:46:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19879 invoked from network); 4 Jun 2026 23:02:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=who-t.net; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1780614121; x=1780700521; bh=RedUQO9ulB
	+25842HekweCpdcQoJhG3KQQZPr0x0Dok=; b=PNe7AcXEb1oACnMTola+n1klpy
	uf+zRNn/dEPkXwZhGU2RO8t2gluY3WokvFDtJdCRPJr9tR+KfM3Ibc64LMqTLs42
	v+5b6AdGd6SmXn2zzXoMxXpOHudvioYLygkfwcDBDnspB38SN32mJvB6QPmX7AbZ
	RUaXMwMBAY5CyWfBtYi68OC5LR8EyIAAsmDLwLAiI02Ar83pwPwG+rRewVzPf4rA
	WM4Ywd/qmrSoX/jaEN8iit/0X2N00SzjG9z55q17ybJYr5bSBQhrufkPag6NElVd
	9jcwWKm48NHyH9GOKzMX2wHeM0tRxcr25io6DgiPhsUPiybcOK3PtcAbeFjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1780614121; x=1780700521; bh=RedUQO9ulB+25842HekweCpdcQoJhG3KQQZ
	Pr0x0Dok=; b=Xd8SEya4QXqPLdMBsGZCJfHArQfojvhAKEqnPZBirogI1XyLg4E
	tbw3rMF27Db3NyY9RyyB+7xqhJedWzrKeg64FuGVsafzb2cmjMVCrELR83rWX5+x
	Vjs3P32qNbPiwaU2zaDs/k2WFjdJS15FXPB8ogivPTjrELIppeqHvu9EEVkXx9e8
	ERma7mt2EM9875jskzMPTAlo8Zttw+gnE0ZdpcvWcL1pKAX1g3EkdpgLthfcseTL
	00KXGt1psqsBAIPwjT5zjUDlfn45cdxuCFG8C0JTf35hFFGZnlgrJdqKviVuaggV
	R6up4A0UL1dOqMY4GX2Au+6XoMjVsFt5q+w==
X-ME-Sender: <xms:6QMiasFRwvhxem0hZNlSPdkxFVnqHYiStBGlwSBQI5FB64-lSRWmtA>
    <xme:6QMiasRJvOJETl-WVkBw4GMY-eaHieHY5cNhQQvsl2uZD-7X9x1I6pvP_3IA4olfk
    E6WiOP6DJ407HJJKjjDpfeXsnFUwd9qAZ_M96IvCrNjuRN2xE365ws>
X-ME-Received: <xmr:6QMiarzrQynX1kx_Mbhv1e3NjACwcKCu5FF_ULk1eXL8x-MJgTmnf1x2fpS-W9jVRdExDcsE-TENh1mU9giU6WUpq7vUM8WkHKYH>
X-ME-Proxy-Cause: dmFkZTGjU1gf157MRw6x6UMugRTDa8dg6Ao1uCzyQSoFoYcc5ELcWPdSKNNP4hg9X4Og5c
    WCPVW5p1qnGe01/XTh+cePF9ZmzX/mwC3Ds57KKacXIrtaw6T2X6cN1esTYHd1G9Svb+u6
    0/cCAgGotNkmUv68HIJVURM64C+Zz4Ze4ONm77WCPli6CTSEreFVwStEmQl7vluncjndfJ
    lqD7BW+i++Es4m0SP1i1q7dJT2AJL8mylQ2VMrQ/9gH+v4/dWbkJkdrFwWhzxspIPopU/p
    70V1eyFtK5LFg23p21GrmzfeVnnPgvTv3UJCY0wdUEfrNHMOaiOGIIqS1BTm8Cz8GH9VRh
    XftVyfpk5J36oPdWW4M5UZPrLK3QZYaBUHc5vJ1OYYuRXeD/IzKVDVzBIahWr1pb7MMRSS
    +xPUZWtLCnlM8AmCQ2HXDjyCAjpG0Qpjiu2e/6yY/8vvlnkibaninZUNQNmMgVXbhtyVpP
    h1hcM27vKSsabbGNaetHjLgIOpxDnGpS4sI+UbZHk3/iAEooJyNLTj/Z27OPnHlrnxaAUg
    xybRCkdveOfKtajCJ+QFBo6i3eoqBqGfkai8axYhzqnYM9PtFAkieqteF/RNJTtxJd58Ns
    +7zKYyMelOH1r672O6oph1o0TC2anLFUQPXnSCdB++NKSMRS0bJYKn1FSSFw
X-ME-Proxy: <xmx:6QMiajPIe1m4gF6S_25VS9SHqgbTTZnHX2Ejr7f8X2YdrLH42doTKg>
    <xmx:6QMiaiMFu7mxqcHkoY5S1lIK0sSqEIP5UqdoBWxWu5uAlt_HVIOGaw>
    <xmx:6QMiatSOLfMBn2lsdK7VmvqEtZVep00Jq-52N-_SVe_ht7DK1e0idQ>
    <xmx:6QMiasBRJwty_H8vI71z6D9gdtf4kSoA6yKcgRDupPO_3pNnWI1Xzg>
    <xmx:6QMialfsGu5EiU-hf1pC2Ganbcas2EteREbV02UATZ8YDjU_lnBinMhS>
Feedback-ID: i7ce144cd:Fastmail
Date: Fri, 5 Jun 2026 09:01:56 +1000
From: Peter Hutterer <peter.hutterer@who-t.net>
To: oss-security@lists.openwall.com
Message-ID: <aiIDm-A8A1xnH1j8@quokka>
References: <aiFPPUkZ63aDOdzD@quokka>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aiFPPUkZ63aDOdzD@quokka>
Subject: Re: [oss-security] libinput: libinput-device-group unescaped phys output can inject udev properties

On Thu, Jun 04, 2026 at 08:12:22PM +1000, Peter Hutterer wrote:
> =========================================
> libinput Security Advisory: June 4, 2026
> =========================================
> 
> An issue has been found in libinput:
> 
> 1) libinput-device-group unescaped phys output can inject udev properties
>    leading to arbitrary root code execution
> 
> libinput uses a udev helper called libinput-device-group. This helper uses a
> device's phys sysattr as one element of a udev property value which is printed
> as a KEY=VALUE pair and imported as ENV by udev.
> 
> A malicious uinput or uhid device that sets a phys sysattr containing \n caused
> the output to be interpreted as two separate KEY=VALUE pairs by udev. This could
> cause arbitrary execution as root (e.g. by setting the REMOVE_CMD property).
> 
> A CVE has been requested for this issue but did not get assigned in time for
> this disclosure.
> 
> Upstream issue: https://gitlab.freedesktop.org/libinput/libinput/-/work_items/1296
> Upstream fix: https://gitlab.freedesktop.org/libinput/libinput/-/commit/76f0d8a7f57e2868882864b4611281f12f704b55
> Versions affected: libinput <= 1.31.2 and <= 1.30.3
> Fixed versions: libinput 1.31.3, 1.30.4

This issue has now been assigned CVE-2026-50265

Cheers,
  Peter

