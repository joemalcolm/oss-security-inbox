Received: (qmail 26024 invoked by uid 550); 29 Dec 2025 17:05:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30078 invoked from network); 29 Dec 2025 05:21:27 -0000
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com> <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
Date: Mon, 29 Dec 2025 00:21:16 -0500
From: kf503bla@duck.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com; h=From:
 Date: Message-ID: To: Content-Transfer-Encoding: Content-Type:
 MIME-Version: References: Subject; q=dns/txt; s=postal-KpyQVw;
 t=1766985677; bh=uf7muC30NG3PObLvbxCs95WRzNKch7TrgPhbQAm3IxM=;
 b=GRlTPY8gtdzLwICjg9rpFyX5w5ISm0Pg81a6d4fOjNUqTzA2iXdn1qPgUOUOaWviPXrCIVzUS
 7r8N6p8eEorKYahESir45hfngWZ1D1HIlxXykVi37Bx0+vkHkKZhfRbyUaEJzFoyUJV4AktsF8q
 eeP1v+a+dZMp2ld3D/cNUoc=
Subject: [oss-security] Re: Best practices for signature verifcation

then what do you suggest to use? i hear it all the time "pgp sucks" but wha=
t's the alternative huh?

>=20
> In light of the recent GnuPG vulnerabilities, I remembered that OpenPGP
> is almost never the right choice. CMS/PKCS#7 isn't any better, and
> X.509 is also bad except that its extremely wide deployment in TLS
> keeps it alive.
>=20
> See https://www.latacora/com/blog/2019/07/16/the-pgp-problem/
>=20
> and https://soatok.blog/2024/11/15/what-to-use-instead-of-pgp/.
>=20
> --
> Sincerely,
> Demi Marie Obenour (she/her/hers)

