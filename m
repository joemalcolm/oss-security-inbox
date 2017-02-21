X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1565" "Tuesday" "21" "February" "2017" "15:42:35" "-0500" "Leo Famulari" "leo@famulari.name" "<20170221204235.GA26169@jasmine>" "44" "Re: [oss-security] CVE Request - Multiple vulnerabilities in gdk-pixbuf" nil nil nil "2" "2017022120:42:35" "[oss-security] CVE Request - Multiple vulnerabilities in gdk-pixbuf" (number mark "U       leo@famulari Feb 21   44/1565  " thread-indent "\"Re: [oss-security] CVE Request - Multiple vulnerabilities in gdk-pixbuf\"\n") "<CAE-_4r3PgqHs2kVHLTzynYhcffE_AWu1Y8QFM5LXeA8kvMnbrw@mail.gmail.com>" ("<CAE-_4r3PgqHs2kVHLTzynYhcffE_AWu1Y8QFM5LXeA8kvMnbrw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19675 invoked by uid 550); 21 Feb 2017 20:47:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16310 invoked from network); 21 Feb 2017 20:42:50 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=NtJ3KZVvNfzuWKY/IqLPmcZMoDY=; b=FFJHkg
	oKRmax1dwFcc0fqg2LUoCM3B2IlQ9BA9m2j+zV1LOvmWTdPDiCC7cNFls3UGMTV8
	4ItAgnx+SCpwggJ8m7PtvXtEiffbLBvZDlbHP+eTG4VE5L4qUsI1vR4dhOoLTXfF
	P9F2j+04KJLyNSNzq7HeuxYNRlBmPHBz2IdUI=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=NtJ3KZVvNfzuWK
	Y/IqLPmcZMoDY=; b=OcYrlDxhI6E8VCDnpqnKM0FARinl1IjM04FTSxfHmVaFX4
	E0FoWn3lnJMK8p/afc2E87SUniCQRVssnrKmOywKCm55F/+BH7oDkiS2Kk1cZ5g7
	tJMXb3hR14o7ScjDC4vRLiWI4w2V3VpDC44PxW0TbpUEaQ/8c4eoccDhzBwAU=
X-ME-Sender: <xms:PKasWLnjek_hCQJeozc16b_IahVn3nxCw6xB4C60OPgjUqkZ5kV2Gg>
X-Sasl-enc: etGnAPloTsIxFKZJWpRYBPANTtv5KPe0pELuRIGKSxKl 1487709756
Date: Tue, 21 Feb 2017 15:42:35 -0500
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Message-ID: <20170221204235.GA26169@jasmine>
References: <CAE-_4r3PgqHs2kVHLTzynYhcffE_AWu1Y8QFM5LXeA8kvMnbrw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline
In-Reply-To: <CAE-_4r3PgqHs2kVHLTzynYhcffE_AWu1Y8QFM5LXeA8kvMnbrw@mail.gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Subject: Re: [oss-security] CVE Request - Multiple vulnerabilities in
 gdk-pixbuf

--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 21, 2017 at 05:20:11PM +0200, Ariel Zelivanski wrote:
> Hello,
>=20
> I just reported several vulnerabilities in gdk-pixbuf. I am adding the
> relevant details but you can also refer to the bug reports in the links. =
If
> suitable please assign CVEs.

As announced previously [0], MITRE is no longer assigning CVEs based on
messages to this list. Will you request the CVE IDs via the new web
form? [1]

[0]
http://seclists.org/oss-sec/2017/q1/351

[1]
https://cveform.mitre.org/

--yrj/dFKFPuw6o+aM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAlispjcACgkQJkb6MLrK
fwiEkA//RoghGrWq90CKZGMaH6MjVnSHjEWrQzTK0Fki9EgVT70NPkwyUrsJZHE/
MwJ4cNtsxgpeEpgQevp2BB0yLoQ9aRKLmuAbuxyCPzdhOtwiFK/tuxLmjNj/IxZ9
+z+/G9tBA4xpH35DVWM5ugYhGmK65YreVtWM1PJ82Jk0YuSt8uKjLEcNxwKsl4la
PJ4ddx7y6Ps7KtPzHQRI7o2PTWD30KbG/mU8APBrZZqj3oZ6Az/D4ds6r7nW3XbJ
dipxW80JuLw+6/YszZ8lqSIsQIAUWromJpYYoP5ztkBZ0N/oHguL1aGBAp2GXFrA
Nw+26lf4tA6REhucMjXZvneKSs/PciSEnRrX5E876JjwMuVvWYyiFoFU723+CtyI
OAR0LYySyoPgZq43Mb3RiXSHmuwSj91FgmRNDs2WBMVsr/EGqZHMjXaXomiQJDgp
bhj3pF0v4R6qenPm71UtiipxPkQtqRnvEKoX1RdcsFhMLF1ZhpxFvCUHOciisZfM
ltjKQXr91JFutK6e7UXkrKKBgvuhXwyM00XokGPisRd7/x4Ce7piGGDu0tTjOV2J
QKGnfleuztqYKa6npNXekUBmcNVskLKsF84mCHqueCi/pJ7/iV6kztwA+zrrVETi
JV2/IhFJ2ejG/kMFnPYfA9cQFTZHztiPUVFa1NWD5abjwbFfyhU=
=FTxv
-----END PGP SIGNATURE-----

--yrj/dFKFPuw6o+aM--
