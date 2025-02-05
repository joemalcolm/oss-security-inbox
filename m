Received: (qmail 31802 invoked by uid 550); 5 Feb 2025 17:20:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22199 invoked from network); 5 Feb 2025 17:15:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1738775740;
	 x=1738862140; bh=b0hq64dWh94KC4/tEl0G279zEp1rbcGVQJnEpx6Q9po=; b=
	bxt25ng4j/5As9X/moSylxl/w05fEfS1GtPLKpKNG6KM1tCkpPcbMjn6JEdXgdJu
	li2x7lPW4GjyPgE5pZQ1b91BgTgJ3I/R0niz4UG5M4YSoXXXURX36m2r6gCcjn4w
	4+6NAjRiIYW5xm8qlzk8c+4ZU4xzl+CrUrTEpDrx9ntd4YN/E64pjjBGSi2P3omX
	Q0NyggNHR4UvQuu0byhKTgazXvsucjan2m8zMAppIp4lr1B3rtQdDEr6gvPb8ep8
	eIQN0enmNp6NPhRvxc9fpkUUAZSQYdxXJuXfHwNAstT0w4ZnQtfzjX12SCSo7mi8
	jdpG4AsS1nbkCoTZTi7Irw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1738775740; x=1738862140; bh=b0hq64dWh94KC4/tEl0G279zEp1rbcGVQJn
	Epx6Q9po=; b=Ip13Ay5H/NNVNqGc1PSX6IGFP7+yj106yzJVPXdxtAcIaxveTm9
	Wbs/+vG+o468nzyYIQ+cGHDKRMmDgMIsxQHsDzG2V6Bf4XJcBnMgU5qy/pDEYXIf
	GGezSnvmsvb9tHMSh6N7UY+WIeJ6KEb/p7vgcxJelP7cjViEiFul5q6YDkEp/0AV
	QQOUyM21wHFpicd4DxpiX664PG9n44yWU2qbQYsT8ZibWw0bgDOntd3KdTxdWOoU
	HtyJ6HSgMqMfM6ukmUMzRZ8NVkhIMqYpWncKKfbTYFVc5LqYujDoCN6ttY1rpX+0
	VUM3RKyLjOjB7rP5mP0/8XBynriyAEtZUhQ==
X-ME-Sender: <xms:u5yjZ2XbIyf_ghwDWxrPmWmdvTbcKjuMYTl92nL4ApQktcgXEiZS0Q>
    <xme:u5yjZylEcwDQxtqCOx3dLFzJPq6xC20LC1IDsTt4bm5rjL0T8LNWmQBe0n_cTIcBk
    QFmJPA5tRZmKLA>
X-ME-Received: <xmr:u5yjZ6YzfRsBhDXPzH1C6JCzIk673actfA4NsjHBP4G54aisPj7qT0gerFY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvgedtfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvden
    ucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhisehinhhvih
    hsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnhepffelvdel
    udethfeiveejfeeuiedvvdeltefhfeegjeduhedufeffjeelveehhfeunecuffhomhgrih
    hnpegtuhhrlhdrshgvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
    lhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomhdpnh
    gspghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdq
    shgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdprhgtphhtthhope
    gtuhhrlhdquhhsvghrsheslhhishhtshdrhhgrgiigrdhsvgdprhgtphhtthhopegtuhhr
    lhdqrghnnhhouhhntggvsehlihhsthhsrdhhrgiggidrshgvpdhrtghpthhtoheptghurh
    hlqdhlihgsrhgrrhihsehlihhsthhsrdhhrgiggidrshgv
X-ME-Proxy: <xmx:u5yjZ9WNoQaYU-kFTP60fzIRG3LPcvB4g227jV7m4p0rrIdxQvPraA>
    <xmx:u5yjZwmG1qo0VIXKdnBLoUBHOTNDj5vUGe0INX06NFw7xgcH9V5Jlg>
    <xmx:u5yjZyfE9Vgb-cGzV5vDWtRE965z26u2v5Ov4KI6Xl2sNtMaxuz6ug>
    <xmx:u5yjZyEgcccGwq9z44z0rHC7rFeTBq1e1UGJraTrQDlDuM-4aMb82w>
    <xmx:vJyjZxAyQHH68-wZwb3LeadzZ_Hqe6IgyaBIKWERVrRWj82zgQnJA0pn>
Feedback-ID: iac594737:Fastmail
Date: Wed, 5 Feb 2025 12:15:23 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com,
	curl security announcements -- curl users <curl-users@lists.haxx.se>,
	curl-announce@lists.haxx.se,
	libcurl hacking <curl-library@lists.haxx.se>
Message-ID: <Z6OcuMJupHURWFvR@itl-email>
References: <217qs799-s199-2990-25rr-p0385p14803o@unkk.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wk3gH9i5pKywGtan"
Content-Disposition: inline
In-Reply-To: <217qs799-s199-2990-25rr-p0385p14803o@unkk.fr>
Subject: Re: [oss-security] [SECURITY ADVISORY] curl: CVE-2025-0665: eventfd
 double close

--wk3gH9i5pKywGtan
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 5 Feb 2025 12:15:23 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com,
	curl security announcements -- curl users <curl-users@lists.haxx.se>,
	curl-announce@lists.haxx.se,
	libcurl hacking <curl-library@lists.haxx.se>
Subject: Re: [oss-security] [SECURITY ADVISORY] curl: CVE-2025-0665: eventfd
 double close

On Wed, Feb 05, 2025 at 09:21:39AM +0100, Daniel Stenberg wrote:
> eventfd double close
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Project curl Security Advisory, February 5th 2025 -
> [Permalink](https://curl.se/docs/CVE-2025-0665.html)
>=20
> VULNERABILITY
> -------------
>=20
> libcurl would wrongly close the same eventfd file descriptor twice when t=
aking
> down a connection channel after having completed a threaded name resolve.
>=20
> INFO
> ----
>=20
> This flaw requires libcurl to get built with the threaded resolver
>=20
> It requires that *eventfd* is used in the curl build. This feature is only
> used on 64-bit architectures.
>=20
> The eventfd socket is used for inter-thread messaging and since the
> communication was originally written to use `socketpair()` only, there wa=
s two
> `close()` calls done and the superfluous one was left accidentally used
> because of an `#ifdef` mistake.
>=20
> This bug was reported (and fixed) immediately after the 8.11.1 release, b=
ut
> the security impact was not considered until later. This bug causes libcu=
rl to
> act unreliably which many users will have noticed and either avoided even=
tfd
> or the vulnerable version, thus somewhat reducing the impact of this prob=
lem.
>=20
> It can also be worth noting that both `close()` calls are typically called
> within a few dozens of instructions, severely limiting the ability for an
> external party to control which other file descriptor this can be made to
> affect.
>=20
> This bug is **not** considered a *C mistake*. It is not likely to have be=
en
> avoided had we not been using C.

I think this is actually a C mistake.  In most higher-level languages,
it is idiomatic to use higher-level APIs that prevent closing the same
file descriptor multiple times, and Rust enforces this in the type
system.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--wk3gH9i5pKywGtan
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEopQtqVJW1aeuo9/sszaHOrMp8lMFAmejnLQACgkQszaHOrMp
8lP+aw/9G0CSIg6DzfYtUnc5SMvOpdwkbxHGir1fjKfhomH2PdYEJx8CzKtOyjwW
S3WjvaKYTytD41Jry1Uvt7m/7LAnC+RxwjuuHxBK73YhS+gDC2N0zwSBH4y2NTrJ
VsfXAbhrq9fjT4uJVPMzqou/+SjR472KUiJkv541ml/bv5tVfbvGPadstCvSG9Ac
7MOq+fHIu2t1RIhYa5vvXsfiMeftUS96srg2DXjYe3bW4a5IzDjVEudCHsGqmV6A
Y6d3MBgKVZ+LzrdvkuuDVeEyhJUzZrtoIy/kh9Si0LF0jyDyuYZa/QroDiGnPG+Y
ZcprvG9Boj7Nj0A+afn10RuJ4Pndgf2K0qVcskOLDcZM39RSX5fTDDKMCVz290Rb
ha4wDa89HtQ8OV1rPN2gdaKrxs+SKB2otXCZD1eIpJlLN5lsSivYgxKEVxCHCn/5
s7wyOcMduPEwJGGYCe9dU/btJ25nnT64ytINLOuwiHtKdMSpz4sP/tYfSOz/DnXg
VHoceW1tina6VtiJwer5OmaoTwjZZmS6tNjFUnPYd9BpO23I2+7oOdUbN1v0jTpU
SopMiFk/H4wG93zpvkDc46MnjgUhNYUbJt4Xmwcym2O6C5HiihRDjdDdiWMcJe6/
n3C+ddEg9DQW+/UpWB+4HGCPjzhwizfUCXTYe1SXKXRJdr/P7Gw=
=zqLX
-----END PGP SIGNATURE-----

--wk3gH9i5pKywGtan--
