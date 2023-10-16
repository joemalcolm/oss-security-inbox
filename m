Received: (qmail 15519 invoked by uid 550); 16 Oct 2023 14:09:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7343 invoked from network); 16 Oct 2023 14:03:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:cc:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1697464996; x=1697551396; bh=Ecq72AfgjlaZ+463jrrr9u0FE4j2zbKSueL
	WmRC/XXQ=; b=snDX019x1I3f1zKfSV3hZU9sMIDdSUSn1ZLmhTRk0jovq3VUcAO
	ud2pfNGFVA6dBmt1EncgMw5Kq+db/T9rGmZTRAifvoqyr6NX4LNz4IZRahYH+mmg
	5joCbLXx8aDemUGcUpKyrvomyL32xxqZwCmjHUMT+iKZsBA6cbAscSXzW0nQzpy8
	wwkV7O6klVJZAFAZOhS8s+vpPF3JHawLjLybAPlBRlWgjWoYmZGhv/Cl+7pUp5bb
	nyjdiEl1XkprUMifYEK+YbdeEz7jEH/m53hiC2AtWujJMK1Xx9HbBj+DcTydDH4j
	LQ9AzZ60+kP7JVWDA+t+QHI0Ak1NNDfme3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697464996; x=1697551396; bh=Ecq72AfgjlaZ+
	463jrrr9u0FE4j2zbKSueLWmRC/XXQ=; b=QR5d+yE7UqUOwNeqFTnvU1JDXxt5J
	j8S2v+ZGiL7hEjPvs7H56JmOXMoINQlit/hLzLU8CtsGt+j95t7dIO+TaN8E2I6Q
	hmAmobyGmcsoMp7QWmizVCYADxScQg4wJ5PxVP41TEiyqiPYzmdzYVTOlANpgxO8
	l8H574BTc3Ze4/Mw6TWqe2I/attkNi4hU8FfPH4qnK4FrikYL/Sh/YPsenJ0ZQxY
	+dRBy9uCQJwXMdd8veWILAdI3V3ykp8vzdBKgwaZU0SnFbyKgGam4BsfhAt62fEc
	NGTq2Rib2hYqmGFaEoNkI/o+PjUEA9267kvVkFRMVbmLNGFuTEkKvIPVw==
X-ME-Sender: <xms:o0ItZXUF9NTaDCrx25lY-ehDQArGGHXp4QxcPrdUGu4kl2y4MRtSXg>
    <xme:o0ItZfmMn6568JDjRN_W9buNgl9QRCFDjuH5roGZ4dJCJU4n010LCHM998xwbTtX1
    -w2HNrjFkO8xhE>
X-ME-Received: <xmr:o0ItZTYUg40kPuvhZN8-lagZGYiq4itohSyUP2sOeRf2uLu4xPxXlqt5rRXqNsE-83l4VDIeksZHtGfbhbSbRKesIECHbq9UdxqvhtsRLe4rYBvi>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjedtgdeilecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeffvghmihcu
    ofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihesihhnvhhishhisghlvghthhhinhhgsh
    hlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpeffledvkedvvdeuleevlefgudevtedt
    gfehvdehteffudehtdevhfevtedvfedvueenucffohhmrghinhepvhhmfigrrhgvrdgtoh
    hmpdhgihhthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtoh
    hm
X-ME-Proxy: <xmx:o0ItZSWLo79oK-QGeMO4of3kiPIylMoyJqh82SVOmaDunjmkM8cTPw>
    <xmx:o0ItZRlBBSB1SAnclNVHKmRhbjXuYnCsWSI4S4NmKepEUIzxqBHDrQ>
    <xmx:o0ItZffJq4yta3DDwtnpDVXktbar81B5e9kiDSpegd_6noTQ4vlVog>
    <xmx:pEItZfQF4RE2Zd4INHFDy1SRbGTakMAGpdFfyfnmvZCtlOMqBtLLLQ>
Feedback-ID: iac594737:Fastmail
Date: Mon, 16 Oct 2023 10:03:13 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: VMware Security Response Center <security@vmware.com>
Message-ID: <ZS1CommxbnxkvLaK@itl-email>
References: <20231016014814.GA31197@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vNufFrOWd0/Ym++h"
Content-Disposition: inline
In-Reply-To: <20231016014814.GA31197@openwall.com>
Subject: Re: [oss-security] CVE-2023-20867: open-vm-tools: Authentication
 Bypass vulnerability in the vgauth module

--vNufFrOWd0/Ym++h
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Oct 2023 10:03:13 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: VMware Security Response Center <security@vmware.com>
Subject: Re: [oss-security] CVE-2023-20867: open-vm-tools: Authentication
 Bypass vulnerability in the vgauth module

On Mon, Oct 16, 2023 at 03:48:14AM +0200, Solar Designer wrote:
> Hi,
>=20
> This was brought to linux-distros on June 6 with "scheduled public
> disclosure on June 13th, 2023."  There's a VMware security advisory that
> says it was published on that date:
>=20
> https://www.vmware.com/security/advisories/VMSA-2023-0013.html
>=20
> and patches are available at:
>=20
> https://github.com/vmware/open-vm-tools/tree/CVE-2023-20867.patch
>=20
> but the issue was wrongly never brought to oss-security (or at least I
> couldn't find it) - so I am correcting this now.
>=20
> Quoting from the linux-distros message:
>=20
> > Description
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > CVE-2023-20867: VMware Tools contains an Authentication Bypass
> > vulnerability in the vgauth module. VMware has evaluated the severity
> > of this issue to be in the Low severity range with a maximum CVSSv3.1
> > base score of 3.9 - CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:C/C:L/I:L/A:N.
> >=20
> > Known Attack Vectors
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > A fully compromised ESXi host can force VMware Tools to fail to
> > authenticate host-to-guest operations, impacting the confidentiality
> > and integrity of the virtual machine.
>=20
> Quoting from the GitHub URL above:
>=20
> > The issue has been fixed in the open-vm-tools version 12.2.5 released on
> > June 13, 2023.
> >=20
> > The following patch provided to the open-vm-tools community can be used
> > to apply the security fix to previous open-vm-tools releases.
> >=20
> > For releases 12.2.0, 12.1.5, 12.1.0, 12.0.5, 12.0.0, 11.3.5, 11.3.0
> >=20
> >     2023-20867-Remove-some-dead-code.patch
> >=20
> > For releases 11.1.0, 11.1.5, 11.2.0, 11.2.5
> >=20
> >     2023-20867-Remove-some-dead-code-1110-1125.patch
> >=20
> > For releases 11.0.0, 11.0.5
> >=20
> >     2023-20867-Remove-some-dead-code-1100-1105.patch
> >=20
> > For releases 10.3.0, 10.3.5, 10.3.10
> >=20
> >     2023-20867-Remove-some-dead-code-1030-10310.patch
> >=20
> > The patches have been tested against the above open-vm-tools releases.
> > Each applies cleanly with:
> >=20
> > git am        for a git repository.
> > patch -p2     in the top directory of an open-vm-tools source tree.
>=20
> Alexander

How is this a vulnerability at all?  A compromised ESXi host can
compromise the guest already, unless confidential computing technologies
are in use.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--vNufFrOWd0/Ym++h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmUtQqEACgkQsoi1X/+c
IsH4Yg/7BQvHyth+d7abCAhkQ7PrAUksQMeT3xMbW+hiXvelujTZSXvp8mx5wSOC
9Vv3hd9Wq+AM6Vks49R39r3Q1oqQ7VS4POu+6Bh2iL7QBhm5DjP//RkGik4PxiAJ
74vicOKNERGOp73zQ0haiNZu4/lP7OW7eUndoeby3NHEp1Yn0ew4dudrDVwTYVmV
FCZ+kHS8EtoUQ0mD7EneggpRQh+rxS1UQ9sM6mnLB7eUJ0DMQVzIfbKKXyCra8nr
NC8TM/RdAuSMkuuH4vctXgWgo2BvvcL43oXUUevIyfMGRlzM7Ww0yPlN+VzrFb7r
jtvKFg5uz7qZg3OhykE97fi4F0WeRvQQF1Dj7wR5zI9s6DGdIFZTTTVtxAof3t/5
0FQYI8Ajbe7ZFLEZXc2pkM5Ri6oLNts1thvJe47bTYqQI0sprJFlVE9eTZ7UmEQb
CxV6SnzRmIILsxNaDC/W7ZrkG00/KXZz4OFAvfcxnf/s24+kCRjDNJz3nKJkifdh
C2h8fFM0FJ+c9innR2YeTcDYrWIYPy8jpYECw9ESWCojeFcDkJYHTRJM0l3iQy21
tFCj/dAra6c023PmvpRB38bi3inHzv6VTcu90NT+STMjt0bS+mlGx17DNdGH04HG
AbIry1+eUuPar/ycoBYyaKGpjSAKt56APpSCgsngirJzN8sw9sc=
=IE+X
-----END PGP SIGNATURE-----

--vNufFrOWd0/Ym++h--
