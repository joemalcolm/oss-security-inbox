Received: (qmail 7403 invoked by uid 550); 3 Feb 2024 00:00:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31958 invoked from network); 2 Feb 2024 23:17:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1706915961;
	 x=1707002361; bh=YkaToJU5RpkGuoNlAeKjZr09li26Zv9Tg+eyfWO6pH8=; b=
	P2a6DEjISPDKc9DLEoDa/27FuMiEXlxjYPEfTPB+h1ygd+UyJd0uRm54SwFAK6Hq
	7xiI7GYxInMOffqPZuu6xSV/OKfaj2i35fNEM2z6G2m4bmNkeh05skPxv5++goMY
	EsIVG0HkzdFBqJNjEfd+t+XukTGCJOLPODNN0B5Ql6eJW75ZdO5Y0o/oOdtyvKFj
	Uk+6vWYXcoWC/yiLmtiVDJRVnkyD8zyea3bES9faNFLjIeFQRaMTWPTbfk/eD7er
	cwLG1KAXoEWT0FFknPXHoP8ThGjR1Ev7BjR40ThzhDLMsDbYBiWHR9UsQM3KEIlH
	UOsbpzSgfFIwkzh4gS8y7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1706915961; x=1707002361; bh=YkaToJU5RpkGuoNlAeKjZr09li26
	Zv9Tg+eyfWO6pH8=; b=NxSX8LhcHcI/qbM8FfkdAWAgUsoiCqKyp8Yvo0Evp7X8
	BsxnmyoovPZMhZBmfapKCE87Q7j5lDPfGrrv9jp1gpUdQphsN7O6B2/9zd78Zf8q
	wY4ivKYvx7O2eu6P326oteqPV+FWJRXD0w34jXKWOIvIiKTqDvE3Tc7eIc/71wOB
	7aWYY+zxDbUeibk75Xy8/c65ec1Rxmrt86aotAfY8vVLKOmM8Kj0QaDuX8nWoAHk
	W3KbjJGl89DHQxteWBWXf3oiPPll9H3TxUz2eHrdu26PA1yQk56RndzPJ2p+TYF4
	b3IqUG2fXDTzQvSbRz3f5mZWWhhk1P7zP7w62jUlrw==
X-ME-Sender: <xms:eXi9ZRHgDRw0TiQ3dSoH91n3DfSFwfK19gIW7WhGxr5dBWZylZ49TQ>
    <xme:eXi9ZWXJ2f5zxcvuY-7vzR18QDDzXamZm_7zyCI4r6pWg4vyxaOcLug6VWDFHLA8n
    Rl2fEYjw-W7WQw>
X-ME-Received: <xmr:eXi9ZTLWJ2Tn4u8qqzrKU_tI_ay3GXl9MIsBOdG0GwXhrXOPsP7jx0nEicTtI81VpW0rPNZ_7UmY2f5U-pPQ0LwGHFDnu5-JssiBFniDo2t8IZ3F>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfeduhedgtdekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtjeenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epgeefjeeitedvgefhtefhfeevffffgffgvdfhgefhhefhhedutdefjeefleekuedunecu
    ffhomhgrihhnpehgohhoghhlvgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhl
    rggsrdgtohhm
X-ME-Proxy: <xmx:eXi9ZXGLYoZXOpcOwMZ2-OfohQESlPlRtvRYVy4cuagueWWl9aABhg>
    <xmx:eXi9ZXWprIfZOZrr6n-pQOtdUyJAhaCPjmmSV4tnWXq_nS4UyqdT2Q>
    <xmx:eXi9ZSPhhRN4V47w4daRii23wSa-B4PvTMnH1-jOY73k_6_DXKBCgg>
    <xmx:eXi9ZeDjhWTqfVO89HfI81hj9H7XINclagnuP32wjhM2TKVoA4i5mg>
Feedback-ID: iac594737:Fastmail
Date: Fri, 2 Feb 2024 18:19:18 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Zb14d12OhsridZ3o@itl-email>
References: <CAKLnGtR3cgHVQz0kTmGVJAaT4nKvSejAZvbMGONTe=f_e9fSYA@mail.gmail.com>
 <20240130142524.GA21216@openwall.com>
 <2024013010-jockey-kindred-c6cd@gregkh>
 <20240130214500.GA24892@openwall.com>
 <2024013003-clubhouse-mauve-222b@gregkh>
 <Zbmav6mcBVq0zGGy@itl-email>
 <36C1AFC4-7142-4557-9127-658BABE0AAF5@chromium.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="StJez3LCs9toPSQ1"
Content-Disposition: inline
In-Reply-To: <36C1AFC4-7142-4557-9127-658BABE0AAF5@chromium.org>
Subject: Re: [oss-security] Kernel vulnerabilities CVE-2021-33630 &
 CVE-2021-33631

--StJez3LCs9toPSQ1
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 2 Feb 2024 18:19:18 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Kernel vulnerabilities CVE-2021-33630 &
 CVE-2021-33631

On Fri, Feb 02, 2024 at 01:24:58PM -0800, Roxana Bradescu wrote:
>=20
>=20
> > On Jan 30, 2024, at 4:56=E2=80=AFPM, Demi Marie Obenour <demi@invisible=
thingslab.com> wrote:
> >=20
> > On Tue, Jan 30, 2024 at 03:01:24PM -0800, Greg KH wrote:
> >> On Tue, Jan 30, 2024 at 10:45:00PM +0100, Solar Designer wrote:
> >>> Thank you Greg for looking into these issues.  It's great that most
> >>> longterm kernel trees appear already fixed.
> >>=20
> >> I've taken the one remaining missing fix into the next round of kernel
> >> releases, so all should be good now.
> >>=20
> >>> For CVE-2021-33631 (the ext4 BUG), both the distro vendor's and NVD's
> >>> CVSS input vectors specify AV:L/AC:L/PR:L/UI:N, which means the
> >>> vulnerability can be triggered by a local system user at will and
> >>> without additional privileges.  I'd say that deliberately getting the
> >>> kernel to work on a corrupted filesystem requires at least one of:
> >>> physical access (AV:P) or privileges on the system (PR:H) or user
> >>> interaction (UI:R).  However, there's no way to encode this in one CV=
SS
> >>> vector.  Also, in the physical access case, at least the availability
> >>> impact typically does not apply (would be A:N).
> >>=20
> >> The "interesting" thing here is that the project in question (the
> >> kernel) does not consider "mounting a corrupted filesystem" as a real
> >> attack vector at all.  There's been long discussions about it, the most
> >> recent being last year on the kernel summit discuss mailing list, and =
at
> >> the kernel summit itself.
> >=20
> > The kernel itself does not, but there are downstreams of the kernel that
> > do for at least a subset of filesystems.  These include Android and
> > Chromium OS.
>=20
> ChromeOS Security here, and this is correct.

Good to know, thanks!

> >> project itself do not.  The disconnect is one that drives people who u=
se
> >> sysbot tools to create fancy corrupted filesystem images with the goal
> >> of getting a CVE for their CV, crazy on a weekly basis when the issues
> >> they report get constantly ignored.
> >=20
> > If someone finds a vulnerability in F2FS or ext4 that can be used to
> > compromise the kernel by crafting a malicious filesystem, they should
> > report it to the Android or Chromium OS security teams, respectively.
> > It=E2=80=99s a verified boot bypass and I expect that it would be in sc=
ope for
> > the respective bounty programs.  If Android mounts FAT and exFAT in the
> > kernel, then vulnerabilities in these filesystems should be reported to
> > the Android security team.
> >=20
> > Google requires that F2FS and ext4 are secure against malicious
> > filesystem images, so they should be the ones responsible for fixing any
> > vulnerabilities that require a malicious filesystem image to trigger.
> > Fortunately, they have the resources to do that, so this should not be a
> > problem for them.
>=20
> Vulnerabilities can be reported to ChromeOS and Android via https://bughu=
nters.google.com
> If any questions, can reach out to chromeos-security@chromium.org=20

Thank you!  I don=E2=80=99t have any to report right now, but I will report=
 any
I do come across.

> > Could this be documented somehow, so that people know to send reports
> > against f2fs and ext4 to those who will actually fix them?
>=20
> We will document something on the ChromeOS side. Thanks for flagging this!

You=E2=80=99re welcome!  Would it be possible for ChromeOS Security to take
responsibility for triaging (and, if the problem is security related,
fixing) ext4 syzbot reports?  My understanding is that this would
address the main complaint of the ext4 maintainers, which is work
required to deal with bug reports that are not from end users.  The
same applies with f2fs and Android Security.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--StJez3LCs9toPSQ1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmW9eHcACgkQsoi1X/+c
IsHqHA/8CCFXz3QpS7hoZBYq0cEu1TRjURXyY5psdc5YGW67Cgj1slIF98GR/DZf
oHXlNrQIcDkNRDnKLiBZ4Ob7bvInpbOGEIU3b9FISOwuxTlDUVX+0T6+PydJnwnT
5Bxm+T5Sck0tpx4QJneEE/kS4FlpJ/KtVqj+syi/H4AtCKP6ACnW2SpjFq1dhdl1
FGdTnvvmtwrowUM6dHkkmEYE/+Ng53SI+ZV/ZZeMniVvSkvNe1dgx30YL6gmKOmB
C8BsqMSznTaorTdHdsE5AFC/NGFmxnD9OZs22Uv0lWOr33hpy0NB9j0wocio/on1
sFvzgqEX9fxtdPe83oxTCSHng8jSXzt9NRXISNtEikPEMu59jcLXmOVwQUX5E/0G
wRknz3IAbfu3bqUmq0xEDn8Z00lKEj58Q1FIgps4sshZzWpPXgp4yXA9TxvOVrVH
PUHa6GY5PW2Wud096qi1rPMsCYdjWUuX9sj5hO6uoC6btv1yhCAezmvBq9wFSi2c
pGEeu9VXMJSqHtHBiMSFnHeJYuEA5t3juY1+mo4s5MCSfEzUcPjGnbK1ryALgd0R
ZeehSL5fS12rjlhcqawauFUz40bBedI0OhzsAwp9uZnIDF5vdNpJpzoG7Z0onJsv
kX5gNOrb2D26CPGF5lk49Y1efaoRtaQPxZ3UlMtDuIlCdOFwIXU=
=+5Lo
-----END PGP SIGNATURE-----

--StJez3LCs9toPSQ1--
