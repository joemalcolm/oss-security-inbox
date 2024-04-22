Received: (qmail 25716 invoked by uid 550); 23 Apr 2024 09:31:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31935 invoked from network); 22 Apr 2024 22:10:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1713823831;
	 x=1713910231; bh=8/+cEvpIIjmJPtZWVmEzI129a1iaKPRcaiz5mIv6QA4=; b=
	TM9gZoPWiD+sH43g8/yY4YoQQ/JkovqOX/JdqosfVZceVL4FlvKKysg8eDG7/xAQ
	TGo0Qv2n2c9GiZg9ClD6hsgYSl84Liw4Je8PEhw+FSYCXQlJe9eFRTF+k2Zk264T
	odnxJ/WCRURWDC2NCnHxJiDfRYDsSvJy2T7RIjYX0pcsxTwcl3gZRhRWKTSq0QdY
	fGL5bF1koLHJN+lUIhgmYw+PYeY2bZPlWwLqhftE6wfpEQzAbjnIEQR8ug5jPQV7
	HIu/BHqAmC7Bq2DfocA1uEAvetfWg/4DTXITuu9pjoJX+q1Eplh0aMWojrBMaQys
	ajn1foUrgDqS25yLQ9riHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1713823831; x=1713910231; bh=8/+cEvpIIjmJPtZWVmEzI129a1ia
	KPRcaiz5mIv6QA4=; b=b82Nv7tStcVfXZM9+i2dhqyNtfqEpBkxz6xtW1GsnmeE
	Pc+Ex4r2hcFzvGiZBXNxC0aPKQTrPlq/4Zj74syHBihEMi+bGOvbi9UPKnm236Cm
	JQN9hNXzhtqfP4KiKgl3HRZDZ4PekF1yYCv/uivPhl7rkUTWDY7ATMYFccm3cggf
	U7yuwgY1REgD//DQ9xkk76mzVqGAC+X5lHBjoWtEuScgf99bRUPx/2hznKwj8+ui
	+jj6gpGnS/hAla+ZR6cP3JCCvr0VsXEIUxJkmVYs7VO9K8HIIxJtpyNmQmU/0ISl
	2VCtoEdAPnji24YWrFw9WwbDzb8haY4scG7wQ3sZQA==
X-ME-Sender: <xms:V-AmZnyXj2cB9zNugyHnQhZvu7qo5JBdpq3ky9PxrpmxGiGtWLkeNg>
    <xme:V-AmZvQDg5CQMHfsGjcTsHFQGBFI5rDRkaWfIVHHuKC52DC3i3zmHX2GwAks78Qsr
    dLm9zk2kgnW9ho>
X-ME-Received: <xmr:V-AmZhU_pnHNpREHFoqHGyQ1H6SLmHP1GoNAfAi9GCQeijWkEj1sUS-GDA2HgQSfaabwHWI8Ock7FN2LFeeEMvDMSvEXdHLI_-vdNQeUbhOBxi8Z>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeltddgtdekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epkeetheejteejgeetlefgtdfffffgveehueetveevheegvefhgefhkeffgfegtddtnecu
    ffhomhgrihhnpehgihhthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhl
    rggsrdgtohhm
X-ME-Proxy: <xmx:V-AmZhgmtWIkZPHFvZMMVo2LmYt26Y_vaRBcLzI-meEvFglG8bbK9w>
    <xmx:V-AmZpCMvvEuo6wYEzRpg0a_YKJ72wiArWo9Cp96AXf8CZYzOGcr5w>
    <xmx:V-AmZqLVERZH3YW3ZcAITM_F9m7W3bXSdjlV1kst26ILHDe3HBXCLA>
    <xmx:V-AmZoATfUs5UXQtlmnWFrQBxwqxZ8A61Oabk25H-lHe7EvyXVJbwg>
    <xmx:V-AmZspJ8jiu0DhhsXJ3Tg0hj5THFdpf6x1oKyDw8BZHhuf3fAswF7pj>
Feedback-ID: iac594737:Fastmail
Date: Mon, 22 Apr 2024 18:10:27 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZibgVYyI4hQZl1xP@itl-email>
References: <20240414190855.GA12716@openwall.com>
 <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com>
 <20240419154435.GA7046@openwall.com>
 <ZiKo7shztRpgvAIC@remnant.pseudorandom.co.uk>
 <20240420181211.GA12463@openwall.com>
 <s7YhmQrnIRbmomFiJi0MJSYAPjcHLyd18qqgj0vxVww8pXjjmpmzh_TKTfQe-aLvqDRRXaVowt__uXBXONKKDA48d1uKDyeEuSiH0yM0uUI=@protonmail.ch>
 <20240421200625.GA16869@openwall.com>
 <KN_TQotLatAri5wrOvD-713YsGUE_Slhytf8p8fywmPlELdOZhnceWk_tldcKnaBIBZoJUajwZNkGu6xzj38x6JsQtyMzBpcNwOeHe3fa9E=@protonmail.ch>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fRrdZYV340eSs77c"
Content-Disposition: inline
In-Reply-To: <KN_TQotLatAri5wrOvD-713YsGUE_Slhytf8p8fywmPlELdOZhnceWk_tldcKnaBIBZoJUajwZNkGu6xzj38x6JsQtyMzBpcNwOeHe3fa9E=@protonmail.ch>
Subject: Re: [oss-security] Linux: Disabling network namespaces

--fRrdZYV340eSs77c
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Apr 2024 18:10:27 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Mon, Apr 22, 2024 at 02:33:56PM +0000, Jordan Glover wrote:
> On Sunday, April 21st, 2024 at 10:06 PM, Solar Designer <solar@openwall.c=
om> wrote:
>=20
> > In what exact way would nested namespaces bypass the security design of
> > Flatpak? Is this about the kernel's attack surface exposed by
> > capabilities in a namespace or something else? I guess capabilities are
> > also dropped in the nested namespace?
>=20
> In flatpak, apps in container communicate with host through portals[1] us=
ing dbus.
> Portals identify particular app through unique appid (i.e. "org.mozilla.f=
irefox"
> for firefox) and grant some permissions according to that. appid is read =
from
> /.flatpak-info that exist inside container and is immutable there. If nam=
espaces
> were available inside sandbox then malicious app could leverage mount nam=
espace
> to mount crafted /.flatpak-info containing arbitrary data and lie to the =
portal
> about appid - it could tell portal that it's org.mozilla.firefox when it =
isn't.
>=20
> [1] https://github.com/flatpak/xdg-desktop-portal
>=20
> Jordan

Why is the appid read from /.flatpak-info, instead of having the flatpak
process that spawned the container pass the info to the dbus proxy along
with the FD used to communicate with the container?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--fRrdZYV340eSs77c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmYm4FUACgkQsoi1X/+c
IsFWmxAAm9DGOoq2aEKMRgMDqeFZif4naSZAIdb7qRdWGyt+3yG8prvPxKGUPYzw
rQ/x/vBxbSF6DY/An6HqBMkJh2OLiiU/HnQIaLFDhnA1Gc1FThS5/I0kUHc8q1/t
4BzbGEIuFH7GO+mVfqzZzNDO5IUciUEvW8BSuAQqTqWr9aVDPNe1LnuuxWYUutLx
uGSVo2nECpQ+3bwNb54IqfeNdUoE4Ohf8XUpyt5NBXK9asGayy4H42T9iGkH00bk
sbmUhdkMgtAS4tiKH+ZR/4TkPL0ame0cjKJVSkxMv4vpQxAYAKgI+8m/ee5FCBN1
k4IJDdjSlR4p8Nf6hBhpydVVRQHOkOUaTdmm6IGdUXiWnXEcc6PCEunLPtr3MgxR
1A5lUV1AFEinAO3Rf5YLT2wMGyF9fyjkmHfWv5S0PPm/kZDXtPI6I/HC+sqDovF3
3xbWmczBwEtq2GICGh5IHUyRQ7alQf8ZO2ZspwguhZcKJC54nwUNS9igBcwwN7HA
DWazvKjRCpOolLkVmukanaJF99F9m8JQi5n13px7wuQPY3CLEhJZ0UaUd0C5/Kpe
n2tQB8yFy8a8JMBnck/VX8p2F8UsDt3RTQB1teo29avuKcX1ItEMf0bJzHLw+P6Q
ky8o2u1fKdWi+qYR2kgo0FGQiwFc0Kyqb5dUmiyzm87kObDnerU=
=hdgs
-----END PGP SIGNATURE-----

--fRrdZYV340eSs77c--
