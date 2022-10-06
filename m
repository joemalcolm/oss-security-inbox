Received: (qmail 6053 invoked by uid 550); 6 Oct 2022 17:49:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31787 invoked from network); 6 Oct 2022 17:00:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1665075610; x=
	1665162010; bh=NiHih9FjfhmYlI+lM00+khMNQU/oeYl0oyc8FijvFJs=; b=T
	z7KK7iUCLytPJvCLG2sZAC8XHkUWGPp9DPIuJITiwFnC5bZzYtlalbkUm37/yZQU
	Xf3IQf7u1y5oLAiPkbQCdRhnoQ2OQA6FmclWexGJCBmAnVrwIQw+0Q4FOiybK5Au
	bXXOq0bHkY5XehoiO9nnE/8MBVUqwIacLoZBuOjmwa3f5ROx8ygQk2yExIIhCyHT
	XBOlNHCsyUmWy3jFztkQVNIt0TMtw68bDb3mxDx3e2iB6sW4rq3skSt2SFXpT+37
	tKVXsZLSnU+knHsjj53TJIT1UwiFrFsLpB6I9Mj/Ret2tAxqjnWSl47cwsmrgoTD
	VvMCAVZoLn+xw6ub9KiEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1665075610; x=1665162010; bh=NiHih9FjfhmYlI+lM00+khMNQU/o
	eYl0oyc8FijvFJs=; b=eJAWc2R31rm9BDhs8q1PwzCpIAkoVAICOF9Y5Bw1Ibe7
	zo4RQVF3ykvm7rScvDrbfC4Xr/GWE8R79An3+lNCzm6zuvUryaGPDwwYnTammkWd
	CxJZWheGC3WbG/F9Q51N4UU5y5umdiGepxEa4A0ehg7//kVDTHiEwzhtoOiq083J
	df1CF/HdCjEaUoU7o3JtvRKNGbPswqTkqHEi5psV48TuxHUerr5o/uxsi1CEJ1CC
	E1Z/YryJss8sirNZ0jU1w9BejhzVV4CZk0ZAYnq2xYN2UJgPEsBLyKzjRrjQzYbf
	HaeXROPjYRv8agwwmDV+m1ExOwtiUYuV4YH06FPLtw==
X-ME-Sender: <xms:mgk_Y6G6E67C4BI8o9x_hGdxXWx3D9ycldZ4fim2W_p3VYmjVA4tgQ>
    <xme:mgk_Y7U4dcooKtIatHTSgbt5zul_AMkINlnKArkniU45IceOFrDC_p3edyFZhB8r2
    X7YeTajK5e9ZDw>
X-ME-Received: <xmr:mgk_Y0IbGLna-L1hKBLkcqLGUQSqwwC-Gur2FcPTNi1Ant1qo1LABJ67QEDB>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeeihedguddtkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepffgvmhhi
    ucforghrihgvucfqsggvnhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhngh
    hslhgrsgdrtghomheqnecuggftrfgrthhtvghrnhepiefgieefvdfgjeelfeeifefgjedv
    vdefleegleeifeegfffhgffffeffhfeuudehnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhs
    lhgrsgdrtghomh
X-ME-Proxy: <xmx:mgk_Y0FTfBm4OE7ql4cWqF89SwUs0qy_o9HQbxD_OqY55XBNze84jQ>
    <xmx:mgk_YwWd6-YchUcblhLsbDc1PTYb9DfOt-c2uIHTbYjeCaVEUglRbA>
    <xmx:mgk_Y3P15phd22CxX5V-9oYpYwk18anzWXpAcJlhY9RLqGN9D3cTfA>
    <xmx:mgk_Y5ee4OstydIM9Bl9_gibXWIt_2JTm1P4I65hQrj_6wemD52kuA>
Feedback-ID: iac594737:Fastmail
Date: Thu, 6 Oct 2022 13:00:03 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: Simon McVittie <smcv@debian.org>, oss-security@lists.openwall.com,
	dbus-security@lists.freedesktop.org
Message-ID: <Yz8JmGvc3Y6iYaKR@itl-email>
References: <Yz6XZSTsVQm7VKia@momentum.pseudorandom.co.uk>
 <Yz7r3ke7oXMBHJ5A@itl-email>
 <Yz722hsDFWr/hqGb@momentum.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="plmH6EPkyJ/X9Oac"
Content-Disposition: inline
In-Reply-To: <Yz722hsDFWr/hqGb@momentum.pseudorandom.co.uk>
Subject: Re: [oss-security] dbus denial of service: CVE-2022-42010, -42011,
 -42012

--plmH6EPkyJ/X9Oac
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 6 Oct 2022 13:00:03 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: Simon McVittie <smcv@debian.org>, oss-security@lists.openwall.com,
	dbus-security@lists.freedesktop.org
Subject: Re: [oss-security] dbus denial of service: CVE-2022-42010, -42011,
 -42012

On Thu, Oct 06, 2022 at 04:40:10PM +0100, Simon McVittie wrote:
> On Thu, 06 Oct 2022 at 10:53:15 -0400, Demi Marie Obenour wrote:
> > Is the memory corruption potentially exploitable for local privilege
> > escalation?
>=20
> It is not known to be, but also not known not to be. I'm sure a
> sufficiently creative attacker can convert almost any memory corruption
> into arbitrary code execution, but exploit development is not my job
> (I'd rather fix the vulnerabilities!), so I have not attempted to
> weaponize this.

I, too, am not an exploit developer, but I agree with your conclusion.

> > Are clients using libdbus vulnerable if they are behind dbus-broker?
>=20
> I don't maintain dbus-broker and have not tested or audited it, so
> I don't know how much validation it does. I would hope that it would
> detect and prevent CVE-2022-42011 and CVE-2022-42010 (which involve
> invalid messages), but probably not CVE-2022-42012 (which involves a
> message that is odd but technically valid).

Should different-endian messages over AF_UNIX sockets just be rejected
outright?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--plmH6EPkyJ/X9Oac
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmM/CZgACgkQsoi1X/+c
IsF1Hw//YZD9e2EFHkqIVPTMNtJ0ELACA9SydsTUFJ6zJ8+ju7YUzrmvJinDVZ4j
aOvKRsJrM/tB+B605Uq9n2J1YuMJzdSMQpQNG6NbTBlrPVkp/8xYUugmb7ZemzzL
4rTjFwOqDlESoxRrQwzsqHvO2Ry4NIkumlJe6sL17Y1tsaN1upwTxbkT+6tnnBju
U7oj9DRd8uMdS6s9SGJoXZS6Uqgslyth31x7w0fDJQB9Q3UGluINW4ux548A4KIl
TbWm/y0O/xhXpmQ0qArS4MfMyjit37gj9p+iKlZCUVVinQOsgovTPhacZezsxaFC
OeSiNIsY+tmuNnWcTAnu7AwjaYViZIv9SFn1OOOtt6CJbAin4y8nT9O01Ke1fo+g
BrKC0yw0EAN0jVM97lJNdDLuAAFfi5tPLjeorlA47rZX6ZGwbcrH0IZcRjbvIrHM
JCrdgH5jHEsqTyg+Y1DEjhNbGGYm+ZyxLiE7/H7eMTYnHqejompYPocUJ2oUgkel
rgMa+lLhcfUlAzGMhFsHfph5DGub5cnalZfTQ2kIvZFLalfkURWe5TE74zyONk/n
PZViuG2aIRTdmbVyGJW6SV3HQbC3eGqzwDzGg73lWBLGxYGsmOtjtOyIoj/+Gkdu
R6H5CNVa90sRCiSgalThL9RCzHqzqeHbNfnijXhUiMfisHNs9m4=
=P6OU
-----END PGP SIGNATURE-----

--plmH6EPkyJ/X9Oac--
