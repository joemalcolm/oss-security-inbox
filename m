Received: (qmail 7405 invoked by uid 550); 16 Jan 2026 17:11:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7767 invoked from network); 16 Jan 2026 16:56:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=michel-slm.name;
	 h=cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1768582564; x=1768668964; bh=QjdeWVOtPM
	aQy4S8tKJyQN48wztsAxf8YtB044oJie8=; b=F2CwMftCR4qQ+0+oXhGR+jDpCc
	TUTbjfSCPgBALSWn2BJGj+UqgMxQ/T0eQIzYjUvOJKfRT+RvI6U3RMUa6POX6ytg
	tqfa/vrN5XqafHE8s0SHoTRD7nqWsgMfu3Uj/7V9gu7hWcQ38i0ce1IoOcd1JAQ0
	pf0eueVgNfs3k0T2+x3acs9rmmt3eZYygY9OpiaMWXtzo4DIZ+ssKFih9HsME53x
	XOjXqRj8/jt6ix8EBvIZlz3YfBrC6rRkEf/wzNSlxKITKLjo1WDkHwD3yqbJbREw
	UgFhXpZebGuOBS6cn2gUP2KQnVLNy+Mykid/JXjvTxdiEmDJluSRfAXnhurA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1768582564; x=1768668964; bh=QjdeWVOtPMaQy4S8tKJyQN48wztsAxf8YtB
	044oJie8=; b=ksvCINAMVxvjdldecBQK7trdD34rArPrIgGf6T4otSREFmf6VX7
	Wi5ZeCt22o9C9lUnWBRlgpDVVSm6zVFluJS4YrRcJoCc1I8mvC+VRxd+4YUaE4CY
	3WUl+zPb+SJ7YHuALkjKaMZQnOb981K7XbeROZbym3NIatQWL7n4YAFUZSIRAb3B
	FQDeEWcabMWJfihJZTG3kUTJETH3YlafGS7fhqkxiBGhTapi3/VGPV5k5PH819KN
	ronS1dvZVLX55dSMI9A5VQyyDSTv3ZtumwZY8PPeLKyGjgjzzQ8XVoHOg4NjAyAY
	QLtO9mTH8ebOvmmNS6vFRvCcgz5UG/l72tg==
X-ME-Sender: <xms:pG1qaalLuWHaFnmrc51F9NpVlImyzQWrIKBw_nphSk3w0k4If86DIg>
    <xme:pG1qaYwhSwphHXR_4-uAPnC_PslPPLzGh8VxRS8G6OZ7GitbU-x6WtgogZxFVBw2L
    4iNJga8HmVgwXlkbmzZ35tjnfHwF2yGqbyXn0bPixeLNRib2uQTFqw>
X-ME-Received: <xmr:pG1qaeR7U7M0LH2krR6tfNqod3TKJKytIOhvOQqO8hOa_E9wn_OYJzyIlrTBGyvkaVU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduvdelgeejucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkuffhvfffjghftggfggesghdtreertd
    erjeenucfhrhhomhepofhitghhvghlucfnihhnugcuoehmihgthhgvlhesmhhitghhvghl
    qdhslhhmrdhnrghmvgeqnecuggftrfgrthhtvghrnhepuefgvddvtdeggedttdeliedtve
    egfefgfedtueffteeigfeguefhhfevgfeiveegnecuffhomhgrihhnpehnohguvghjshdr
    ohhrghdpgidrtghomhdpnhhithhtvghrrdhnvghtpdhthhgvhhgrtghkvghrnhgvfihsrd
    gtohhmpdhsuhhsvgdrtghomhdpghhithhlrggsrdgtohhmpdhkvgihohigihguvgdrohhr
    ghdpfhgvughorhgrphhrohhjvggtthdrohhrghenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehmihgthhgvlhesmhhitghhvghlqdhslhhmrdhn
    rghmvgdpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoh
    epohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:pG1qaTsZgLIlWvpYNtwQjcD-gaJs-7ITaQokUzkvLJuCBDRsELvL2w>
    <xmx:pG1qaYu1viRQgpEEkM8ptmeQwUGvHwWMWGRAC2-nI4QaHtH5sSKwTA>
    <xmx:pG1qaRwbHaSYi0Gh3JC0OdaNDUJypGzTP87KT6kQetLNrcpRHb0KiQ>
    <xmx:pG1qaWi8jltboRy2BdZeP2j3ya-eOuPO7SxZYRwWMfI36kpscDelSA>
    <xmx:pG1qaR9Gr91-3VFNx0tzrb7jiaA_cSiDY1-Ux31TTDk98FGOIWWZmBHg>
Feedback-ID: i71264891:Fastmail
Message-ID: <1ce0f2e4f6ac2d3d78bd1316cd51bfe91bd8edbd.camel@michel-slm.name>
From: Michel Lind <michel@michel-slm.name>
To: oss-security@lists.openwall.com
Date: Fri, 16 Jan 2026 16:55:53 +0000
In-Reply-To: <aWb05sqft073wame@netmeister.org>
References: <aWZdhW5WioYfH8Iy@netmeister.org>
	 <3323802b-3be3-4bad-8b70-8ff90758407b@oracle.com>
	 <aWb05sqft073wame@netmeister.org>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-x+QYfZRI1/jH4o27Swlb"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
MIME-Version: 1.0
Subject: Re: [oss-security] NodeJS Security Releases (CVE-2025-55131,
 CVE-2025-55130, CVE-2025-59465, and others)

--=-x+QYfZRI1/jH4o27Swlb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2026-01-13 at 20:44 -0500, Jan Schaumann wrote:
> Alan Coopersmith <alan.coopersmith@oracle.com> wrote:
>=20
> > The node.js team has also published a much more in-depth discussion
> > at:
> > https://nodejs.org/en/blog/vulnerability/january-2026-dos-mitigation-as=
ync-hooks
>=20
> Thanks for that - this link would have been useful for
> the NodeJS team to share on their nodejs-sec mailing
> list.
>=20
> > with a shorter intro in the thread starting at:
> > https://x.com/matteocollina/status/2011137343323865196
>=20
> Here's a link that doesn't require an account on, uhm,
> _that_ platform:
>=20
> https://nitter.net/matteocollina/status/2011137343323865196#m
>=20
> -Jan
Do we know if older releases are available?

The analysis seems to be ... inconsistent on this

* The NodeJS blog post does not mention old releases
* The Hacker News indicates versions from 8.x and up are all affected
https://thehackernews.com/2026/01/critical-nodejs-vulnerability-can-cause.h=
tml
* SUSE thinks versions 20 and below are not affected
https://www.suse.com/security/cve/CVE-2025-59466.html
* I can't find a RHEL security advisory yet, but el9/c9s ships NodeJS
16 as a normal 'ursine' RPM and maintained versions are only shipped as
modular RPMs in streams (thankfully EL10 does away with modularity)

RHEL/CentOS's nodejs 16 does seem to get CVE fixes backported in 2024,
after that branch has gone EOL -
https://gitlab.com/redhat/centos-stream/rpms/nodejs/-/commits/c9s?ref_type=
=3Dheads

Best regards,


--=20
=C2=A0_o) Michel Lind
_( ) https://keyoxide.org/5dce2e7e9c3b1cffd335c1d78b229d2f7ccc04f2
     README:    https://fedoraproject.org/wiki/User:Salimma#README

--=-x+QYfZRI1/jH4o27Swlb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRdzi5+nDsc/9M1wdeLIp0vfMwE8gUCaWptmQAKCRCLIp0vfMwE
8r2IAQCjm+Mh2buR6q6ZrH77J1HCX+IvkzGt0Msh3YtD2yvaDAD+PTPHB6sdHSoK
eL3oj0fzyVGxQpOvoFEPSSmQCYd8ogU=
=GFB7
-----END PGP SIGNATURE-----

--=-x+QYfZRI1/jH4o27Swlb--
