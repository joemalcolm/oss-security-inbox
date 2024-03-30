Received: (qmail 27713 invoked by uid 550); 30 Mar 2024 13:36:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11485 invoked from network); 30 Mar 2024 13:30:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:Message-ID:
	In-reply-to:Date:Subject:To:From:References:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=cpkTKOaPzj6M4pG282vtIPlC+z3IihPDEwxrJcLNyMY=; b=Qu6IFWmrnqdDGsohGAi200FrSt
	1r/pnL30bYJrYMvwOoNPP9Lm+vWTrO6RE+Jw9LCp6rrvIHaJh0jW+vYDDKWWmFYiderKE8w0sQyyW
	emO6tRvySlAhum/GSedDW6HPGN+ibmon+9d2kgk1mO/7z0GBUehVWOAJWjlG8pYHMRrzltt9UQ7yH
	ZWDnbONWcRxJGY130OkraFSlP1aAmCgEBXFRYMDjYSEpzmYHtw+eOMNEd8kFFR6RHh3eDGBCPa5t3
	PSa7jFBV5sb4zonFHAAbcW69kHfDOHb1+XaaDXRQXXXDJ4xG7n7HNH2fRMntDZgRzGs8sVnN5zSgF
	gzmAUM1Q==;
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io>
 <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com>
 <uu7k2m$61a$1@ciao.gmane.io>
 <CAOp4FwT+kqoG1JRawFu6tkz0LUMgkT9RCVfh7vyaN3bbFkYx3Q@mail.gmail.com>
 <72a9dfe5-a88d-4711-bc90-cd9269124f08@schafweide.org>
User-agent: mu4e 1.10.8; emacs 29.3
From: Pierre-Elliott =?utf-8?Q?B=C3=A9cue?= <peb@debian.org>
To: oss-security@lists.openwall.com
Date: Sat, 30 Mar 2024 14:29:06 +0100
In-reply-to: <72a9dfe5-a88d-4711-bc90-cd9269124f08@schafweide.org>
Message-ID: <87cyrbzw2z.fsf@daath.pimeys.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
X-Debian-User: peb
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Bjoern Franke <bjo@schafweide.org> wrote on 30/03/2024 at 14:06:38+0100:

> Am 30.03.24 um 04:50 schrieb Loganaden Velvindron:
>> Github has suspended the repo:
>> https://github.com/tukaani-project/xz
>> Im wondering what is the next step for the xz project as a whole ?
>>=20
>
> https://git.tukaani.org/?p=3Dxz.git;a=3Dsummary exists and Lasse said on
> IRC he thinks he would make a clean 5.6.2 release.
>
> Regards

I honestly would like to extend my sympathy to Lasse.

This situation must clearly be a hell for him.

Someone asked what would become of xz as a project. I do hope in light
of this event, some people step in to help.

--=20
PEB

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJDBAEBCgAtFiEE5CQeth7uIW7ehIz87iFbn7jEWwsFAmYIE9QPHHBlYkBkZWJp
YW4ub3JnAAoJEO4hW5+4xFsLy3EP/091VIBmUgCTYgHZdxsHqqtWKRMeld1Dgl0x
MRsF8R9mmn4zwIBqquGr/9jkiJiIhET7IofTCfh6WUrjGmk0ebSGt5B1pDBklodk
N+/YuZeipHxUjHyyiCUCTGwqSHJHyM9k6viulSsdqFNSNUHuLvgCCvAKG57hONPI
TzC/gYZaODswCbofHHgPZwa5qIrwUAAJEvPr+4C/zTfND/8iIo6Bjx4g1vl4D35e
d9od7W39Exarr1hNd3LPD5eKzaFDZKOcHBmnTjtiDYPBh9MENEZfn/dLAy1Gos11
9v7w+n4UxmcRtWu7rTUrqPjRGBccsALSxv0BvjIiJOdVZHWNIaBdpwJV4rF8LmtB
1apHKEhunbKBMKGGjt+XBtDFAXCPx/fdHQYlyvofd2GEdekYQQ3hflgY6LRR1+iK
vK3MJXwGymXh9VoQOxupf/vdik/dQnpidL5meH9twgHnF/1gXFID0bpzJJJdFc3d
PoTfiizQOLGnd0ChCcOQC4AhoZojt+Dkm8MxRbogT9fJqsnzU7cDvx04bMUOu+48
yxoiT0cgnP4/TsdorvO42eIosnq8QdQXsCV4pyyD6315gzDbNHPdfTnm9fFqSjsZ
gqPfc7Jku8wC6nRIs5Srm70m7dSS+d11F/efgSLQfHNplCGmQZN9i5i7IfSzem+U
muyTyiGc
=5M3+
-----END PGP SIGNATURE-----
--=-=-=--
