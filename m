Received: (qmail 25921 invoked by uid 550); 6 Oct 2022 15:44:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5896 invoked from network); 6 Oct 2022 14:53:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1665068002; x=
	1665154402; bh=jVtacdHcajeZFu11BD0HL6LXGu3/LK4hKOZU1HECads=; b=b
	/kkfg4hAkFDBiDWql+XUi6AarrtpSskjeFmYl7jJnhVSHRFbzLrrAv0h9kdFt0zg
	sSAcvY/mTDOGvk7MN6kzuycuPzgxdpUDRP9Zj7t91qvyeSyb2yllo6ZEskaxYpIL
	J5vhy/8oR/5luoisP8qzKX2uMGbxVRx05oK5eqsxsPQqNtbY4djhJe7xKKRRTfBM
	OgADGxOvI5ytjq9Lo27juARXKjqCc0zfQWbCMVNbPZq8ZUOnZXSjxxxbKpwM4srB
	n6jY8fTQkMc7vC62MLPrAjYxAIqPExUjJ6s1EgdU/x6PKqufzejhxx6sB1cEgTN6
	BSbOK8pd2fZHPbZXuZGcQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1665068002; x=1665154402; bh=jVtacdHcajeZFu11BD0HL6LXGu3/
	LK4hKOZU1HECads=; b=FOHUIWnnGdQuDsyQK+P1NZhL85XPYLD+I41uBncGlSpB
	Iu81kBwvtRkAw6KzGeI+kiPtDejIacN3Cmc/NSHc7QsvuHzhqdeQEFJmmeVMayse
	ugbwJ/7cX6oOlqx8BNxe1zmtpIYQzwJdnDC8EXVhem7aliQMOqmB+5jNF62aeYE+
	gnKOeqaZaDdC32zKwv85bFgEQfnygZbhigg/BWFibAzWDgg0QZuwvNcLDD33LlBa
	SY0c8c7ErovikVCakHexigwieeyUtVOjGkoUfJXk/pWffKtwP4q8Fe7Y9tqmLjZA
	T3aEruiojSYmi2gYU6rogD1YVVdwyq+d8mxIvNs0bw==
X-ME-Sender: <xms:3-s-Y9ExRbfTQ2dWRgO0YjHl65RWh6QRbyS3aiqrX0IGxivBm77-NA>
    <xme:3-s-YyUY2qWojMJ4R_nL9qpTdx5FQiiwPKvBEbsHklPomNYb0Nje_K-9CGMExs0lF
    SB8T-cGZp08SMY>
X-ME-Received: <xmr:3-s-Y_LdCd9u0W9Rv-fGGaT05c11skJGBe1cVAN6da8UL9M7BHyAv0GFMffa>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeeihedgkedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehgtd
    erredttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrh
    hnpeefffeuvdejieeitdeigeeiheegudduhfeijeejtdejkeefhfefieeifeefteejjeen
    ucffohhmrghinhepfhhrvggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiii
    gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvght
    hhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:3-s-YzFYlpC6qy2gMP8F0vfN1iFX5elSwZ1VPQOG2nqOdzPo5uLhOw>
    <xmx:3-s-YzVXr6rkrUegc_jIWzYEYmOKZMSCU__DHBqToqRakUkozZ0Thg>
    <xmx:3-s-Y-NbxBCpYpXRTRIFparxpqaiO_r0OLMafZ1jaWcFrKKMROdtXA>
    <xmx:4us-Y6BKOb5pajo9_nOnMc3krbblC_xzRJBtwrDe7chGgFwEv2_jPw>
Feedback-ID: iac594737:Fastmail
Date: Thu, 6 Oct 2022 10:53:15 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: dbus-security@lists.freedesktop.org
Message-ID: <Yz7r3ke7oXMBHJ5A@itl-email>
References: <Yz6XZSTsVQm7VKia@momentum.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iUIeEqygN8oa8KRg"
Content-Disposition: inline
In-Reply-To: <Yz6XZSTsVQm7VKia@momentum.pseudorandom.co.uk>
Subject: Re: [oss-security] dbus denial of service: CVE-2022-42010, -42011,
 -42012

--iUIeEqygN8oa8KRg
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 6 Oct 2022 10:53:15 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: dbus-security@lists.freedesktop.org
Subject: Re: [oss-security] dbus denial of service: CVE-2022-42010, -42011,
 -42012

On Thu, Oct 06, 2022 at 09:52:53AM +0100, Simon McVittie wrote:
> dbus is the reference implementation of D-Bus, a message bus for
> communication between applications and system services.
>=20
> Evgeny Vereshchagin discovered several ways in which an authenticated
> local attacker could cause a crash (denial of service) in
> dbus-daemon --system or a custom DBusServer. In uncommon configurations
> these could potentially be carried out by an authenticated remote attacke=
r.
>=20
> Fixed versions:
>=20
> * dbus 1.14.x >=3D 1.14.4 (stable branch)
> * dbus 1.12.x >=3D 1.12.24 (old stable branch)
> * dbus >=3D 1.15.2 (development branch)
>=20
> Older dbus branches such as 1.10.x are EOL and will not receive new
> upstream releases.
>=20
> Vulnerable versions:
>=20
> * dbus 1.15.x before 1.15.2
> * dbus 1.14.x before 1.14.4
> * all versions before 1.12.24
>=20
> CVE-2022-42010 is believed to have been introduced during early dbus
> development (before 1.0) and the other two vulnerabilities mentioned
> here were regressions in 1.3.0.
>=20
> Vulnerability details:
>=20
> * An invalid array of fixed-length elements where the length of the array
>   is not a multiple of the length of the element would cause an assertion
>   failure in debug builds or an out-of-bounds read in production builds.
>   This was a regression in version 1.3.0.
>   (dbus#413, CVE-2022-42011, fixed by
>   https://gitlab.freedesktop.org/dbus/dbus/-/commit/079bbf16186e87fb0157a=
df8951f19864bc2ed69)
>=20
> * A syntactically invalid type signature with incorrectly nested parenthe=
ses
>   and curly brackets would cause an assertion failure in debug builds.
>   Similar messages could potentially result in a crash or incorrect messa=
ge
>   processing in a production build, although we are not aware of a practi=
cal
>   example. (dbus#418, CVE-2022-42010, fixed by
>   https://gitlab.freedesktop.org/dbus/dbus/-/commit/9d07424e9011e3bbe535e=
83043d335f3093d2916)
>=20
> * A message in non-native endianness with out-of-band Unix file descripto=
rs
>   would cause a use-after-free and possible memory corruption in producti=
on
>   builds, or an assertion failure in debug builds. This was a regression =
in
>   version 1.3.0. (dbus#417, CVE-2022-42012, fixed by
>   https://gitlab.freedesktop.org/dbus/dbus/-/commit/236f16e444e88a984cf12=
b09225e0f8efa6c5b44)

Is the memory corruption potentially exploitable for local privilege
escalation?

> Reimplementations of the D-Bus protocol such as systemd's sd-bus (used
> in dbus-broker and systemd) and GLib's GDBus (used in gvfs and ibus)
> do not share dbus' code for message parsing and validation, so they are
> probably unaffected by these issues.

Are clients using libdbus vulnerable if they are behind dbus-broker?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--iUIeEqygN8oa8KRg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmM+690ACgkQsoi1X/+c
IsFB/w/+MWrGcv36MbitIKoBmpPF/e6vPAch2FlQU78HHX1dEyQ3W+JvX56KyiLn
Z4XWHMNQfpjORPVAU6TgsBzq8RS2ucg4VB0wO+QX2hs2S7KKRHXTW9uiKPoxxjRh
DXaNpBl2h8jvD+CdubPg0SQbV5l892sedkLdcPScQFlCiMLEyJTubBkcxg/Oh2Jf
X67Iitbdtq7uDyH8uPcQUwodwVlCDP/DK/nYcm39w+iwRuKxuU1CuIQ4Gb/QTaFG
BS3cdEYKPo3WuzrCD5BWEsVDW26j3vNwT7LiunKPvcoE2tzHFl5nISqPK57TcaYQ
Oec922yvV5TgTQ0a0t0ODhh5XS8dN+XKm4Rup9MZMHgN73ibn+IudSmGA19D33JF
7x7Y/qSHZmIIUbFKRnvBRKnVM6CgNM2khTbDWPaitQ8aZOwoM4H42w6hEKUmrHlR
bedLNx0LZV+YWfxw7ytFYI5MnbB2jdP8MiW8jGtRvSwTSrzBs0AeChzWa6jH4kiR
BwguxlRsRhrahBXGioaev3SHswcKWJZDzfxcbYOOd4F55kIqb74ePH5eQG0VsabW
ptjKS/HjH1jpI3kg8sVpKZEDIZP2qSMWI0yGO1ZCKfzPKdnWez/+8xlzFO6Og0Yb
P+zViNoUENa/RxcsZ/I4ZDe/5QRf4GzoQneHk0Ze6prlLns7WnQ=
=5xqJ
-----END PGP SIGNATURE-----

--iUIeEqygN8oa8KRg--
