Received: (qmail 31828 invoked by uid 550); 1 May 2022 18:52:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27965 invoked from network); 1 May 2022 14:38:16 -0000
Date: Sun, 1 May 2022 09:38:01 -0500
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Ym6bSZb8S/5OVcuV@gentoo.org>
References: <Ym1X82gykRQqVzd7@gentoo.org>
 <24e8-626d8980-3-6d44cb00@230483808>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wRCRRTZSrrP5ki3i"
Content-Disposition: inline
In-Reply-To: <24e8-626d8980-3-6d44cb00@230483808>
Subject: Re: [oss-security] CVE-2022-21449 and version reporting

--wRCRRTZSrrP5ki3i
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 30, 2022 at 09:09:16PM +0200, Christian Fischer wrote:
> On Saturday, April 30, 2022 17:38 CEST, John Helmert III <ajak@gentoo.org=
> wrote:
>=20
> > On Sat, Apr 30, 2022 at 01:24:36PM +0200, Christian Fischer wrote:
> > >  > It=E2=80=99s not that they didn=E2=80=99t/can=E2=80=99t verify, it=
=E2=80=99s already verified,
> > > they=E2=80=99re claiming those versions no longer being officially su=
pported
> > > means they can seemingly omit them from CVE reporting.
> > >  >
> > >  > Which is dangerous, misleading, and nonsensical.
> > >
> > > While i fully agree with this be aware that CVE entries could general=
ly
> > > contain incomplete information:
> > >
> > > After requesting an update of a CVE entry via the MITRE CVE forum in =
the
> > > past to add additional affected products for a different vendor (which
> > > wasn't even the assigning CNA like it is the case for Oracle here) my
> > > request was rejected by MITRE with the following rationale given:
> >
> > The CNA that assigned that CVE is Oracle, so Oracle is the CNA to talk
> > to to make changes to it. MITRE won't make changes to it as they're
> > not the CNA behind that CVE.
> >
> > >  > A CVE description does not necessarily contain all the affected=20
> > > products or versions and is not part of CVE ID requirements. The
> > > products are documented in the CVE references.
> > > This is also matching my experiences with various other products /=20
> > > vendors and related CVE entries for these.
> >
> > Right, this is documented in the CNA rules [1]:
> >
> > "8.2.1 MUST provide enough information for a reader to have a
> > reasonable understanding of what products are affected. If the
> > affected products are not explicitly listed in the description, then
> > the CNA MUST provide a reference that points to the known affected
> > products."
> >
> > [1] https://www.cve.org/ResourcesSupport/AllResources/CNARules#section_=
8-2_cve_record_prose_description_requirements
>=20
> Yes, indeed / in know (since then) but it wasn't clear if all participant=
s in this thread are aware of this fact.
>=20
> But i just have noticed that my posting was only partly relevant for the =
quoted message and the question of the OP "Why is this being allowed=E2=80=
=A6" because i have missed that Oracle (if they as the assigning CNA are aw=
are that Java 15 and 16 are affected) AFAICT indeed haven't provided any re=
ference so far about all known affected versions / products.
>=20

Their April 2022 CPU (Critical Patch Update) Advisory, which is a
reference of CVE-2022-21449, is pretty comprehensive:

https://www.oracle.com/security-alerts/cpuapr2022.html#AppendixJAVA

Supported versions affected: "Oracle Java SE: 17.0.2, 18; Oracle
GraalVM Enterprise Edition: 21.3.1, 22.0.0.2"=

--wRCRRTZSrrP5ki3i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElFuPenBj6NvNLoABXP0dAeB+IzgFAmJum0MACgkQXP0dAeB+
IzjWQA/6A9IbNTRFgPCefkrpohzNsFpGMYpVOUxU+dQwS4VhKzdSS+kPIvpdBgMc
TaRz9sSvwhkj4WgLJUDV3iuukYXO/oJlskDcWlgHHr3KygmiBRpE9UHZuhliSD42
xNfRBC8POEkKTk1du4fFT0ErNxP/S1QOjdDogIHtYbJFb5lBDqSXRk63qzyLDqXz
9CNmQzLfJ4p6PZepn2SJPNrQ6YE3TewbkJQeQAMq6Fk4tUueRYBWr2rLOxL8BdRL
d9J4wtYgQ/NvJnnPFUEgEGjn4WSUhtqqKbdeyJLkZyGm1ksvCqPqrc6SmldiwXwC
ci/2f2iGFIBtlITQSwFoRtE+5/GKqp+A9WssDRRGIY9WXiT7++1kYawDTSqVCnle
HPiPblsvOwSZV2OXdeWPaXgB6GPiTgcMzZ/a+59759EvSq3hA5Z72oMO+cAGTZ4D
gHuTwBfb3Ruzqp4CSZl4awIxKGchf/MxmhSXWvQymlRmmZx0RNL6/qefoo84u2aU
yToJY4iUGXyM3PGO3dYcE5C5qcuwXKcynIdADuq+3uRdaR1IdVb2QV7lPrryedzH
HNWpfftR3KKuIthGXp1xWj64Tmh63fLSzTbpalDdUglxRzuK4nPQqejuqgup4YCE
39OKRcmuMApAmDHedCPKTEy6/wdVMrLbLDXH8ur1uOzmPbWiSzQ=
=vUpC
-----END PGP SIGNATURE-----

--wRCRRTZSrrP5ki3i--
