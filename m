Received: (qmail 12153 invoked by uid 550); 15 Apr 2024 13:10:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3085 invoked from network); 14 Apr 2024 22:47:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1713134864;
	 x=1713221264; bh=nEdZTzFCTCUm1RNKmWKiBuP4uck8xDv5pkLW8nhtojI=; b=
	R1dpCJpZdllfmoI/aJbglhtA6IiJaLh6cRmgD2srk7QCSwftKBC8VwRD0yrVZVVC
	ZUmagFAs7ArPhSz+B3OWAgH2adc4dUWK0Hh70dZIshD8p+SQISCDmEHECaI7Y3Re
	pt6N6BFXbNo82Uh7wOs2ix1+OlDnslHl8CjUS0bIGra+SlxFuGbsaRZ5JDkvVacN
	SHiGqiAWjVxMMwwKArEWiCY6xD4xyiQ8vZPTcvthjD4T1u4hscxdTXAtDW+nn1eO
	llgPqoyiFrqvTwOtVBUKQXzQM+9f07wenj2mGHr6pfCoFS47UZGsioB68+CPPrVE
	ATFnoo3kifaMLgTQiIcJLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1713134864; x=1713221264; bh=nEdZTzFCTCUm1RNKmWKiBuP4uck8
	xDv5pkLW8nhtojI=; b=sf9L0fLSBmK2Pmp9NgwIs/sq8WeOgli1Ws41u0T0EDLs
	rqgUApr23fc9duF5USPsY1EfwBDiuLfUqPeOnd/0PM+qP6N8w946FkZuD9BFWMn+
	nzaOPv8ftxzLFI+QL2WUI93J9mZ5zUpCF6RNvJyvmYMsL/m+ZMQx30rNXJqECsTL
	dEc+8uFpd0wSHo7RJ/yrFpP8Kgzit1fnp9PQc4xztY20m5hjPF9xSHQu/HAZ/TPi
	5SiFAAxqMhRBLym02tXQ1uPNyekk4IX1ElhhSJ53QGgJLqhqIWRnZjTqPjVZ8f7G
	rpMoBDkxZGovM6nmKOsYRT65IeUubJR3kGE1Ew5STQ==
X-ME-Sender: <xms:EF0cZpwlvQQWd7FJCugUAB38Q3tGHI2K7YPNOEO4yeYHvIEGUFaP9A>
    <xme:EF0cZpRHGTD3iLpbAyzbQt4WGhm7EADyNBvlFAOmyGjUSngcP_KSBch3OCgb3RtLs
    y8mm55L2Eo02DQ>
X-ME-Received: <xmr:EF0cZjXK4nz1sf6gu3bS0hiWmLu-zKvIaBCnhTOFrUa9_f1esjT04NJ2bo_9uH1QqP-MvyPpZWxHQvPpPATxoikN3lQ7Fv_6xsoXHY3jtjiqsnGd>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejtddgudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtro
    ertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    ephfeukedvffevtdfghedtueeltdfhteetheehjeejveekiefghfdvgfeljedufeelnecu
    ffhomhgrihhnpegrphhpthgrihhnvghrrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhn
    ghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:EF0cZrgi-5ESSjYGyIZGx1lXUzmuy_yYklEV6Pm59B9sD8c-Lct0sA>
    <xmx:EF0cZrDcApeZKpvGCOLm-x4MpCSap88XtUZg8Xeue7DpnLZw4us12g>
    <xmx:EF0cZkKzpHH1vVJbzKhDGyjdxf5W3E6dzhhojh5POlJZcwISoPgyYA>
    <xmx:EF0cZqAwo0tjDlFgHrffogObWFEJbHy0-4ft8Z5nEtKi_yfn6N5hsw>
    <xmx:EF0cZuoYyUHmhRVRbVUPgMbzzICEw2aRilFLQTES3SlpSGO8MDCnSTBh>
Feedback-ID: iac594737:Fastmail
Date: Sun, 14 Apr 2024 18:47:26 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZhxdDyIBazJYRDeR@itl-email>
References: <20240414190855.GA12716@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OjNm5EQIZcjK10WQ"
Content-Disposition: inline
In-Reply-To: <20240414190855.GA12716@openwall.com>
Subject: Re: [oss-security] Linux: Disabling network namespaces

--OjNm5EQIZcjK10WQ
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Apr 2024 18:47:26 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Sun, Apr 14, 2024 at 09:08:55PM +0200, Solar Designer wrote:
> Hi,
>=20
> Many Linux kernel vulnerabilities including the recently exploited
> Netfilter CVE-2024-1086 require CAP_NET_ADMIN in a namespace, yet a
> typically recommended mitigation is to disable user namespaces (not just
> network namespaces).
>=20
> Further, while on Debian/Ubuntu it is possible to disable just
> unprivileged user namespaces with the Debian-specific sysctl
> kernel.unprivileged_userns_clone=3D0, on other distros we'd have to use
> user.max_user_namespaces=3D0, which (unnecessarily) prevents starting of
> containers even by root.
>=20
> Fredrik Nystrom on Rocky Linux Mattermost channel Security pointed out
> that it is reasonable to disable just network namespaces with
> user.max_net_namespaces=3D0 instead, and that the negative effects of
> doing so and how to cope with them are well-documented for Apptainer,
> with its documentation also covering Docker, Podman, and systemd:
>=20
> https://apptainer.org/docs/admin/latest/user_namespace.html#disabling-net=
work-namespaces
>=20
> I hope some of us in here find this useful, and maybe we (including
> distros) will start recommending this milder mitigation when sufficient.

Is this still compatible with Firefox?

IMO an ideal solution would be:

1. Provide a privileged helper daemon that sets up containers based on
   user requirements.

2. Port programs that use containers to use this helper.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--OjNm5EQIZcjK10WQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmYcXQ0ACgkQsoi1X/+c
IsE6ow/6AxYK95tcs1UytdbKhP4OGFCwg7WeZka4rNEpcHuhER/gVtcPmX4zt5NS
VJUeHURwF+MXB7SfAdDMt9qtHzUHOiyKwVyv4dkD0qO4SM99NVi7jT0FFchE5YD9
4Ky554KtyDxId1v0EzyZTDSGBjfXLmc0O9A6FFqDnm98ruqtCjmq7gRSkk9rfP05
LTyZkBuYwwV9Ad+w/xpElcNKrw2tZNEtZBqXvfIppZoAoPJceqsAEYULbVF5SEcr
DQRutUjCAh20NWat9B4o3zxe3gXu8KTJF7leV7HPJxVGwK9j7x6Rh49Ft41syJj6
Ae+UjiUYtly6hEOpsbBGptTCGhczGy9qw/EQACWiu/D3QN9uKX/ChGvpCaOY+1X6
d86XgkDBJ2mmW3xYBheHrLKDwVKiheTXJ9K7bfW+M3Ftr4Wn45sy4SF7XUi1SZe8
FHDSp0nkAblIUTimEBx59E3h3yysGspT40xJ8waTYCTVytpnrBF/FcX8mY21LEru
dfGmFlb2O4D22jgn+hN3VkSC08iBinB+pAp6OruUrRBk7ho24ihjo4O2YUam+diD
WuZn0cqNcpaWMqpI8daXvh4F6uE8IyXtcshGJpqr56813j8If+7UEEvAbGvlky/i
uec06GT85Tyc+WJv3zWKPSl8SUbDDGi7tYvcXLa6E+xppb0/bww=
=Cdse
-----END PGP SIGNATURE-----

--OjNm5EQIZcjK10WQ--
