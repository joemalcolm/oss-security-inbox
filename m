Received: (qmail 1387 invoked by uid 550); 6 Jun 2023 23:57:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9295 invoked from network); 6 Jun 2023 17:34:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:cc:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1686072863; x=1686159263; bh=BR12PkRZ2Y4Fbq9PR3u/rAYoWMKDG3pExYm
	wCK4Xujs=; b=n5jRluIrdQWJGcD7UAh+jz/J7hKlrCXNEtO1+2hsknlegrfUj+c
	Bt71aNDw3QEKdFGY1RBknT5DBJBwE2GUhr3CxwnbT0uEITMTLg4azKcnQbI9g+Oc
	/ezde0stY4XrlV1hg6CNbz47xpwX7maCAW7x4E5PcqUvGmWaklQA8CY9iAAsULi+
	stpd809q143TI32bL77+TWElm6GDlEkHwemCVeOoHu4h2DVmOCYgOPFAUO5aT9zN
	7kG1k+kQncLR1l11D0muu+zeoXGZGUcDuKPqtSeM9m8fkBVQ5px19aoe6oxrtx7T
	sVux65/UCzrSY1jkEFZVUTJCv8CFrO1oTtQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1686072863; x=1686159263; bh=BR12PkRZ2Y4Fb
	q9PR3u/rAYoWMKDG3pExYmwCK4Xujs=; b=KExl2UXf1XKQiac+ipV7Bb4iOWIIN
	rjGmdISmZ08vXuOBwHfM8FkjpGH4PfgFJJtFtwF5qS87w6wD865OLYxnz7ZM+5Xq
	HxzzCaZ/pybhRDO4P07c/5Uzuu67VwuY0gm7D0WBhTMKLV3huTDkx7xGK20yCDIR
	jBMCUlY2QZI3soKvU15sEeP+MEjfrtT4tBgJx64gmWWKrR9qbBjf3b2NrnCi5iKB
	O6tCr63Nwsj1TXr3Cv/LO3j4hqPAMzafVZwjIlajEtPDC0+dUY1mEmXuDXH9Qqgf
	tvNPVoLrUCUVMPrgmlHL6+/1Ol6z1+XAdog5iIeL6RdE7k8vd0SQHD83w==
X-ME-Sender: <xms:H25_ZG-79BfrAePZfK_qhYDo8DxlTz25GCpspEPRrmGyuJf1yG3gkQ>
    <xme:H25_ZGuk42dQCUSORMIfBg7pyRt3DrZ_siv_oFNwag89DsaCZaQ1znXJTqDkENVL3
    CC6wkC9BseCO8U>
X-ME-Received: <xmr:H25_ZMB7qRVI1tO36D8kmcwHolcCNtuGg8rfAD2yo8x5SJ210_P4IsoEzbA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgedtuddgudduiecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesgh
    dtreertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggv
    mhhisehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvg
    hrnhepgeevveetueffkedtffdtjeefkeevtdejiefhhefhkeetleelfeevgeefheejgedu
    necuffhomhgrihhnpegrphgrtghhvgdrohhrghdptghvvgdrohhrghenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhi
    sghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:H25_ZOecO1gwvoQ-Ge27L3JfqMqOUvobDz6pi36XjoKHkjzoHsrA8Q>
    <xmx:H25_ZLMckVOvh6qX_IlCpe6FgVWJXRW0L1dPM-zgmlwm5iourdSceg>
    <xmx:H25_ZImmfCQJ58Ub0wv6FIW-Obh-f5YjAJvDGM9cUzZOWXozbRJr0A>
    <xmx:H25_ZEr09S3sSswfqkC07SCmTSxJByr40JnJgDHG1vq9ucij_y69bg>
Feedback-ID: iac594737:Fastmail
Date: Tue, 6 Jun 2023 13:34:20 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, announce@apache.org,
	announce@guacamole.apache.org, dev@guacamole.apache.org,
	user@guacamole.apache.org
Cc: security@guacamole.apache.org
Message-ID: <ZH9uHeiWrtK5oDz7@itl-email>
References: <ac30264b-daba-2c9f-95bd-224cdccee419@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eB6vNXkSuzngeqm6"
Content-Disposition: inline
In-Reply-To: <ac30264b-daba-2c9f-95bd-224cdccee419@apache.org>
Subject: Re: [oss-security] [SECURITY] CVE-2023-30576: Apache Guacamole:
 Use-after-free in handling of RDP audio input buffer

--eB6vNXkSuzngeqm6
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 6 Jun 2023 13:34:20 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, announce@apache.org,
	announce@guacamole.apache.org, dev@guacamole.apache.org,
	user@guacamole.apache.org
Cc: security@guacamole.apache.org
Subject: Re: [oss-security] [SECURITY] CVE-2023-30576: Apache Guacamole:
 Use-after-free in handling of RDP audio input buffer

On Tue, Jun 06, 2023 at 10:12:29AM -0700, Michael Jumper wrote:
> Severity: moderate
> Base CVSS Score: 6.8 (AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:N)

Why is this A:N and AC:H?

> Affected versions:
>=20
> - Apache Guacamole 0.9.10 through 1.5.1
>=20
> Description:
>=20
> Apache Guacamole 0.9.10 through 1.5.1 may continue to reference a freed R=
DP
> audio input buffer. Depending on timing, this may allow an attacker to
> execute arbitrary code with the privileges of the guacd process.
>=20
> Mitigation:
>=20
> Users of versions of Apache Guacamole 1.5.1 and older should upgrade to t=
he
> 1.5.2 release.
>=20
> Credit:
>=20
> We would like to thank Stefan Schiller (Sonar) for reporting this issue.
>=20
> References:
>=20
> https://guacamole.apache.org/
> https://www.cve.org/CVERecord?id=3DCVE-2023-30576
>=20
> Timeline:
>=20
> 2023-04-11: Reported to security@guacamole.apache.org
> 2023-04-11: Report acknowledged by project
> 2023-04-12: Report confirmed by project
> 2023-05-09: Fix completed and merged
> 2023-05-09: Fix tested and confirmed by reporter
> 2023-05-25: Fix released

--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--eB6vNXkSuzngeqm6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmR/bh4ACgkQsoi1X/+c
IsF2KRAAx3yfed6sVBi9ecuzhiioFPUix60mrEFOnmV2LgC5Y3A4TqZzUKMDuFan
eXeVMoBi3p0PhqwhudQsFwSHiutsGRx7SYYtQi2LyQpC9PcX7GbyxpUkFJWbwEQK
j4WoS8mix4Gwen7MCcBGcK1Enu4tLdpH463AVPv/ZyKVZY9hWSn9Q7y5uEb0jK/X
XGR8hV8n2RlC9HU1IgCJoOjwBh8Ep7bHTDMLADuS1wNW9gYl5BGVhhL92HeNd+gN
0r8beGzVmNaAARK52KQeOB4zjh1fLhNYvwhoee/5tlB22ctzfOqAtM0m8YGULAf8
nxIYebgSQqcmskq3lMvb+6WAbb0M5HDwmQKikX0ncdKLR5XQyaico99ug1DZKAIz
fUcamRH/2keBKsmcuAGv6GoRvVoG40goDfKXiYpqBl/ERW3ADC1zggbAx6geTsWj
oG3yp11i+jFYEqSj+2yG7nk8gO+mp/RXPosCV71uwrUKf6MUw2a0FOFbbi/JSO1m
m9MoIetr80rummlF9WbsVc1rllM1ZMGY1VFjeD5iLRUwDF5HMyLLVP6qN52UqCvf
8E5R9bbMjLQNjFDXgtt0PgDZlvWtnCiUosABDTfISHBNEqsL3JxG3PwF8oSuaYRq
PvrjiHExegLkKU5T/qwO7G8ftO+oFW2ngDQJBxCrOt6IXawFrkE=
=vfvz
-----END PGP SIGNATURE-----

--eB6vNXkSuzngeqm6--
