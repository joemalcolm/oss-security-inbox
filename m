Received: (qmail 1149 invoked by uid 550); 17 Oct 2023 12:00:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3340 invoked from network); 17 Oct 2023 06:00:55 -0000
Date: Tue, 17 Oct 2023 08:00:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=archlinux.org;
	s=dkim-rsa; t=1697522443;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GGJxKuP79uoe6Wpy3z5WsdtvpmJAzD+595VjSRAHZXw=;
	b=tRC1vBz1ZmiE7/08VD+28jNzL2Wx2gXhStuKnG91fdRV+Pk3945/7uFK7tdAzWQra7l2B1
	aLeeX3uB3tmiltoSNQpWxP0q3eIRDXmE8iimtL5p6SZdXkuen6UQ3ckN2zFKN6adpeqABX
	WpWFBReYrduT+KdJhGQ+r+AM7pgmK6CX8bNRJFnnTJCeIKWK1Lc4ji2W7wnOcBGpvvKyKt
	cKc8X3fHXQgW8iXu1v1B9bxKkTQcDyQ9TJIGnMSY04gFUlKujiAWkH+nV+zlZJl/ngjORE
	KdGwQMTksw9tU4bpW+pYttowsMKvCpekhJKZJudgIP01ClGUI5YIOg7VZTB49YoJv7C63a
	vykh5bJ/tKZt/Za/OH8w9k8cU0pkV4Fq2GFTQRJ+Ym9LThJT0kQ9vfUqYbvK6IU7Whg69J
	Tvz9A7eNg/v/bAuaLVkMEJFWjurjK9YLWN/tt0eSlgvkIRE/G7QZrvmn4zUHbVGJaAlxon
	/AzTiBKB5E/YXF63BsVWTy0coHFcmCJVMB3Q/77a31tIk3k71SMvEmS9FWniG5frx2yJSi
	8Kw3LMjHrcn8b1FLWAjyXF23/GS6fAanU9vOU3IUu0IKHu0YYsDG4SxhQPaZlr4wnUzEeh
	cBeAvGqbpqVbgXshYvJIGTQjRUdORdDIirNZmgle3HW2gs9X5r058=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=archlinux.org;
	s=dkim-ed25519; t=1697522443;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GGJxKuP79uoe6Wpy3z5WsdtvpmJAzD+595VjSRAHZXw=;
	b=zmyFpNtuq1++p4VbGRflD+xpTOLyXgTrlrl3q1eTLCotiZpj9jeJQvc4Jh5mFDQrJOlG2y
	oaFNl3gSDPeetHDw==
Authentication-Results: mail.archlinux.org;
	auth=pass smtp.auth=foxboron smtp.mailfrom=foxboron@archlinux.org
From: Morten Linderud <foxboron@archlinux.org>
To: oss-security@lists.openwall.com
Message-ID: <gmqx5z67cuzsknj5rp4qxtkaqfhpsnxzzr36dzmwk2b5r6hqoz@wtbvfm5sj2qg>
References: <652920e5.c80a0220.3bcf7.2251@mx.google.com>
 <956475122.7707678.1697228495449.JavaMail.zimbra@hlrs.de>
 <CAEg-Je-uxMbiYDADX=+eyTQF+xnjAYA0u1HoygqDa+G=Y=4f-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c5pdzbtl6gxjb2hq"
Content-Disposition: inline
In-Reply-To: <CAEg-Je-uxMbiYDADX=+eyTQF+xnjAYA0u1HoygqDa+G=Y=4f-Q@mail.gmail.com>
Subject: Re: [oss-security] linux-distros list membership application - CIQ
 Rocky Linux Security Team

--c5pdzbtl6gxjb2hq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 13, 2023 at 11:19:18PM -0400, Neal Gompa wrote:
> On Fri, Oct 13, 2023 at 8:07=E2=80=AFPM Martin Hecht <martin.hecht@hlrs.d=
e> wrote:
>
> > Well, assuming there was a security team in these projects able to obey
> > the embargo regulations, wouldn't they have tried to join?
> > But, nevertheless, what is the relation of the organizational structure
> > of these projects with the current application of CIQ/Rocky, after all?
> >
>=20
> The point I'm making is that SIGs do not count because they cannot
> obey embargo regulations. No open project or community project can do
> that without having some mechanism for private controls, which is
> antithetical to the community process. They fundamentally are
> ineligible to join because they cannot keep anything secret.

This just seems like a personal opinion projected onto the relevant projects
though. There is nothing preventing you from getting access to patches and
distributing them to relevant package maintainers for preperation under an
embargo.

Evidently there are three atleast 3 community distros already participating=
 on
the linux-distros list, namely Debian, Arch and Gentoo. So while Fedora mig=
ht
not have any way to distribute patches, please don't infer that this applie=
s to
all community distros.

We do this in Arch Linux, and I've personally handeled several embargos as a
community project.

https://oss-security.openwall.org/wiki/mailing-lists/distros

A relevant piece of information is also the well-written Gentoo Pre-Release
Disclosure Agreement they have with their package maintainers.

https://wiki.gentoo.org/wiki/Project:Security/Pre-Release-Disclosure


Personally my impression of Fedora after trying to pay attention to their
security meetings and general security planning, all of this seems to be
handeled by Red Hat. So Fedora might not have any need to join the Linux di=
stros
list themselves.

--=20
Morten Linderud
PGP: 9C02FF419FECBE16

--c5pdzbtl6gxjb2hq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEwQA0ZnZjToDJQPuenAL/QZ/svhYFAmUuIwEACgkQnAL/QZ/s
vhY7Pw/7BjEADg6zj+U6GIL8xJ2i4DlAFHLVkYwIXRcu895caBBz4V3Bqh6sO3yp
jabgkqrIY36dDAu2ry/hUnQgSzm4+9O9x9hrXLWERZ8DBiSpX6vya4fJmJniVBw1
84yXPXZZFArDputCBs0ZaAXDduguHl9xvtL72SiN205iSXVUaITdn5SlmIw3Ed2y
zGjhfkwqhRNaSnFmglUaJL6OgTyGK7P1VDSIjI0eoe7r45HKrbEacTQcgAgcPiZV
F87HQYOnsHFHbN/aVEfdPjYJ26HSgjMF30RoKOJzUJIBtsFtkqtfm/d58eDwWAMm
Ve9BCdiq47GwSlLq+/ACLBs6jtFG8QTJ52DO7DU+kCV2caWmD8fe2e1nnqh8Xcy8
7h2W7dE32fDKOGu/wjot7rQ9cvV3zrqshHNRvEzu5FTCQSEHym4MPLFnwguwHhm9
6Ot4tMlm1meLMRZrpVTAAxMcadAiNM6WHbCzROH01wK+kWJJO/q71hSN0YZ60kHY
mcEP62UfFS6SLf9cmwdQQ4OSD/9UmyxBfHFNbXOtwU+2F4rSUxEDniwGv1g8FL+K
/lrHx69HHToVliuzkEgANdDzEC/QwQr22M7Pnmix8e5J8tnRnDIh8UfqnuzB7VmX
R0zm8TJBOTv0ZaS1Qdy7XgNQ8F2wk8fXsTUEak0ULVewHrTqJbc=
=9PNS
-----END PGP SIGNATURE-----

--c5pdzbtl6gxjb2hq--
