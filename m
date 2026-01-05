Received: (qmail 9274 invoked by uid 550); 5 Jan 2026 16:49:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7729 invoked from network); 5 Jan 2026 16:17:50 -0000
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on velox
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	autolearn_force=no version=3.4.6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linderud.pw;
	s=linderud; t=1767629859;
	bh=Sp0+vs+p0YJ1YCcFrIW3NgyiZzgNMJB3sU+MEhYxrmg=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=lJDjzi06oyvgyanHYAYpakT/4Mwly4z+USVkGQQFKk63jWprKpXHf+AT0f+5Lop2M
	 mhOvvKIwdiVhJLtQ32E9e7lmG4L9mBD8Z3CcBpeseeXA+UiK/JRTubO0CUMzcgUr1w
	 Ju/iRoxJG+bvmUpuCZyjeE5AaLVzjZURKRvPuRrfB46WjjaxBFysg3MMjfDB8fsbMT
	 CBa4quBLEuVG2pptNBAWlGjnDHbWDiTnfZBus2tHYUThV+CO2Z0pknG84XFHiNwSSp
	 OqAYJsNiSG8wVDrXA+X8h0HZH1mppe+ZlHqQXji39j/lWehzWb0BpDj003CwyBrlSY
	 kdcj9mIWzEePYXV5vC6g3mn3MNCmpyw/M8MBNEi92ZW0swCS+oWeLdVipUaZFXvxxA
	 0ODZikWRwNpIFs1axSbFzOe1EYaCQuNYqsQiFdCb2nD9CfgCMGm1evzAUBkSrnjflc
	 XeGyx/TeLk9zik5XGLGUgfLTkDztYl/Z2xR/hr+fy48hIc6R8Ov1QuNiugoNXyzAJ/
	 c98JrjImAHY/WUOXbCybc+MkAAx9Ofphhf4slrh8UwlYfZ+5DcHJEQLbrwuUspN36S
	 PKZyvMiX1dj/JUjTZNPmHw46T1og4fL/uLThi/nhteOnpYVOsug78o+nfZlnt+12rf
	 bfs7Bl8gYPCw1R4ut2gR4YgM=
Date: Mon, 5 Jan 2026 17:17:31 +0100
From: Morten Linderud <morten@linderud.pw>
To: oss-security@lists.openwall.com
Message-ID: <aVvj1GESJIik6puj@framework>
References: <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <878qei6bq7.fsf@josefsson.org>
 <87ms2y1d2m.fsf@gmail.com>
 <87eco91kzi.fsf@josefsson.org>
 <SYCPR01MB3661379F4E31EE1A57A2F310EEBBA@SYCPR01MB3661.ausprd01.prod.outlook.com>
 <7002eb83-6227-4de9-aa3a-bfe5cad62320@gmail.com>
 <ME2PR01MB36500CA1987170A857BCF637EEB9A@ME2PR01MB3650.ausprd01.prod.outlook.com>
 <aVuxyNKwrPhbE0SH@donburi.himad.notcom.org>
 <CAH8yC8mLpb6Gr63cQR2EmCfERvCjZ4qkcVgOtamki3cMFC1bnQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cevsnimuegsx3pa4"
Content-Disposition: inline
In-Reply-To: <CAH8yC8mLpb6Gr63cQR2EmCfERvCjZ4qkcVgOtamki3cMFC1bnQ@mail.gmail.com>
Subject: Re: [oss-security] Re: Best practices for signature verifcation

--cevsnimuegsx3pa4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: Best practices for signature verifcation
MIME-Version: 1.0

On Mon, Jan 05, 2026 at 08:01:40AM -0500, Jeffrey Walton wrote:
> On Mon, Jan 5, 2026 at 7:54=E2=80=AFAM Valtteri Vuorikoski <vuori@notcom.=
org> wrote:
> >
> > On Sun, Jan 04, 2026 at 11:56:06AM +0000, Peter Gutmann wrote:
> > > As an aside, is anyone aware of a single-source design document for w=
hat
> > > Authenticode does?   There's a million web pages related to the busin=
ess of
> > > selling signing certs, and less than a million on using it, but I can=
't find a
> > > single-source design doc, just lots of stuff in various places that I=
've
> > > picked up over the years.  By "single-source doc" I mean something th=
at
> > > addresses all of the above issues and related ones in one place.
> >
> > Are you looking for something more detailed than the Microsoft document=
 titled
> > "Windows Authenticode Portable Executable Signature Format" from 2008?
> >
> > Download from the horse's mouth:
> > <https://download.microsoft.com/download/9/c/5/9c5b2167-8017-4bae-9fde-=
d599bac8184a/authenticode_pe.docx>)
>=20
> Nice find.  I remember the document, but I could not find it in my
> collection of old documents.
>=20
> Also of interest may be some entries from the Wayback machine of
> Microsoft's site at
> <https://web.archive.org/web/20030210220956/http://msdn.microsoft.com/wor=
kshop/security/authcode/authenticode_ovw_entry.asp>.
> The original page was titled "Authenticode Overviews and Tutorials".
>=20
> Jeff

This is the latest edition of Microsoft Authenticode specification.

https://aka.ms/AuthenticodeSpec

--=20
Morten Linderud
PGP: 9C02FF419FECBE16

--cevsnimuegsx3pa4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEwQA0ZnZjToDJQPuenAL/QZ/svhYFAmlb5BAACgkQnAL/QZ/s
vha2Ow/+KE4hbntmKwqLcFSG6f4QbPFL3yzbAZxX+a25gARpxgz0nbvmiU9g2vSu
aD9oDG2GHSbW6f9Uby0+vniVgN+piOOEjy168zSsdc/6IQU5GgO/7mt5qCP7qprU
JFg7ch09PWKnkhVNiuAjF2lNqopNazYiEZFkGuE6l0SSDjof1LXU8ECWxCL9ZUbX
0MSdsz2t2cx/+gAQJdb1gJAbrJsS5WY0zQI3Pa1uzgHExFYSnhhPJM8h2fBVrpfj
7Y5a2Vsi9WH6+8z66YNm2Cy6Z8QM6yJVIVjSuy0YrBThtINNgHlo4RKeLjksN+eZ
PifbBdpfwPyqxSe+ajiu9LUO4QuxCiWE4jBTH0JyWpuBf4FLfm1wQWOGqiZB7AYd
T33wEIMCFLVDU7i/YxES/qChgvnpocK0tO/dPE/e3uidTvfXEUl4rjPKakctAlsQ
Y4s1djqX2/uheH5FfJR0SSNV518ftxJoKaFYUqyp1xXPQLTaTc0MuEK9i0ZsH6oQ
x9Ar/NdLuxIsTFhItcMNrfdrG0BWAoB79+hxFAxa6rLsWz10Vh8jLe45CnumiqHT
J6j/0rGrAJLgAK08JEWnAaEuOOux2edVUFXPMm2YJQaPtBY9P7Ctf4bWs98TBYG+
bvuj8kLQ5ok8cJu+1SC6W55Qn8YS2uhlusjvI1WfAhRB/7utf+k=
=mLMc
-----END PGP SIGNATURE-----

--cevsnimuegsx3pa4--
