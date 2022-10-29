Received: (qmail 23608 invoked by uid 550); 29 Oct 2022 20:44:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11403 invoked from network); 29 Oct 2022 20:20:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667074790; x=
	1667161190; bh=cuzbOPxP9TYQ3nzkrifMeYW2qRa8aERKQS3fSBiyfuA=; b=k
	Y1ABBBGblkka2YRY5pmG7MIY42wzX8XVKFW2laie5jMyTY3MrdE6tsiCTo2i2MDE
	44ZETOoM/cAQ+7r2XrmGdsJRKOvGA7ak6r2okNxnhwreMvis1Qd5mJFToC9V9cd2
	zd/TG0gNS2iaAYDe04kp87o4kIsiyJKqfPGxbYPbmR+4JVKu1cScHW7LPl7/8/ja
	nR758CvXyUaLJQ0LbL/DlBUunl97dv+FjjO1DBor0fsgB29cGrvsU63qYDR/oL55
	UKpKsyZ4AurnRfLPx24kPcFMFh17mpMqOtygSp0FUdeVwN/SllB6g/lWsY4AfbDQ
	JBEAX/ibCro4Nj+0mqhoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667074790; x=1667161190; bh=cuzbOPxP9TYQ3nzkrifMeYW2qRa8
	aERKQS3fSBiyfuA=; b=HJmQfzhRRKma1uY7W/Rjh259O2jYWmCncv9a6i+itIVG
	Or+SiqEJjUalygUSspW3TLWnk8ajcBOURNWaUKMXKlvh/WW/MrU2z1kY8sqmGEEf
	el2aoI7RWm7C+JRWY3OwYMMw2K47od2Lt2V6UlIsG7q/jmjjujWF+Vdhv+WVz25f
	LTk181alK9OeGC6Wbama2qXgO5N8rTBO95S05bBGjg22+lXnU0Wm2c0oTjKuKqBN
	9LR5ckVLnxVqvvLZn+8A8vw/QmIqeCzIDrCfuA22RlutwfTjTRJ2n+Fm1AByPPss
	rKrHj8BvlRq2igw6oNG+baKLCPOIKAeqQixCMGVE8A==
X-ME-Sender: <xms:5opdY5mJlQBXwFbZrwDkXWttwkNz6ltz0GInUcYmM-MZiWA6iCNswg>
    <xme:5opdY00oTWiuvz4dnKEEYce1G81mllBg7JGOeJVrkqLb9W-53VM2BzZUFhOuYPGCL
    2Fqf4oWddxKV2s>
X-ME-Received: <xmr:5opdY_qua5-hwjCJq4Bhg_c14w1cSnnn04o6ZhixUuYcfaqfeeiG8MguVuNT>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdekgddugeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehgtd
    erredttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrh
    hnpeduieelfeeutedvleehueetffejgeejgeffkeelveeuleeukeejjeduffetjeekteen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmih
    esihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:5opdY5mIaf-E_SexnJySaeH1Cg7FLJah4-IJYeyPEPzzG6man2lMEw>
    <xmx:5opdY31j-GfEztiVeicXll7fmACZs0pd_fQpflEU3BXv_agXGU2Yfg>
    <xmx:5opdY4tGRwxJBdAV2x6fQy_L6dBcUcTeU_F9cXN-dU4wp6n5EpQWuw>
    <xmx:5opdY0_x_SYdjBlUdxVa5xTDREKL3WRUThk68_CAlob5nBYQ95-Cpg>
Feedback-ID: iac594737:Fastmail
Date: Sat, 29 Oct 2022 16:19:41 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, Roxana Bradescu <roxabee@chromium.org>
Cc: libressl-security@openbsd.org
Message-ID: <Y12K5FxvbPe4gpkU@itl-email>
References: <CAB=ivF85hhN73MbzdX9j72Vqa5pNuF-FVYZD9BToqRM1qPSx2g@mail.gmail.com>
 <E8ADE3CA-4D49-4149-808F-8EC94BF3502D@obtuse.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Cs+jo5GlHo2rN8rS"
Content-Disposition: inline
In-Reply-To: <E8ADE3CA-4D49-4149-808F-8EC94BF3502D@obtuse.com>
Subject: Re: [oss-security] Forthcoming OpenSSL Releases

--Cs+jo5GlHo2rN8rS
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 29 Oct 2022 16:19:41 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, Roxana Bradescu <roxabee@chromium.org>
Cc: libressl-security@openbsd.org
Subject: Re: [oss-security] Forthcoming OpenSSL Releases

On Sat, Oct 29, 2022 at 08:43:08AM -0400, Bob Beck wrote:
> Libressl is not vulnerable to the upcoming issue.=20

Is the same true for BoringSSL?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--Cs+jo5GlHo2rN8rS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmNdiuMACgkQsoi1X/+c
IsFIwg/+J+hkOp9NseFwabFGb5bwZ3ESKqE08k+TLUA8iG5aJJp5XaKW1QjHytCg
8AMKo01ZRvswEjsq+GUZN/cQp6iigBVPThqdkgIiJOCHls5QdNgv/MSClRgEaG3U
h+lE9/OqlFwC1U5Nn3lhYBhBmKjcfnU7cvGCcPubZM0ayUVSkYDACivgAO5IqhZa
gWJQJwQT4aNKo9tvMwu+ymuzXHfKzY+M0nqxLv7+GdP1IQyBRNkeP983UkRL2pWg
1oaGMfXLcFtbRAT1/fcfDp84LCh9JU5fKZ51fROMVpD+BNRpkZIDIVMVdohgeBTV
vd2gbWzLSkecxiEcTHW7Kjbo6e3M3G5qryZUDuF+UFZj1yLbzbyXwssqFio1y51O
Yn+uUep4/R70xn6OQmkxmiGlNwpY/GuSntrsFWdk6DaiLN8JfmlXP+86xLY3do8t
P850eKUdTW6SOOQJY2SUX9gCPIt7F605Cxcl2d69Ws84hk3OHa47FuPJiC5ke4Be
E/2knHWxid5M3jj00LSGhlKRBaoP2QJv9+K2zkx4wQ+MW2R2Kdz1E0v0AfEHzcfM
bjR4Z2jsYVmEjBoeQTI+vQWXfK1TDBOEOh5MokXAbeE8uzwr/2H5I416GOo2ZJaY
p1LOH9/hq8+4iL0AWtxzjn4lKH2wzxXzVd2YpVXO7FmJQH3v5R0=
=BU90
-----END PGP SIGNATURE-----

--Cs+jo5GlHo2rN8rS--
