Received: (qmail 20076 invoked by uid 550); 4 Jun 2026 14:33:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7520 invoked from network); 4 Jun 2026 10:12:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=who-t.net; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm3;
	 t=1780567942; x=1780654342; bh=yL9JdWlZPLMNlb5GJMluDvLy0zQfTnIH
	15gzlxRPiuA=; b=u/naCwnWMH+kmcGr689Ni7x8VavQfWxXBSPMWR/YY1WwY4m+
	ftK1q6vvfby6wGYS2Uvexf6RyXFIVWgzDLne1JDbgQAp86zrBH4jzeEO/l+0cBAH
	lHb1Ll5HZrw5NcwL+zgK1Qs1TkZdLVs8y4CVLNRqg+OSFMQX7TlbqWI0Rs0N0Hl5
	z87AtaNPXcjCfgNgNLIULVPk91FS+ZbFqFSWBHzeqTlzM7lu+q8btBeJC3dE8BDr
	4/hSObvEVzpBvQ8afSXbIMP+y9lGJgDrB3AC83AXY5oz8RyLazM/1WDLXR92TsNA
	ImbXQvgqrSDWcHB76J5HSpc9NKXR1C0GOPeZ6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1780567942; x=
	1780654342; bh=yL9JdWlZPLMNlb5GJMluDvLy0zQfTnIH15gzlxRPiuA=; b=W
	LUqTKDExLIK+aQMg2/PlqrAbBe44MBsahryO1JwYQuPYoVI+pdIlqpfT1B5ZEKxC
	hgn6r9Iae9slkwcU/9Z43+r/O9O13jWnrjs8rNo9X45o1lSV1NdirJioocuk1qsr
	SxVZnhzQ+XcaZ6EnhOr9gVEbs8s+2hi7sXRU1K35l3UjGwnjYwaLhrf3gquAi2gP
	rTWGPVaSHUZyzgZVwXr9DtavJyHdVl8xMnZha33fQkiNmqwDD1zEV1doPRdaYwnw
	W7a4P1O9kd2cTNPzQpZ/mC8Ev8yhAMpH1D+5D9OcKA/IJfWu9nXfolD/AyKe2Ebj
	8/mBZ8cIQI9Ee8yoSgg7Q==
X-ME-Sender: <xms:hU8hahsAbgyv31JBa9hvMrrKHkS30IxXmGt22Yuzes9imDOeF42-nA>
    <xme:hU8hahZickiurgHiZ9NfUCiyD44aCYnS5gUwIX8vnTD_ZiCenkC_mCnPqezpjfHeG
    ioG7FEwP0KAOQ-fi_bivn5Aq1OXLwPAZPEJYI-6DV-pIIGK4ooGObzh>
X-ME-Received: <xmr:hU8haqbyPZkGpFlIiq7muVi3oYlLr9D1XJk3o-q8Rl7nMsy4rZA8Ae_dgXPA2mPg0zk1fmB6bD1G6dO8yBbzql277LwDtVtR0qmV>
X-ME-Proxy-Cause: dmFkZTGRazVuKbhocPvDqQvI373/hxVdDVeELL3V1YCBMVNMONpEyNrGSfLdTOs2lPipqs
    Iup2s6ZAvuDYNT5cMQyPlWNsIPnr/nAdC5NkZGZm1fzwrFgj9YqdcVsDSvwdzR+artNkWs
    t4e205Ze7090NfgPBwrERo8Pp5QwSQUvLT3Owijnhf7hma+oI4UOR5TC+v7xw+yhnuHwHZ
    v6mq/TKa/AeSvOUenkkjwJO7Sn4lyCY7PAIQX9A2hw8P+IPPcCwvQvJCgboKa038HOPQFm
    g5jhZqs2YpehtUDvIBFiSOmG+mjG26EUNLrRJLDBRYrNff3cQ0xX0YOQ+Hehx4Kx9ErXCG
    V7dN3xPzkdn3BEKYY7Wu29akbT+OsH8HpCX1N9Lmk0esQbVeBnrwIXGy9jyJx4IAYCP2TJ
    xeYI72sakt3fI4+IBiGY0Bl4qxCBy8m43KVr6u28wqfKXNNUg3ONCNwMBCnSF6RGYykV21
    3WKk8PkmK7E2G7zVE5Z3Rx4WkAODQBgU772w5TKRTTDwuxp2d1+1665V+QM+KC7a91K2ie
    BttxUtOQgdjuFXXJNevb8YMAO34oo76Mlsoi1ymRP8Uu7NhWTEjJV3DiwCiLFZ32ClhZVR
    Ss7aRHjKxYe/vZ9o1hXptSu53Z63uggHiUMCvJeRVcBDnm5wC7u+iKaohYrg
X-ME-Proxy: <xmx:hU8hatX13vSnZSmDH8ujJcb-hoV4E_G7IA136-u3t9LEtvU3o_iq5g>
    <xmx:hU8hah3_TItr09AKPWe5Zgy4jgRCabijWoJiWKJ7OiqOnGnqA7a_UA>
    <xmx:hU8hakaaY5MPQv5tDNvURgx-4PMZzzcrHJ-eiHEtELuO5S4Xaqf0xQ>
    <xmx:hU8hakqdijm0NAa2G7vTADXX7R_1wXCIBjwdxXfQ9RJy8aCbpCNOrg>
    <xmx:hk8haim9r_LstYh6AxaGZdMwBG2f7xlZGtnBUlb8ikQFRyrT3snZrMwr>
Feedback-ID: i7ce144cd:Fastmail
Date: Thu, 4 Jun 2026 20:12:15 +1000
From: Peter Hutterer <peter.hutterer@who-t.net>
To: oss-security@lists.openwall.com
Message-ID: <aiFPPUkZ63aDOdzD@quokka>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="77wog6nuulspj5qz"
Content-Disposition: inline
Subject: [oss-security] libinput: libinput-device-group unescaped phys output can inject udev properties

--77wog6nuulspj5qz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: FW: libinput Security Advisory: security issue in libinput
MIME-Version: 1.0

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
libinput Security Advisory: June 4, 2026
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

An issue has been found in libinput:

1) libinput-device-group unescaped phys output can inject udev properties
   leading to arbitrary root code execution

libinput uses a udev helper called libinput-device-group. This helper uses a
device's phys sysattr as one element of a udev property value which is prin=
ted
as a KEY=3DVALUE pair and imported as ENV by udev.

A malicious uinput or uhid device that sets a phys sysattr containing \n ca=
used
the output to be interpreted as two separate KEY=3DVALUE pairs by udev. Thi=
s could
cause arbitrary execution as root (e.g. by setting the REMOVE_CMD property).

A CVE has been requested for this issue but did not get assigned in time for
this disclosure.

Upstream issue: https://gitlab.freedesktop.org/libinput/libinput/-/work_ite=
ms/1296
Upstream fix: https://gitlab.freedesktop.org/libinput/libinput/-/commit/76f=
0d8a7f57e2868882864b4611281f12f704b55
Versions affected: libinput <=3D 1.31.2 and <=3D 1.30.3
Fixed versions: libinput 1.31.3, 1.30.4

Affected distributions/compositors:
-----------------------------------

Affected are libinput versions 1.31.2 and 1.30.3 and all earlier versions.

To exploit this vulnerability an attacker needs to create a malicious uinpu=
t or
uhid device.=20

uinput is typically restricted to root but may be tagged with uaccess by cu=
stom
udev rules. On Fedora, the following packages ship such a rule: steam-devic=
es,
antimicrox and kdeconnectd. If any of these packages are *installed*, uinput
devices can be created by the user logged into a seat.

uhid is typically restricted to root. I am not aware of packages shipping
udev rules that provide uaccess to /dev/uhid.

Acknowledgements
----------------

Many thanks to Csome for reporting this issue.

--77wog6nuulspj5qz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQQ8LEPZRH1ZOO9FUeviO35wtGfwvwUCaiFPewAKCRDiO35wtGfw
v24NAJ9rYbC2FIrY6LR9ZFFifPpVmktVVgCdFJaGsNr3gR01W/6ccDdeYDy6FWA=
=1spG
-----END PGP SIGNATURE-----

--77wog6nuulspj5qz--
