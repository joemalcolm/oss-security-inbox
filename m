Received: (qmail 5614 invoked by uid 550); 8 Aug 2022 20:14:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27844 invoked from network); 8 Aug 2022 19:51:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1659988305; x=
	1660074705; bh=DRD7O9uOJGV5QS7nFCIzvkkOwm9WVtI2yljTyhspt6w=; b=z
	28jrpivMQRzXPNtD9SYnZjzCwHFtwvsdAY26GGz2X+kUJA1iwwxJp6z0mdi0+CoG
	Q3/TbMVWUwopR57j8Nwifm1dd3XS4UxR6904ampCDMdHl9X/QdjMtvb0bCC2cJdC
	i1NZIWkn2C+RObTeWUmSeaqrTZda1z08JiBLDNAUxHOVme8EaDAXDlvY3ZKkN7T1
	u5I1/1uu443xj8IRpHqIbf01N7kbxRL5D16BgYWRb2IFSKGCTMLvpK1Qv7BO7ewq
	xBshApN4WhHDaVt+wzn22f6NPBjYCoWwpGXNabTTlwWn3wyl8/nORoRcTZH92dik
	NlYbVJ1WN19xq6pIituUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1659988305; x=1660074705; bh=DRD7O9uOJGV5QS7nFCIzvkkOwm9W
	VtI2yljTyhspt6w=; b=zfINDhulBOlVJVQ04hrl7dMo4hUi+S6Z34sTT9cNFmFG
	5rTbdS9uPypmOrQm/zfIc1M2+P5HcQ0FthI+uqd0Em4jJoYWYaWvqkQNM33H2ZXL
	xL8OoeNcw+2SqkNU28BsjDN0ZcLDoCRC0OocZuWTwQTDbvpfSqNR+avlHICSLU4J
	SOAjnBx3N7J7g6RGLTehnjB5ZkqJZJd10Tb1TxjP2OfyeB7QLjW1qk7ckK7Pt/eL
	xXInkmih2ZzgEWBk9cUTMUMApHriTRN3XIDI6wdRIQpIVOseSO2on+7tZvI1Mmkb
	ogA/48/TDTECkhGTYzPQ3CUyE1uNEzAB8p9zdpv4lQ==
X-ME-Sender: <xms:UWnxYmiX4H74R7VzOXglfZr8FoBt_-t3LCnp_Mfh7YIkb1zuNA5iew>
    <xme:UWnxYnADftljHP8V8fD_GSS1iqDoZu4Y2iLqGgSX0zPHkEJuSQyjmZmOeIxEE0pPN
    wtqRsF8AKfG5k0>
X-ME-Received: <xmr:UWnxYuFuXhTWCE7hu76QKhB9DComTkTswGOsjRGsq9Q4E6hyDEMv_j0kQ7Gf>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdefkedgudeghecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtd
    erredttdejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrh
    hnpedttedtueeivdefiedugfejtdeutdelfedvueekledtudegjedviedukeefhfeuteen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmih
    esihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:UWnxYvTHIh74hlfRiVpIfhno_jsLIsXdycawmLYLLV1OHeDT51YpLg>
    <xmx:UWnxYjwfqD0UPCJlnMVd-1JensxO9b_okGLdV4YTTZa3WgUwkABoyA>
    <xmx:UWnxYt7Q26Cp7A5zENS-MXAXi2lwrLn43Pb47QsrvtUmOLyCHgjrpA>
    <xmx:UWnxYi-HVd9US8Hv1yqi3HAR5xKHu2tls6ejeBaKqsyQQsPrnqdbGA>
Feedback-ID: iac594737:Fastmail
Date: Mon, 8 Aug 2022 15:51:34 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <YvFpTsZI8HRkMYYM@itl-email>
References: <1973d16e-bb3e-c5b2-74e0-cc2faf9db2bd@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0ChjdFi4LuKuv6yY"
Content-Disposition: inline
In-Reply-To: <1973d16e-bb3e-c5b2-74e0-cc2faf9db2bd@redhat.com>
Subject: Re: [oss-security] CVE-2022-2590: Linux kernel: Modifying
 shmem/tmpfs files without write permissions

--0ChjdFi4LuKuv6yY
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 8 Aug 2022 15:51:34 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2022-2590: Linux kernel: Modifying
 shmem/tmpfs files without write permissions

On Mon, Aug 08, 2022 at 09:18:27AM +0200, David Hildenbrand wrote:
> Hi,
>=20
> I found a security issue (CVE-2022-2590) in the Linux kernel similar to
> Dirty COW (CVE-2016-5195), however, restricted to shared memory (shmem /
> tmpfs). I notified distributions one week ago and the embargo ended today.
>=20
> An unprivileged user can modify file content of a shmem (tmpfs) file,
> even if that user does not have write permissions to the file. The file
> could be an executable.

Is Android affected by this, or do other protections (such as SELinux)
prevent an exploit from succeeding?  Also, is read access to the file
necessary?  Are sealed memfds impacted?

> The introducing upstream commit ID is:
>   9ae0f87d009c ("mm/shmem: unconditionally set pte dirty in
>   mfill_atomic_install_pte")
>=20
> Linux >=3D v5.16 is affected on x86-64 and aarch64 if the kernel is
> compiled with CONFIG_USERFAULTFD=3Dy. For Linux < v5.19 it's sufficient to
> revert the problematic commit, which is possible with minor contextual
> conflicts. For Linux >=3D v5.19 I'll send a proposal fix today.
>=20
> I have a working reproducer that I will post as reply to this mail in
> one week (August 15).

Can you try to make sure that a patch has made it into Greg=E2=80=99s stable
trees by then?  Also, would it be possible to include a regression test?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--0ChjdFi4LuKuv6yY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmLxaUwACgkQsoi1X/+c
IsEecg//Z0kXqyZfYaTTDWBD3Jvnl7omIfd+OJL3du47v/I29Qq4AaAbFNQUoSOO
F9KowPAhyuazxhvbLGHfI6Y8N91hPHSLlJZkqF/31PjlhmrMZRlggKrUypZn31jS
BdA3euR3naCZ5hv2beEEVURP1fQMcDUigY6aRyCrfsrPYJiyq8ZKnVTr2GqFMcx7
t6zzqxTEhYwNHsWkhuRGtWYnQiTXJxKrzvv4puCUZtwZBSgN/mssGcxxDJFAVYV9
U22jr0K5bBDXCubaPwUE+5JprQpiHwDi8WFvk8tXVJlCNGRlhRNX0KJPztSaDZJ8
gzSEYjmTrJcWtLbhMm1OH+nNTVFbp6fFvpu0VTFLi9b8CXAidofQSY7GXy/ayAS6
0ofkQOAPILM/6CfC9FmbiqWPsHP19G3SFrq88/KUfe22CBw5ME7CXVNK+ogBoA6l
H5JGTZ4RA6wER5d17M63QiIQpCiebyapO6LyFG5dFJDzTHNJZpN0Jc0+sL6g1yyG
jzh4iLn0v9MXgi0f830EUYdwZg9Or/3CpmaoxFLB/TqpeC0uGqXQqdOGvLGPHN3s
i+zp1MlmBqvOSQ8/2X3pBAZ+yjKQPq0r16eBpM9TwI+gX2GQk0QAPeamE3C6JeYE
ryseSHqO+gRk2uR8TK30aqZ/VDlBOLNPMccUyhgn+1QzyfYboks=
=UG/J
-----END PGP SIGNATURE-----

--0ChjdFi4LuKuv6yY--
