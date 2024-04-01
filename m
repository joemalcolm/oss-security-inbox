Received: (qmail 24250 invoked by uid 550); 1 Apr 2024 15:29:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28304 invoked from network); 1 Apr 2024 15:13:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ipsumj.de; s=js1;
	h=Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID; bh=l7XRa8h+wMCCs2Yqi/UJL7SNsxanAGSlvgQ0xoPLyJM=;
	b=XdEM+BAA4MKaix74q1uNt4mPDRHR/qvRZAbgPj66rO+DvgOqjxgdend9cb3WnHfWESRgl9xp9uSXf3ZpYe+YWxUDpsyHI61+qQdebKk5b1WKPV5iKYaHfz6KonceANfhfokudtrmxrGYClG9O03C6jayfFl/PC3vPiAghTgwohsV8SxmUrZ+IAYeDRpRINoRPf9B7GjwEozrzVry8ayhbzQBW1h2XkiPoAsH+Wzj+CvweT5EEtEL9RgxDO/HqyJRMBczrS/SOfKzIb9X3YKz09vPNp7irvXKcdKy8wsnB/M+Yc6ZuyeWJvwYr0RErkjw08hVOK9hJZlXEX711b3ZHMntCKUy+fw80CdFwgPTWHLVNv6bOYRX78cL1IeUiDmN7H5z4yIvEtSEUzhlaFmSF3+HPJ/Mf/q+HRhb+R6bj6mxniwL/17zqdwpR8EUccDFlVy9pquhexMYALImSl/hUTEZoNI6kC+IIautN1X/LjEtbCZbve3xmz53wlz4qTQzkWOxO8BHUohPD1KnqHlUrGO51bY8KNZO8iT+sckdLZNhDUqF8/2itplB12ddiuYR5L6Yz66SIzybQI9GtSEAbskV3ozGA7Ztltp9VpzqmHOLFFXP6BO2FQxFrWbDfPgatDsIDR13SExTQhJxAzQAnG+8HXbSesBHzxuu6s9iRj0=;
Message-ID: <3561b05d-5ad0-41be-b50f-687e13d614e0@ipsumj.de>
Date: Mon, 1 Apr 2024 17:13:10 +0200
MIME-Version: 1.0
To: oss-security@lists.openwall.com, Jan Engelhardt <jengelh@inai.de>
Cc: takao.fujiwara1@gmail.com
References: <r57psoo4-64q4-4nnr-qp6s-q4n32584698o@vanv.qr>
Content-Language: en-US
From: HW42 <hw42@ipsumj.de>
Autocrypt: addr=hw42@ipsumj.de; keydata=
 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
In-Reply-To: <r57psoo4-64q4-4nnr-qp6s-q4n32584698o@vanv.qr>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8DTxwGoihXgv0zxFCpORPedB"
Subject: Re: [oss-security] From xz to ibus: more questionable tarballs

--------------8DTxwGoihXgv0zxFCpORPedB
Content-Type: multipart/mixed; boundary="------------axyUhpH7Me8OnUaYjIUCb20f";
 protected-headers="v1"
From: HW42 <hw42@ipsumj.de>
To: oss-security@lists.openwall.com, Jan Engelhardt <jengelh@inai.de>
Cc: takao.fujiwara1@gmail.com
Message-ID: <3561b05d-5ad0-41be-b50f-687e13d614e0@ipsumj.de>
Subject: Re: [oss-security] From xz to ibus: more questionable tarballs
References: <r57psoo4-64q4-4nnr-qp6s-q4n32584698o@vanv.qr>
In-Reply-To: <r57psoo4-64q4-4nnr-qp6s-q4n32584698o@vanv.qr>

--------------axyUhpH7Me8OnUaYjIUCb20f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jan,

great that you are looking for further problems. (Just to be clear, I'm
not associated with ibus in any way.)

Jan Engelhardt:
> In the ibus repository at https://github.com/ibus/ibus ,
> commit 0ad8e77bd36545974ad8acd0a5283cf72bc7c8ad
> was tagged as refs/tags/1.5.29-rc2 (+signed) on 2023-11-09,
> and a disted tarball was made available (but unsigned), and Linux distros=
 have
> imported it (file checksums all line up).
>=20
> https://github.com/ibus/ibus/releases/download/1.5.29/ibus-1.5.29-rc2.tar=
.gz
>=20
> Comparing this disttar to the git repository and favorably
> *discounting* autotools-related files and (what appears to be)
> vala-to-c transpiling, I'm left with benign, but unexplicable
> changes. It seems the git is "older", as e.g. one still finds "beta3"
> in the diff, but also the disttar's ibuscodegen.h has an older
> copyright line and an incomplete cherry-pick from
> 8f00d67b809036b0b76ae257cfe7e102bc8f1dec.
>=20
> *runs away screaming*
>=20
> In light of the xz revelations, I thought it's worth pointing out=20
> this class of problems.
>=20
>=20
> $ tar -xf ibus-1.5.29-rc2.tar.gz
> $ git clone -b 1.5.29-rc2 https://github.com/ibus/ibus ibus-git
> $ diff -dprux .git ibus-git ibus-1.5.29-rc2
> diff -dpru ibus-git/engine/simple.xml.in ibus-1.5.29-rc2/engine/simple.xm=
l.in
> [...]

That's another generated file. See engine/{gensimple.py,Makefile.am}

> --- ibus-git/po/de.po   2024-04-01 14:08:16.555237247 +0200
> +++ ibus-1.5.29-rc2/po/de.po    2023-11-09 07:10:08.000000000 +0100
> [...]

I'm not familiar with the gettext workflow. But IIUC those strings to
translate are extracted from the source files. Why only de.po? I don't
know, maybe mtime of checked out files triggered an update only for this
file?

> diff -dpru ibus-git/src/ibusunicodegen.h ibus-1.5.29-rc2/src/ibusunicodeg=
en.h
> --- ibus-git/src/ibusunicodegen.h       2024-04-01 14:08:16.568570535 +02=
00
> +++ ibus-1.5.29-rc2/src/ibusunicodegen.h        2023-11-09 07:09:53.00000=
0000 +0100

Also generated see src/{unicode-parser.c,Makefile.am}.

But yeah, this makes auditing really hard. The translation of SCM
revision -> distribution tar should be auditable fully automatic
(something like install dependencies && git checkout $rev && ./gen-tar
and then getting a bit for bit identical file).

Also probably a good idea to not check-in fully generated files at all.
This makes the SCM diffs smaller.

Simon

--------------axyUhpH7Me8OnUaYjIUCb20f--

--------------8DTxwGoihXgv0zxFCpORPedB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEqieyzvOmi9FGaQcT5KzJJ4pkaBYFAmYKzwgACgkQ5KzJJ4pk
aBbfHhAApJPgEOXT5bvJhx8hrhWfF5hFNojL8KQvcNQsQ//iLSKcJIXy2/QTF7nC
jnf8pX560wl0Rul9bJL2z64tEMhXLsSKmbb0sGS6As8pfbVrC5ICBKt/4f8+VRof
RcGtJ8jCFoTfvOA/8OSZyEZhocASRK2lFRb1zuZR7gIBA6J7/bA1Tt+mltJWutQ2
fxguFPrqalVXVt7z+YXiWyF1Xqqdrqxm0js1UvX6MOUnBzIqnUoLqxSzXXjO8OMY
O6b8g3780MTvFtaSrAEo6zFNOGiuyBU2mw0enYYH9J6RSpduSM4Gzd5Rdjod0vAb
8zr3srCSuOQpnCP2CbmCbaU64c/zVaiVDhH67o9851T5/L2J6WEO4ECYUOZg5gRB
75hYMAmiRwnb3uiNxHrjtXPrgbghpIma/KRNzCwql4EZ4V2mvYNjRxm1TWKiu+hH
cB9oBhisaY8kr0UM3wh8cb/4lN+xJoX9+D6PVueZjkThrZz/bJ3lpWWW7BSHqS5W
lfCljBXYq7jLojTAeSnHyr/GvNe2x8l7kqIoh8YS3fYMsgMQehsU1mHwJGSW/fLU
WdVfGbBK3qnQdNADwfOZE5Mmvc0HoAg6FbYBvOxsTc56PVKLYzisOHmfifLAmBKl
aZtkw41XytqHvUvFXD+7QjViw33I5mj8jW/Ko9iMl2338jD7LI4=
=bjYw
-----END PGP SIGNATURE-----

--------------8DTxwGoihXgv0zxFCpORPedB--
