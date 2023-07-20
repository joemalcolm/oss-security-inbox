Received: (qmail 21653 invoked by uid 550); 20 Jul 2023 13:27:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17673 invoked from network); 20 Jul 2023 13:24:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1689859464; x=1689945864; bh=oqvwuzYFgX+msMG8z9WccDc0WxYtVezz6qx
	lXlrFcyk=; b=eY0sOfWYtbrM6PQRwnj7uwY6aL9vssXsMzcxZLPCM5vfO5ieEhq
	euEhtABWREJ033+6RCWG8dkNBZScijUPYNCQOpaW5Xno+/alDq1JbVkJ/PQEs4C0
	eOZGcfaNz6wqswy7xp/+N4xGaGrJM0YDCTUddjQaFlvPPIedxX1X3erC3Q5lyLA2
	3ExsFAxRlYSH/xObU2LF4zch/zu0oj3v9wDUzVR3z1KebWFILL4v+hvYgrQW6XTV
	c9Pi/2Ryt5NZg3hvce2BriWBtKZBKmCCnzoNQqOPTwE86fBjZF0jMy0mdrTQuL36
	xmwjNkObAsojdlzAGG2yk5w95EGCTImcdkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1689859464; x=1689945864; bh=oqvwuzYFgX+ms
	MG8z9WccDc0WxYtVezz6qxlXlrFcyk=; b=LG0+3YvO21PuRxFUB+e5525T/uOCc
	FapHQ/NB2x5kUplb8hnzyJvwZACoJ4HKn65k+GVV8GFTDx0CtKKyWYFaefHaWBAb
	3dYWx9pLZEiK89BbaJ+qxp0YMcPoYf4zdYWdvP8CZOHlJl5DSON/aFqGMF449gUR
	r2gQB4JNRGbUiMh11tCW0X7zwYAnTZpHYCIegXcBKRTGWmDtrBBOlGMqBntMuToi
	xEETMS+LkmSSSGvJMbyYGnFtrZY3CbDF3KkHtRP3RAuzVFhIGOE60+9IZ7qTSlJu
	6z6JAjh5qS8L/LuQeDKp8n+QcOEF/lQQ0MxhlbZ++bGHpOrMPh8tIwKcg==
X-ME-Sender: <xms:hzW5ZDgv0oPzvJT8u01g06bMy0NP4U9HMrUTZphwJcvqgyPwN7uN-Q>
    <xme:hzW5ZACHgFbwCOZ4mPmJ7sqTEJ1MQjUqi1-S-4X7eGU6VlRBWlcOEaYVXd76juC6c
    TiXfyWlhpwDg-I>
X-ME-Received: <xmr:hzW5ZDHTY7lCWrqqHvYanH0bdlNG6q953MkqFDExi5RIGFfLO6ztkaV-uhXHHxrsquo39q5h9YT1QMAv3bg4-5Ui67c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrhedtgdeifecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttdejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    ejieefjeeugeeftdekudehtdffkeejveelveeuudfgieetieelhffggeeuveehteenucff
    ohhmrghinhepohhpvghnshhshhdrtghomhdpohhpvghnsghsugdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhi
    shhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:iDW5ZAReThOaR2m8Vdd4qHZbLO4d8NHWH-vVdRCdOvqlx5DBZ51-Dw>
    <xmx:iDW5ZAxkyQDF3vIsh1HMsAajwg0QTZycmIYQdL6Ey1iMq4cMG3AAcw>
    <xmx:iDW5ZG79mGmAPXhBd6yaqIgLavG68mH-LBTKihJEtRpUvrEG9H3TmA>
    <xmx:iDW5ZP9I1LCnJikMaNVpfZw0mrVJBMmYsjP8yesjFEqQbnDAOvSENg>
Feedback-ID: iac594737:Fastmail
Date: Thu, 20 Jul 2023 09:24:21 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZLk1hSUEt00caovk@itl-email>
References: <e9c022742fc07cee@cvs.openbsd.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Igh/Fss4Q8Ra5KwN"
Content-Disposition: inline
In-Reply-To: <e9c022742fc07cee@cvs.openbsd.org>
Subject: Re: [oss-security] Announce: OpenSSH 9.3p2 released

--Igh/Fss4Q8Ra5KwN
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 20 Jul 2023 09:24:21 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Announce: OpenSSH 9.3p2 released

On Wed, Jul 19, 2023 at 08:40:40AM -0600, Damien Miller wrote:
> OpenSSH 9.3p2 has just been released. It will be available from the
> mirrors listed at https://www.openssh.com/ shortly.
>=20
> OpenSSH is a 100% complete SSH protocol 2.0 implementation and
> includes sftp client and server support.
>=20
> Once again, we would like to thank the OpenSSH community for their
> continued support of the project, especially those who contributed
> code or patches, reported bugs, tested snapshots or donated to the
> project. More information on donations may be found at:
> https://www.openssh.com/donations.html
>=20
> Changes since OpenSSH 9.3
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>=20
> This release fixes a security bug.
>=20
> Security
> =3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Fix CVE-2023-38408 - a condition where specific libaries loaded via
> ssh-agent(1)'s PKCS#11 support could be abused to achieve remote
> code execution via a forwarded agent socket if the following
> conditions are met:
>=20
> * Exploitation requires the presence=C2=A0of specific libraries on
> =C2=A0 the victim system.
> * Remote exploitation=C2=A0requires that the agent was forwarded
> =C2=A0 to an attacker-controlled=C2=A0system.
>=20
> Exploitation can also be prevented by starting ssh-agent(1) with an
> empty PKCS#11/FIDO allowlist (ssh-agent -P '') or by configuring
> an allowlist that contains only specific provider libraries.
>=20
> This vulnerability was discovered and demonstrated to be exploitable
> by the Qualys Security Advisory team.=20
>=20=20
> In addition to removing the main precondition for exploitation,
> this release removes the ability for remote ssh-agent(1) clients
> to load PKCS#11 modules by default (see below).
>=20
> Potentially-incompatible changes
> --------------------------------
>=20
>  * ssh-agent(8): the agent will now refuse requests to load PKCS#11
>    modules issued by remote clients by default. A flag has been added
>    to restore the previous behaviour "-Oallow-remote-pkcs11".
>=20
>    Note that ssh-agent(8) depends on the SSH client to identify
>    requests that are remote. The OpenSSH >=3D8.9 ssh(1) client does
>    this, but forwarding access to an agent socket using other tools
>    may circumvent this restriction.
>=20
> Checksums:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> - SHA1 (openssh-9.3p2.tar.gz) =3D 219cf700c317f400bb20b001c0406056f7188ea4
> - SHA256 (openssh-9.3p2.tar.gz) =3D IA6+FH9ss/EB/QzfngJEKvfdyimN/9n0VoeOf=
MrGdug=3D
>=20
> Please note that the SHA256 signatures are base64 encoded and not
> hexadecimal (which is the default for most checksum tools). The PGP
> key used to sign the releases is available from the mirror sites:
> https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/RELEASE_KEY.asc
>=20
> Reporting Bugs:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> - Please read https://www.openssh.com/report.html
>   Security bugs should be reported directly to openssh@openssh.com

Should there be a system-wide configuration file containing a list of
known-good PKCS#11 libraries?  ssh-agent having to guess if something is
a PKCS#11 library is less than awesome.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--Igh/Fss4Q8Ra5KwN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmS5NYYACgkQsoi1X/+c
IsGVDA//fRoL9G7M56FNlPQ9w/vD9nYcS/WgvTI8ZGRCN93T5qaOWRsl8jyjEi1+
bdc0uzSpKQAnllo1Pj7Pm2q4lsEIe+wW1/SdjxVn9fMNvHYB4p17tNI1iWbGpFzN
ua/mXKI8hDuQV5ZiDz4Avk9DpAIlDQr/hCF1ejPuTykZDJOpCaak0EQ78c6bDQA3
V6JzGCmvrINLT2/S/P/WzzYSvl/aH7U8apRrDPI2VmAKETvoonlaQE9ydEL3WUvp
dFkOdinMpzlnLhkqJRbpUC2056ZrQH/NnKA1IkTsxnZ0qnLtNTzuu1tNv3T+rJMF
2PYgLTscfd4FVVnOC1ZFPFqb508iMP4GeNM31SgeobfeHc9vz0Umz4/RMO5Kc7Og
JVmZnGr/9ocR2JEVBLoAhIX/3S8xKXrRBRNwfImHqVtAkSfVy9CC+bluNLhvT8HP
Mo4jYNdO1fae8amg6GDXcYq5CxLs2U/AGuHJrk5XpBAGXXWbQHuq9t8iK+Xks8lN
JtTGD+k47eIcheAgUXETCX777X/niB0BuNGmnVv5mx8LJfWL9ESFu9wWqR12z4M/
/TV+PlsCnKPKLisZvifcPQT/r4CiC9solx+IqI03sZv6gkK+AZ/rHcKh6Jj5G/BL
r/pvzZT691EOajAWwB1U2wq/jD79ORJWryM4P8VEj+OsfPOGymo=
=Eut8
-----END PGP SIGNATURE-----

--Igh/Fss4Q8Ra5KwN--
