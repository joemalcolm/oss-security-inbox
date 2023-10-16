Received: (qmail 25862 invoked by uid 550); 16 Oct 2023 18:29:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6084 invoked from network); 16 Oct 2023 18:15:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1697480094; x=1697566494; bh=2RimEs5Q4j6dpDqVOFvcmtTS1vKSpMmeqTp
	Pgmv0Avs=; b=Jiv76Rc4gL/LY7DkKm7I5pcXbDBpd+Ln15Za2gQeS/RbVzvaB00
	m7Jo1NF5m0DRY9fPVHi36fGUpjrq5QjWQ/FLOQW4Be5EJMEVOSgJFQwJu7AbV7NZ
	0wZtWGlBfHtNDgls4YDl4t6hFowigBZFdtsg3fUSUAdJytU4Tw0EA3Ld4t2NtvNw
	sWsyie0KicqP55ar+CziwLsdvmo2rpkXDRqoJLWuU7RHJlp2ejLX3prq6B4LI4GH
	NHtqY8PVR5nhCSgoUxuMlRWwKzsQsp2N4fArBR5doxXdGvnEpMxGUCeVOckQijGT
	V/o+EQtvIIx3/tvSqWO3h38WePIRg8vceOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697480094; x=1697566494; bh=2RimEs5Q4j6dp
	DqVOFvcmtTS1vKSpMmeqTpPgmv0Avs=; b=Oy1IBgA/E5AYAqaXIcO8qpjQkBO4M
	K5LEfil+NiZ1WcXdqkWQlq4iCHIBr87lkFstyPGsbtuuYpSZ7huBPzmaYVhOMLAj
	8CUt/epoElCRQ29m/4pm70aTNOLOBg1CE+Lzf1Q+neza46apKME16n0lL+U1MigG
	71p1G9W1x1X1jPN7OqjNpeueK2CFbSZ+HeBhZz3kS46Za6vG7l6ChNuxUqZunItC
	aw/PXhhNbFD1YW6K9FeTJVzxsz4mGLx28ImwLxIShRvBpYGhAbnetLQ3vsWXz4gd
	DSygCgqZVluwctydVaIgYEs8FNPW3IzBO4WwvsPNaMu55h3YH2Xdss/IA==
X-ME-Sender: <xms:nX0tZcDNRjGaWsdq5an0g8XdQv4qo1ynfwV55lXPeKuGb_45_aC-cg>
    <xme:nX0tZeg29gwPNKNKm6AVy2aeOAc6oMXdS6A-ritZNFRCSvU_5PomFt0qFV7srTD8h
    42d8BJ1IivuYCY>
X-ME-Received: <xmr:nX0tZfkoan9JscGZoUxgZXK45KDCTTe1aeuMHEtnrzeltd2GlivWFRorseEuo3LFrcqVxxdaiTmsmRgtJDlx_VuqQEcSGSY5YqtK5OF_W_Jmvkqp>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjedtgdduudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtjeenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    eptdegueffudetlefhhedufeethffghfefjeeifefgkefgheejudelgfehgfdujeehnecu
    ffhomhgrihhnpehlihhnuhigfhhouhhnuggrthhiohhnrdhorhhgnecuvehluhhsthgvrh
    fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgs
    lhgvthhhihhnghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:nX0tZSyUcplalvFoS9cCW5pNZUIJzT3z1cwVaz2rPFFYNjVSKXK52w>
    <xmx:nX0tZRRjvEP5HNtXC61CuoyMGZ7CRczLZXGsxo-TfBykhaaHP8qObg>
    <xmx:nX0tZdbDkEcjCZZPiF0LcCiWQLYM1BemTv3hAp0emGb5-XFehRbbpg>
    <xmx:nn0tZYcw-9zwfVjDXm0-_1Z2lzLBeadPQVTFEacN4rywU0VCES_Pmg>
Feedback-ID: iac594737:Fastmail
Date: Mon, 16 Oct 2023 14:14:43 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZS19nIeWpxgqfWim@itl-email>
References: <ZSyUUSF_-3YbT14k@workstation>
 <20231016080850.GF10758@suse.de>
 <2023101612-snare-dart-c7cf@gregkh>
 <ZS1CSkbTjDYdGq8F@itl-email>
 <2023101622-imply-tidal-b6cf@gregkh>
 <ZS1UPsZo1VyHDAkV@itl-email>
 <CAMr=8w4N87t24jrRzw+hLHnhB9EoYDtjgic8yVPBqv6jJY_ZvA@mail.gmail.com>
 <2023101605-outshoot-undying-fb27@gregkh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AQ6hyMnPsBqoWESi"
Content-Disposition: inline
In-Reply-To: <2023101605-outshoot-undying-fb27@gregkh>
Subject: Re: [oss-security] linux-distros membership application of openEuler

--AQ6hyMnPsBqoWESi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Oct 2023 14:14:43 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership application of openEuler

On Mon, Oct 16, 2023 at 06:49:38PM +0200, Greg KH wrote:
> On Tue, Oct 17, 2023 at 12:15:30AM +0800, Aron Xu wrote:
> > Hi,
> >=20
> > On Mon, Oct 16, 2023 at 11:34=E2=80=AFPM Demi Marie Obenour
> > <demi@invisiblethingslab.com> wrote:
> > >
> > > On Mon, Oct 16, 2023 at 04:52:32PM +0200, Greg KH wrote:
> > > > On Mon, Oct 16, 2023 at 10:01:44AM -0400, Demi Marie Obenour wrote:
> > > > > On Mon, Oct 16, 2023 at 10:23:50AM +0200, Greg KH wrote:
> > > > > > On Mon, Oct 16, 2023 at 10:08:50AM +0200, Marcus Meissner wrote:
> > > > > > > Hi,
> > > > > > >
> > > > > > > Regardless of your viability of subscription status I think w=
e also
> > > > > > > (sadly) have to consider current geopolitical issues here.
> > > > > > >
> > > > > > > As far as I understand, US companies and US citizens are not =
permitted
> > > > > > > to work with Chinese organizations and/or Chinese nationals.
> > > > > >
> > > > > > They can when working in the open on public projects and other
> > > > > > open-source-like things.  For "closed" lists and groups, please=
 consult
> > > > > > a lawyer as the rules there are quite varied and depends on the
> > > > > > countries and companies involved.
> > > > > >
> > > > > > But to be sure, again, consult your corporate lawyers, they kno=
w the
> > > > > > rules and the issues involved better than I do.
> > > > > >
> > > > > > good luck!
> > > > > >
> > > > > > greg k-h
> > > > >
> > > > > The question is _who_ should consult their lawyers.
> > > >
> > > > The people deciding if this group can be added to the closed list as
> > > > they are the ones responsible for it, AND then if the group is adde=
d,
> > > > the members of the list need to talk to their lawyers to see if the=
ir
> > > > country laws allow them to participate in a closed group with such
> > > > members.  Many countries might be fine, many might not be, it all
> > > > depends on the participants and what country laws they must abide b=
y.
> > > >
> > > > So in short, everyone involved in the list!  :(
> > > >
> > > > good luck!
> > > >
> > > > greg "I talk to too many lawyers" k-h
> > >
> > > The result of this is simply that those who do not have access to
> > > lawyers on staff will not participate, which will reduce the value of
> > > the list substantially.  I suspect that most people who report
> > > vulnerabilities via distros@ fall into this category.  I know I do.
> > >
> > > Therefore, I recommend rejecting the application as too risky from a
> > > legal perspective.
> > >
> >=20
> > Not matter what would be the outcome, I'd like recommend an article
> > from Linux Foundation which I think is a good read:
> > https://www.linuxfoundation.org/resources/publications/understanding-us=
-export-controls-with-open-source-projects
> >=20
> > I'm not a lawyer though, but here are a few cents:
> >=20
> > 1) There is no general restrictions against Chinese organizations and n=
ationals;
> > 2) Open source software (which is publicly available) is not subject
> > to EAR (Export Administration Regulation of the US);
> > 3) According to =C2=A7 734.7[1] of EAR, "knowledge with the intention t=
hat
> > such information will be made publicly available if accepted" is
> > treated as "Published" and is considered publicly available.
> >=20
> > If I understand correctly, distros list is targeted to open source
> > software issues with a policy[2] of "Please only use these lists to
> > report and discuss security issues that are not yet public (but that
> > are to be made public very soon)", then everyone could retain their
> > peace of mind.
>=20
> But note, the information is _not_ public for a period of time, and so,
> might fall outside of the information described above in the lf article.
>=20
> Especially given the content of the information as well, this isn't just
> "here's a patch to add a new feature for foo-baz" type of stuff.
>=20
> Again, if you have questions, please talk to a lawyer from your company
> as only they can answer it properly for your situation.

Please do not assume that everyone works for a company with lawyers.
There are plenty of people who are self-employed or who work for small
companies without legal teams of their own.  For these people, =E2=80=9Cask=
 your
lawyer before doing X=E2=80=9D is the same as =E2=80=9Cdon=E2=80=99t do X=
=E2=80=9D.

To be clear: if openEuler was granted membership, this would ensure that
I did not post on distros@ ever again, unless a trusted entity (such as
the Linux Foundation) made a public, broadly applicable, and easily
interpretable (by non-lawyers) statement stating that it would be okay
for me to make such a post.  And maybe not even then.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--AQ6hyMnPsBqoWESi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmUtfZwACgkQsoi1X/+c
IsGiPQ//aPy1g4P6eQK9S1CtrsITiQYxcyeNjcs4MKlwgw/fmmEIsoeqIsLMsXtN
yGRsw3yLl7vf2FxJ0UQH5tkIQKXiTpJJmS4vt2Hv12bLPKqFxdzilqGGBW+JZrBV
kKOpCxazDC+PPh9S4PwF/f3cH3WH5Up507lyo+tDc0P2BDlJS4o4yoAfjcd/LFsB
+PH5EaSOPq6wDdMIRLFEGhtjg90CStNhz1IhpH3AanzY/oda7/6P3irY9p1yfBsp
WamNVGP3q4vfx0CltK9f5/Q9ZcRB36liEnEUDp5wpKOOGX5BZ3x/TJB7drsoWZBF
i3DkJqvtsBEF9uDtgzQZCBs0vm916EQg7MMmPG+PeSAsdwr1xCu11q8vivlnIuaB
wmirmYTIpzawbNZQvlfjQi98dEXa7RDnO4akPpXme+ZGXMlgnW8WO71aD666zkTA
aeQZYHDliDb+2O5cc/xsxuVn4MOsQzFM8rvhJxlwfOLUA3fBnNVO9/dqUD+S6/l0
b6bTBISDJvkkQJgpWvggz7SFFwlcj6xrwSkItZxRkSD4CldrPS2s3w9Fp/BcSEy1
R6i9hdemAtAZZexI3YxIuLLGOIE4x0UL6Fusxu6n9LNFB+JF+NzDOKznnKtUpifm
NP2oWKZ0lx6nplhFV5tyzhnMGuRRE3r2QiSGDdZwDZ4Cn/q2/QE=
=pRmJ
-----END PGP SIGNATURE-----

--AQ6hyMnPsBqoWESi--
