X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3341" "Wednesday" "17" "February" "2016" "19:37:57" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<1455755877.23003.33.camel@gmail.com>" "80" "Re: [oss-security] Address Sanitizer local root" "^Date:" nil nil "2" "2016021800:37:57" "[oss-security] Address Sanitizer local root" (number mark "        danielmicay@ Feb 17   80/3341  " thread-indent "\"Re: [oss-security] Address Sanitizer local root\"\n") "<1455754125.23003.18.camel@gmail.com>" ("<20160217221921.GB24130@port70.net>" "<1455754125.23003.18.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21924 invoked by uid 550); 18 Feb 2016 00:38:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21900 invoked from network); 18 Feb 2016 00:38:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:date:in-reply-to:references:content-type
         :mime-version;
        bh=D4fAkJXg7QCCYAYNgKjP1LD1jsS+aTsMBeNmmraHQ90=;
        b=QPF63r9pw00FfDnWjsT576LFk+IiOaqSs6mgfSeiOowlGqOfZ47x87gWs6WkO1dDDY
         At4wRNfT/bLbKTar6BoQra8k1c97rxmZZkCklFwROyRE8ZR+eo2pEeqlcXNwVTiDXMNl
         BrsJFMKBgqg13nBeySr0JycRlGoYL2JuSJmcxcQRD4MZRFQ+RkkhMwBWmQi/G0i41+ig
         +BPXjHz/cAGbfzqE6HcUg8XnIwGVVevhx/28a2EC4YQ6p6xKYCnZxyavb/Pzp5PyLq3T
         3QDzNoHLMdaUO/Rxnze33mI3nufW3o5wmsXpbcqoO3RojaSbyzGjJVQdDJhT481HBplz
         1EBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-type:mime-version;
        bh=D4fAkJXg7QCCYAYNgKjP1LD1jsS+aTsMBeNmmraHQ90=;
        b=Yhd9H7CzWt253kDUV2Egr96oXM9ER4rJL5viv3r7ZPa00+Nc5YhoNn4hWtjq5wNx0N
         mEmCLz++uTn62R3TcIRBRGDF3kp1xC248HM662TjGk6jVyEc/UTZJT3T8Yo3onR/K/3R
         9df9tB3D1gNxJCl5NMCgI+hs83WjHZJThmst3mdpNB5HiiREA+vBbrHepTkVb4XvX8EA
         pxLyZqIolDheoIX0/3u3AHJpULMQM2KelA0g7qvgmZKIjfY2LLgrsERy8N5wrM4t1Mre
         fx/z8ZuuqWTF1cIOk2b/2tZX8i5XdLVR/Dew5FnuNBkt97lXT3uiUvVrs4z5hsXBeWix
         z57w==
X-Gm-Message-State: AG10YOSUTk5VxLJm4RcIP+DbrVay3S9hZOYhzo3FEhX04+VTDDNEGff/DtJjg1UkFOyJ7w==
X-Received: by 10.140.181.130 with SMTP id c124mr5864286qha.75.1455755889275;
        Wed, 17 Feb 2016 16:38:09 -0800 (PST)
Message-ID: <1455755877.23003.33.camel@gmail.com>
In-Reply-To: <1455754125.23003.18.camel@gmail.com>
References: <20160217221921.GB24130@port70.net>
	 <1455754125.23003.18.camel@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-0ZDkXOWkWXEqj++B7pge"
X-Mailer: Evolution 3.18.5 
Mime-Version: 1.0
Date: Wed, 17 Feb 2016 19:37:57 -0500
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Address Sanitizer local root
To: oss-security@lists.openwall.com

--=-0ZDkXOWkWXEqj++B7pge
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> The use-after-free and double-free detection is based on the same
> quarantine technique in Valgrind. It can only detect the issues before
> allocations are flushed out of the quarantine by memory pressure. It
> does mitigate many vulnerabilities but comparable double-free
> detection
> could be done in malloc without the drawbacks (two flat arrays
> providing
> a ring buffer for a FIFO quarantine + a hash table). The same thing
> applies to write-after-free but not use-after-free, since that would
> require instrumentation in the code. A write-after-free can be
> detected
> by filling allocations with junk and then checking for it when it's
> flushed from the quarantine rather than instrumentation. It doesn't
> need
> to do the whole allocation to be useful, so there's a large range of
> tuning for performance. The junk data could come from a stream cipher
> seeded from the address if desired, but it doesn't seem important.

There's an initial implementation of this in CopperheadOS if anyone is
curious about it.

FIFO quarantine:

https://github.com/CopperheadOS/platform_bionic/commit/bf8248f5644bc5f1fef3=
6e8d9fd011334d08b994

Double-free detection via an open-addressed hash table:

https://github.com/CopperheadOS/platform_bionic/commit/aa2038b668ace4546207=
e674850abbb3d6e1f392

Junk validation (upstreamed):

https://github.com/robertbachmann/openbsd-libc/commit/00d2b970cb5791312ff38=
817feb1f8e015cca564

Remaining portion of the junk validation feature:

https://github.com/CopperheadOS/platform_bionic/commit/49fb2a0464a3e93fcf13=
8802b1691dcccc4816f7

It would mix well with a dynamic bounds checking implementation like
Intel MPX since it covers the lifetime issues fairly well. There would
need to be the ability to extend the default quarantine size to make it
more useful but that's simple enough. There's also the standard OpenBSD
randomized quarantine, which it doesn't interfere with. Detecting read-
after-free beyond cases where a pointer to protected data (from the junk
filling) will guarantee =C2=A0a crash really needs some form of hardware
acceleration too. I think the cost of having huge memory usage via
enormous deterministic mappings is too high.=

--=-0ZDkXOWkWXEqj++B7pge
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWxRJlAAoJEPnnEuWa9fIqj14P/0ECaCiNISZvHvUuBRFpJ7lL
aKcFtYRnnidP9p7+EONMH941Wdu7yUUdnTCUIwGUbMpHpq1hYWpFNKhgNzJZGPbd
+kE7LdCeUAVeuWtMAC9DTCMiYU1OTDg3itU8zlv4AW0Rev9aswYdo+aTr9W6ibJz
EKjL6TTVLV5t4Mnbtfw8MtzUuSJrGuy+qpv41dz3ZiI5MM+Sxn6DiqqpIIrOoW2t
w1Xa//Qwqgtw2Sv5y6katN3k/zaLboXVwXMFMormmhblcDwdV0dYKR4T97stMpCR
mVm9jKShRn3oxSsqZHitVg/J6o4gWFYOI70Ltzqoz/u+jVENm+g9pkTqFg+/E9LE
eMskMi+ZJnZCN7HpZqeyXUkxs2IL5PK13rX2dTmubqZKyLTOAwPJb0RvOQZ8/Vi7
Sr5y6GqZhAYn/ii4tLuNc+abRLYELcw3Ir9RrXNH1UwF1U33Y1jnEDtKX0N34Ib1
AK1iof2Sj8NI2hLMvOqz8bx4CkB0gexsxTNyPrcSPJ3hiLudL5VQ4yWAVq0+7lQ9
8z89azHvoa2VweABlBysbZ/ka6F4ygHS9gWc8jZLBzgdrLDB1hxFhDpSRE64c4+q
74SNxB0wTk40ocl+bXf+TzNWOD0A2bhCK0teWgeG7s6Wr+jmr04XKcf0Lf4LEi10
JRoVXz1SPKcckPYkudXH
=nvW9
-----END PGP SIGNATURE-----

--=-0ZDkXOWkWXEqj++B7pge--

