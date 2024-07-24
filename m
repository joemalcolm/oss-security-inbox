Received: (qmail 7879 invoked by uid 550); 24 Jul 2024 19:24:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5158 invoked from network); 24 Jul 2024 19:22:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1721848966;
	 x=1721935366; bh=WEA8o8hNLyxbT3etOtC7FAbl25pySCUmliJobqGVB7g=; b=
	aVjIyTNX58p15v2GWGV9kQdp1wr+CsLk/kOVFjTsfGUj8LkjN9p27QWyEtBZhFiR
	zZ1sa0CRqE64FYLn3bAfMqo0yEG+/ZgBOpCzkbNlR3Uclt9Hfw/L7gD0Eww24I7e
	y8UsSl2F3XleobwjcIzQENFpl/Bavu5T9znrVMe59FLu2COLfcxiJ7M0J2nctuWW
	XZ29O0vrqGXfUUePtHR7rhlaTXLh21xrDavP54nF/dRBhaToGQlEsA84nN+I3xHp
	o2/n2t99PnOzOZ4jQFXmBASk2ZB/pMPTHavEfiAkQhTuvp8o7kELHatmV90R/P66
	8tCfvFukhI4Cv/vVaX82PA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1721848966; x=1721935366; bh=WEA8o8hNLyxbT3etOtC7FAbl25py
	SCUmliJobqGVB7g=; b=SS1S3uLirKHbxZhp58TenWZ2nJ2gPVQXbwuuMQ+oJyi1
	dJVJyd0+DbX5SpzOLkKXjOupdF3Ke+bOnMfYBf1n/j/fFukOfiLYdWB7lWi8EtK1
	pDPKqStN8VnPXvCBAFr6Uj7tp/nvNDLeZEgcXxsEleN+x0fXwh+1AicPOm3h9QgZ
	eW24d9fexCMpDgMmlp6KLwAWJQMZKWJn2sI6vtKaD1u+5Mr0H1fNWIOAExzv4/5u
	LmH4PRJsoxJBcaiJyH8G9J/8jSKOzlTVQvaSiqdbl9s51Cg2HZ5NTRdduZWv9usn
	r7Dj20XtxE4GatC4PxcCSQXY6bPlNxV7WtRte9egkA==
X-ME-Sender: <xms:hVShZoS72TKgAVd9DWJ5DIdbIvGnjNrgycuLs8RY6STkA8dhZb6wxg>
    <xme:hVShZlyL0-I2jDQAfMFM9OWIb06e6dNy_Ob_FwLrxvUdNyB_A8dt7J6F1pTpAD0Hd
    JGXqwonW0vLgp4>
X-ME-Received: <xmr:hVShZl1Wd9vx-6uqbW0whKdze8lXh_zjxZz8PLT5NzIOq85NPOBy61GtjcQuXMmMr4aDlmfINNagXcClTuhdPqRZroRk_EbiCvYhU61WitkQtlhl>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddriedugddufeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeffvghmihcu
    ofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihesihhnvhhishhisghlvghthhhinhhgsh
    hlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpeevleelheeiieegiefhjeeuvefhffdv
    ffefveduvdfgieegfefgleekvefhieehffenucffohhmrghinheptghurhhlrdhsvgdpgh
    hithhhuhgsrdgtohhmpdhhrgiggidrshgvnecuvehluhhsthgvrhfuihiivgeptdenucfr
    rghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhslh
    grsgdrtghomhdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:hVShZsC_BjIvJSWyi29Nb3VJaH_cG8PJWt6FAmXcZj52GBxkDzc9SQ>
    <xmx:hVShZhjpad58F4LrYEwVv15W-pT0VqEA-qyUUkz_I6Uaw8H2nMmJOQ>
    <xmx:hVShZoprig3WPt0TVSh74pkBZ1guAF2WaWOCGlHjdBnwZn6g404-6A>
    <xmx:hVShZkhXY2K06WQ0nrp6OVDhnVWds80fXh-HXXNn-i73qBY5KQ6-GQ>
    <xmx:hlShZmv4PN4VRSgpwAbX2n37wWqtrCMJdFOHwA_G-W70aCuZu7u1Vo5s>
Feedback-ID: iac594737:Fastmail
Date: Wed, 24 Jul 2024 15:22:21 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com,
	curl security announcements -- curl users <curl-users@lists.haxx.se>,
	curl-announce@lists.haxx.se,
	libcurl hacking <curl-library@lists.haxx.se>
Message-ID: <ZqFUgmWiagpKt_HI@itl-email>
References: <s9890o96-qqoo-7536-q2pp-po275s8rsnon@unkk.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+AVcCq75PimAVoFE"
Content-Disposition: inline
In-Reply-To: <s9890o96-qqoo-7536-q2pp-po275s8rsnon@unkk.fr>
Subject: Re: [oss-security] [SECURITY ADVISORY] curl: CVE-2024-6197: freeing
 stack buffer in utf8asn1str

--+AVcCq75PimAVoFE
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jul 2024 15:22:21 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com,
	curl security announcements -- curl users <curl-users@lists.haxx.se>,
	curl-announce@lists.haxx.se,
	libcurl hacking <curl-library@lists.haxx.se>
Subject: Re: [oss-security] [SECURITY ADVISORY] curl: CVE-2024-6197: freeing
 stack buffer in utf8asn1str

On Wed, Jul 24, 2024 at 08:34:35AM +0200, Daniel Stenberg wrote:
> freeing stack buffer in utf8asn1str
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Project curl Security Advisory, July 24th 2024 -
> [Permalink](https://curl.se/docs/CVE-2024-6197.html)
>=20
> VULNERABILITY
> -------------
>=20
> libcurl's ASN1 parser has this utf8asn1str() function used for parsing an
> ASN.1 UTF-8 string. It can detect an invalid field and return error.
> Unfortunately, when doing so it also invokes `free()` on a 4 byte local s=
tack
> buffer.
>=20
> Most modern malloc implementations detect this error and immediately abor=
t.
> Some however accept the input pointer and add that memory to its list of
> available chunks. This leads to the overwriting of nearby stack memory. T=
he
> content of the overwrite is decided by the `free()` implementation; likel=
y to
> be memory pointers and a set of flags.

Which implementations are known to deterministically abort immediately?
This determines if this is denial of service only or if it could lead to
code execution.

> The most likely outcome of exploting this flaw is a crash, although it ca=
nnot
> be ruled out that more serious results can be had in special circumstance=
s.
>=20
> INFO
> ----
>=20
> The vulnerable code path can be triggered by a malicious server offering =
an
> especially crafted TLS certificate.
>=20
> This bug was introduced in a code refactor shipped in the curl 8.6.0 rele=
ase
> and is considered a *C mistake* (likely to have been avoided had we not b=
een
> using C).
>=20
> This flaw also affects the curl command line tool.
>=20
> The Common Vulnerabilities and Exposures (CVE) project has assigned the n=
ame
> CVE-2024-6197 to this issue.
>=20
> CWE-590: Free of Memory not on the Heap
>=20
> Severity: Medium
>=20
> AFFECTED VERSIONS
> -----------------
>=20
> The vulnerable code can only be reached when curl is built to use GnuTLS,
> wolfSSL, Schannel or Secure Transport. Builds using other TLS backends ar=
e not
> vulnerable.
>=20
> - Affected versions: curl 8.6.0 to and including 8.8.0
> - Not affected versions: curl < 8.6.0 and >=3D 8.9.0
> - Introduced-in: https://github.com/curl/curl/commit/623c3a8fa0bdb2751f1
>=20
> libcurl is used by many applications, but not always advertised as such!
>=20
> SOLUTION
> ------------
>=20
> - Fixed-in: https://github.com/curl/curl/commit/3a537a4db9e65e545
>=20
> RECOMMENDATIONS
> ---------------
>=20
> We suggest you take one of the following actions immediately, in order of
> preference:
>=20
>  A - Upgrade curl and libcurl to version 8.9.0
>=20
>  B - Apply the patch to your version and rebuild
>=20
>  C - Build your libcurl with an unaffected TLS backend
>=20
> TIMELINE
> ---------
>=20
> This issue was reported to the curl project on June 19, 2024. We contacted
> distros@openwall on July 15, 2024.
>=20
> curl 8.9.0 was released on July 24 2024 around 06:00 UTC, coordinated with
> the publication of this advisory.
>=20
> CREDITS
> -------
>=20
> - Reported-by: z2_
> - Patched-by: z2_
>=20
> Thanks a lot!
>=20
> --=20
>=20
>  / daniel.haxx.se
>  | Commercial curl support up to 24x7 is available!
>  | Private help, bug fixes, support, ports, new features
>  | https://curl.se/support.html

--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--+AVcCq75PimAVoFE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmahVIIACgkQsoi1X/+c
IsFEFA/9Faqh4VNE5yQyA/PDpXO1dDfadwPdM7w5uD8We10LndwNq7VhGD/jnhPb
kpTfRGIl+za19hJBOu/ZbE3abpAIHzX14elF2Yr7VOhnbYseREsnV3bYFM/JOSKI
3h9KgfiPch8RQNj+7N0jYEngi5UBc8IANwuOQYsgbUb3bUKmNur855MC5bSc23fb
rjr1xmUqXLFR0G1xl9uUrdJM8GZlkWe/N+wJNt9DLyEtuva8dHgQGhbBpPOKFpVh
7dOXG6WZeJSeeIWx0zROSAjpGBfVDvO+AvYIg6JRgqpP5/8Lyi9AlgI7XtP9pkdb
ya4KR742G/FOhqJESOFhY+QqSpJJvymjFnBjSS4toCxS7s9dQoTSnkMVMI1Phexd
TLRBVc+dPq7RZs/A5cjKVVWNBWEZPTT6ovRCffE3tlidOuBoF1EzGg3nTuEZbi5Z
bQvBNbJmthCseg2wZsWUytxC3/dChdO2r2LCn5uRVJG4BjQvpvpYuJiGyRfRA9Fd
jhtkq5Sus1uTVmc0d46HQTTNcmNF0x/TjUWwWFrlrSh1N7F2WMwZx7JkH8s0avlK
ViS0/Jsywh8V4/c6Mji+Sydk2LBT2wtMkkeGkI+MX/Iy1jhscpvyRItSLaYe+/XQ
3Bu7pnOXiZe1mIgL4C8/Wa+YhEk/GAVx/6sQE9F3zUeH2lbYZ5I=
=nM/9
-----END PGP SIGNATURE-----

--+AVcCq75PimAVoFE--
