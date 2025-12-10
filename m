Received: (qmail 30594 invoked by uid 550); 10 Dec 2025 16:12:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1466 invoked from network); 10 Dec 2025 16:08:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dorfdsl.de;
	s=default; t=1765382922;
	bh=h0q4NeftwUjNkEkwYrCtqNZyHWLBJO51G0Midb5msx8=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=69UIYNu5mQqnRU3Xt6zDPJgFW5F6ZcjLnh4tCkeMp23TOWypMgqrklg+mnrRyD91d
	 JlyjBHdKhss9WDLERXqjMvexgd/EL3RN+dhSpBAIhn/P3jSHYyYhP3Is76iBrs5vSG
	 xsH36mk6EjBL5rBgcuNnmVsB+q5RuStxXEtqjLq2g6hwcWWfJeWByxc+Mb85Ja1giX
	 /VpkLc1kG+JrMnEzrW2Bgq+c+usmm6Z1GAFc+SDKR67/YbFHcVpMw/WWLuP5u45Fnu
	 noaBQQW1nItEgpgaU2niPY7OJ+b6jP56xuIwVWhvpMeuRF6p73/9hQtzgzKxQsws35
	 00mhFnznd9/Ag==
Date: Wed, 10 Dec 2025 17:08:42 +0100
From: Marco Moock <mm@dorfdsl.de>
To: oss-security@lists.openwall.com
Message-ID: <20251210170842.1d69b326@ryz.dorfdsl.de>
In-Reply-To: <20251210113517.GF2622@qaa.vinc17.org>
References: <20251210113517.GF2622@qaa.vinc17.org>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/9y.iVYbQPAzFdRIxdUZqURi";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: Re: [oss-security] LibreOffice puts searched text into the PRIMARY
 selection (Linux, X11)

--Sig_/9y.iVYbQPAzFdRIxdUZqURi
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Am 10.12.2025 um 12:35:17 Uhr schrieb Vincent Lefevre:

> Under Linux X11, LibreOffice (Writer, Calc, Draw...) silently puts
> searched text into the PRIMARY selection when a search is active and
> its window gets the focus. This can yield such text to be disclosed
> to web sites (when one clicks with the middle button in some form)
> and to other applications using the same X server (without needing
> any action from the user).

This behavior exists in various applications like browsers, when
focusing the address bar (I saw that in Pale Moon). Dunno if that is
related to the GTK toolkit.

The common behavior for applications is that text is only copied to
primary if it is actively selected.

--=20
Gru=C3=9F
Marco

Send unsolicited bulk mail to 1765366517muell@cartoonies.org

--Sig_/9y.iVYbQPAzFdRIxdUZqURi
Content-Type: application/pgp-signature
Content-Description: Digitale Signatur von OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEpXefSZn9R6zNZtTQE76RLz2tRfAFAmk5mwsACgkQE76RLz2t
RfCJAxAAqyNW6CEyt27NNropUGP+BpdNw95ttQ3L6mh0coX2CIO6FKhjjICsaXYs
DO+6DFzFKNscLrIXI0WgyX38Bok61W4jmOJ2e9e7pB+g6yM7m/rpux+4qeRsZGbn
LfYtO+Cxa4ffPVPSpv/IIxfzXfO7aO0v88NlGtKBIu2pXIcpU2pikuaVWFBKtbId
rQh7waIiEfVRowiNT/+ARhUeuSKN7qAbb6CuII2t5D5lBWvSj2BP/CwCvaUn8hzu
Bf1tPtAbQs9bfTXspLNUXio/Xq5wXC0fGxgOuYEqPcUqiOQZ0V9dKV6HtqDD2UFy
Q1ZBmNLOJmTqWcoalDQPZG+kuGrgtlVIKMdK+YBL+Mvbkood4btNhPU+0eZHfOnR
M7+hslPrXCNjVnRPxeuJubqhgRaHP6zGMUauEst1FwVjNR9AyutppaIDooWVVkf1
FTTwHgC9oxet9LyP0ijqI+oa6AU8VrR7PfYBxweQvUPsNw0dr8tKYJ78LtklDr9A
Wd96q31FuBIcmWJKEBwwgUrHRyh3zeF5W/fWX5fbIJ9pCZOwH98MVR34IY616vq1
rtdq7ElatF8WwTaS4yFZCC/VL61ZT0XrYsbUDCxxXIkGxtSBeCwHwJizfrGjlWhQ
EY3pKBK8Hi4R5De7f/zRVUX0zEgrVWUtgMgCWhCPiBp1jvj5Fec=
=VZlr
-----END PGP SIGNATURE-----

--Sig_/9y.iVYbQPAzFdRIxdUZqURi--
