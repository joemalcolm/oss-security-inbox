Received: (qmail 21711 invoked by uid 550); 7 Aug 2024 16:16:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14311 invoked from network); 7 Aug 2024 16:12:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1723047169;
	 x=1723133569; bh=u7rU7L2ZLbPSv49bjELNY9MTKlA/Jx/ETWP4GAfm/40=; b=
	YRc4Hb7ExVsBgdIXjNHAfyFzfXJnTndkji5LEUD7L6SLluNSwGUfg9NvJpQIcwgb
	Eq/OdE/JAnuwackshn/SDFt1gT96oJQ+sHeCph7LRNkI9ZZzbkgQPlbkGucON3mJ
	HnQMuS4nr+yh+Ml4C32Ao/ThSJT+z+y+k8EDZ7X1/gMNNvbSPr16sdcmE0CNmna+
	/UnT2PXd57wYa7TJ5clW4dt+JZpP4lG1AmfxlM+kBl+5n9+giUZHLVvbJP0kgnCm
	q7uJmD5s8Pn5mIPurYO/pOMIJOn4wqXbIsvMg0g9hUjzzLj0AI74CiwVCCfnP82u
	XiMRvJvB3FPlo9amy97/cA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1723047169; x=1723133569; bh=u7rU7L2ZLbPSv49bjELNY9MTKlA/
	Jx/ETWP4GAfm/40=; b=QOH93D9eptDM+eQVGp7mj/F1okZk83hETnr53oipcZRI
	U+mWSToeWbMkeSHOvUK7yslljmStRpxDeQvuFhJNpPiPYj+P+DV8eudyRhY+OATo
	QEdGz/kDoDm1M4tn0QGSoFpNfHrEGFshGwMOdlCgly68+P926xopabPkUgbhNZbf
	KEea083EtQUBB4vCDrpAlIhsYlRZu9qBetajtsnIqElEiz+GOd3t4uH5tcGzoPXU
	qZ74Yay2KkkOGgYzmbMJSlIN0eFoih8J3bhKE/rgclm/Sw6g0/+qinc5+nSTi7GK
	KjJ8yqmhT+QT9qzqlpWn4X9tf8OuWzrVuquSVo4viw==
X-ME-Sender: <xms:AJ2zZjMCmDLj8OvjroxVTe3CvCOyJeXAKIxU0fFCQEdG-pk1JrX7Qw>
    <xme:AJ2zZt_drKUmupTp39BWdrjExSKscZpXHpewK9nYMuzJrHu4YXgbmVywdbL-siJn-
    6-E6x_wZNFcZm8>
X-ME-Received: <xmr:AJ2zZiQq5byAdywoJYDgq-S6C9cjrM0QJNX8d5Tob5Vwg0c7ZA6rOndc85gjeh5MqSLvKXQLs87kRHsQiRNIl53IXmACs_0AOHZ1VaCSOH_NRozU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrledtgdelkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttdejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    dttedtueeivdefiedugfejtdeutdelfedvueekledtudegjedviedukeefhfeuteenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesih
    hnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmpdhnsggprhgtphhtthhopedt
X-ME-Proxy: <xmx:AJ2zZnu1gqeyqE6oIciGmkr3JUNAhAxQdjt5xjkW6iMKPLff3co7uQ>
    <xmx:AJ2zZreLW_XEfqjTxlnr4-txDYizGUe9s1fuBwqfsbruXeoo2kC4AA>
    <xmx:AJ2zZj2DG7dX07A3aekz9JJUiq89MpxqlqURvLQW7K6a8dnEXqmN5Q>
    <xmx:AJ2zZn9AeQNUwYskEmvP76RaU50tNUZnyDDZ8LjCxFi_ltD9woXLiA>
    <xmx:AZ2zZrnnN0qtQr_s9-uZmbgCAa6yULssvRPiw-jTIO_jdLods0yAnYLq>
Feedback-ID: iac594737:Fastmail
Date: Wed, 7 Aug 2024 12:12:32 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZrOc_0GKG8j6kDf5@itl-email>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook>
 <ZrJv8PDeCxQQJVxH@itl-email>
 <CAHCA8E7m5n5tuGEZ-YJM_Nu9e1nmxLKJZwOK6XFifCkujP-2eg@mail.gmail.com>
 <CAH8yC8mtNuTegS129MQjHiLDqFM6XL+LPmUwzyPJgKkjTU7zdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2/QVrTRa7u+4Dv/S"
Content-Disposition: inline
In-Reply-To: <CAH8yC8mtNuTegS129MQjHiLDqFM6XL+LPmUwzyPJgKkjTU7zdQ@mail.gmail.com>
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

--2/QVrTRa7u+4Dv/S
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 7 Aug 2024 12:12:32 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

On Wed, Aug 07, 2024 at 09:18:28AM -0400, Jeffrey Walton wrote:
> On Wed, Aug 7, 2024 at 8:44=E2=80=AFAM Chad Sheridan <chadapsheridan@gmai=
l.com> wrote:
> >
> > As a sysadmin, I welcome all of the changes. As far as warnings/alerts,=
 I
> > can safely say, most of our clients don't read them anyway.
> >
> > > Can those machines be put behind a proxy?
> >
> > As for this, of course they can, but some clients will be tied up with =
so
> > much red tape and budgetary BS that it's a solution that isn't feasible=
 in
> > a reasonable time frame.
>=20
> ++. Medical devices certified 10 or 15 years ago won't be able to
> pivot as quickly as most people would like. And as I understand
> things, the certifications for medical equipment can be lengthier and
> more expensive than NIST's Cryptographic Module Validation Program.
>=20
> (It's somewhat amazing how often Windows CE and Windows Mobile crop up
> every now and again).
>=20
> Jeff

Why does this prevent using a proxy in front of the device?  I mean
something like (patched) stunnel or another generic TLS reterminating
proxy, not something specific to the device.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--2/QVrTRa7u+4Dv/S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmaznP4ACgkQsoi1X/+c
IsEu/w//UqFQogIAO9r2IL97KuZ47l8qMnxugVELZanPy39lVo3ul3jK3PrWZd+H
k9ybR8jg+C7PkspnTg6ZITGQVtOt8V1eDlMkOaBswklB/MKMW+ObfMzaoKbpl5F/
32Ca6pBCJ+RjNn1DeHpVkgfmA5U0GFfMX87NGIhcDFKpgX/Lo7/7pXg37wrKMQcn
vJkSrlrZUUjL7XPHbMA3zE5h1NWb42kUN5Op38YqfdLr8H3ByobZSpp+YBa2ln/6
AJZnvVGjf6eR0lcBy37Ek5dJ5rlEo+vcUR49nePSnm9+UIbuD7ys+boXqZniGJTT
tNfw0md89BMJViIKKoAsYg9QZz3cYjSh5wSyr/cYKj8Qw9RG9Shfl0LlYSI0Ccf/
6V8iGLIX/342zsWO6hWI7yZQS+Jfy8qlcTwfJagML5Lh64vM/z6NMkJpUagXbe/h
jbakx5EVoO+RsO43wiYSLmph5ykMRAsIuWDgV75MykKYXMgLDxVDxOySIYQRsVHo
8tLC5PNpGPm5CqKIGuT+aXC8ZutcB2QfsyChR9iMBwWl5wUUfhBoVU33j4QVhh2U
HWWwVWQOA7ncBDykRAfs672J/2SJxAKri8oRRfbyQe7RZTPkMbB+zXnhb74avFRv
bWEe43su+Ucaodev2K9i8s7hg0UqqhL31KGcZLUAhaXEVzLyuUw=
=//tN
-----END PGP SIGNATURE-----

--2/QVrTRa7u+4Dv/S--
