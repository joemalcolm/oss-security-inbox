Received: (qmail 17441 invoked by uid 550); 28 Sep 2023 21:08:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30387 invoked from network); 28 Sep 2023 20:42:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1695933760; x=1696020160; bh=m/nAAVTAuyuZLTfCwDWmBPb8Glz1ZN67Mib
	tXNRooiU=; b=tVo4sA14rHIoazxx/lRevNYxvTqrPbSZGQpbpe9IpFvf9MXOk7l
	ncDWBPIONdqJCKkFgo3XIpQxuTNG9BaPau9UwSlIAY2KowOeNznWQx4wWHQd+xSa
	laFPl/025h4i3vZWz+Gct5C3RFi+IvkfWiLMcMosMMgOtyf/cvV5SEflvp31jVNS
	BEMQh8S+4/acKmOr/4Yvo7E0utBip6BbDIYgM9CJekNeK8LHK4w2orlcDZQHx9E/
	0+E80UmD4pYzdJyOmUrrrxpRCjmDxyHFEIKh9aSPFMvHMYmyfsGRMNU1mz/lI/82
	H2eRUEJS6AkPQYJO5cgboWHbrwEZvXqUd0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1695933760; x=1696020160; bh=m/nAAVTAuyuZL
	TfCwDWmBPb8Glz1ZN67MibtXNRooiU=; b=fOGy+XLTUmt6fkCRFVEeT8Eq0zYfa
	POF4Pb3yyG/Powb9a06h4twCyduhdwXIENKQDcqJT9XN4Ip4fiX/o5DPlEjyq+cS
	1ygH2TW+kQTykKZ1RYl5knHZIH/yQdGQf0ZXFFxcCdX4SF3UiAKRlnkRE2Mic/hx
	FCoaysXK5pLDKupQD8+6Jilr3cKhauI+NHk0ey8VOuKP/YmGLZwbCNUUOVlmr+Bl
	PUVhHR4bn6VucxXFvjpD43wi4U0hVQwE1f7AB65vMWfhgXvhpgBt8Lw4pZyyEcce
	zXvUKl8Ar0VCkNbTrKIOTTnltKJoYJsz4SjnhyWWm1qW9t7KjKw8tYiSg==
X-ME-Sender: <xms:QOUVZXa2TV9_Xz9Ydj71ZKqHvlEcX8I17djZltQhwWw4ASMvRsDOaw>
    <xme:QOUVZWbQwjYeyPGExmuDFmy2cLv6AngJiZSOj8vAP0l0Nxbp0Btc4d4NIhzguw-MW
    qGJrjCiK7jNzTM>
X-ME-Received: <xmr:QOUVZZ-3luEHrbF5GPBgrLbdQPixc6k_5xL9C6d8BBi2cN0F4N5Q-bc-1JMBCwtO7134mlmKj9Yk_3n18quLh6Dg5N-znh-5vnRUo9_J1R2Zb1xz>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrtddtgdduvddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeffvghmihcu
    ofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihesihhnvhhishhisghlvghthhhinhhgsh
    hlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpedtffdtgffghefhjeeigfejgfeguefg
    feejudfhtdelhfetheettdffieeltedvheenucffohhmrghinheptghvvgdrohhrghdptg
    hrsghughdrtghomhdpghhoohhglhgvsghlohhgrdgtohhmpdhmohiiihhllhgrrdhorhhg
    pdhgihhthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
    grihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:QOUVZdp0nONzisw7381IJdZMOG90nko-TaM-Ab3Zl1rcUCp54mKfhQ>
    <xmx:QOUVZSph1XsWHrT6kebmpMxamgmxobxmNA5_vz3QVdyzFvQCgowG0A>
    <xmx:QOUVZTS3xO5jNweBR06fh1V7d9cO06CApdLj3WayimVXu-rJDt_YAg>
    <xmx:QOUVZf05tsJtf1FFa190mh0RPWEezwtptFdG6XLKnB--DB3XzcAF6A>
Feedback-ID: iac594737:Fastmail
Date: Thu, 28 Sep 2023 16:42:33 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZRXlPoozp5n+cWv1@itl-email>
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lXauG7w/YBYGURfo"
Content-Disposition: inline
In-Reply-To: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
Subject: Re: [oss-security] CVE-2023-5217: Heap buffer overflow in vp8
 encoding in libvpx

--lXauG7w/YBYGURfo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 Sep 2023 16:42:33 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2023-5217: Heap buffer overflow in vp8
 encoding in libvpx

On Thu, Sep 28, 2023 at 11:37:23AM -0700, Alan Coopersmith wrote:
> Google has announced another media parsing bug, this time correctly docum=
enting
> both the base library and Chrome versions affected in the CVE.
>=20
> https://www.cve.org/CVERecord?id=3DCVE-2023-5217 states:
>=20
>    Heap buffer overflow in vp8 encoding in libvpx in Google Chrome prior =
to
>    117.0.5938.132 and libvpx 1.13.1 allowed a remote attacker to potentia=
lly
>    exploit heap corruption via a crafted HTML page.
>    (Chromium security severity: High)
>=20
> Unfortunately, the bug report it points to is restricted access still:
> https://crbug.com/1486441
>=20
> But the Chrome release notes state:
>    Google is aware that an exploit for CVE-2023-5217 exists in the wild.
> https://chromereleases.googleblog.com/2023/09/stable-channel-update-for-d=
esktop_27.html
>=20
> Mozilla has put out their own security advisory at
> https://www.mozilla.org/en-US/security/advisories/mfsa2023-44/
> and delivered fixes in Firefox 118.0.1, Firefox ESR 115.3.1,
> Firefox Focus for Android 118.1, and Firefox for Android 118.1.
>=20
> https://bugzilla.mozilla.org/show_bug.cgi?id=3D1855550 is also still
> restricted access.
>=20
> It does not appear that libvpx 1.13.1 has been released yet, but there
> are two commits in its git repo with the 1486441 bug id listed:
>=20
> https://github.com/webmproject/libvpx/commit/3fbd1dca6a4d2dad332a2110d646=
e4ffef36d590
> https://github.com/webmproject/libvpx/commit/af6dedd715f4307669366944cca6=
e0417b290282
>=20
> Mozilla's commit references these two libvpx commit ids as well:
> https://hg.mozilla.org/mozilla-central/rev/c53f5ef77b62b79af86951a7f9130e=
1896b695d2

How long will it take for corporations to accept that writing media
codecs in C, C++, or any other memory-unsafe language is a fundamentally
bad idea, and that it is better to rewrite the codecs in a safe language
(such as Wuffs or Rust) than to try to secure the existing ones?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--lXauG7w/YBYGURfo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmUV5T4ACgkQsoi1X/+c
IsEADBAAwD+PkMMT6LDfH5/GSKgBCbFSNeHoAyIcAQTiwuB4/yeaUYfN3YlJ+tjC
7/sPEq7eIPowI4zEn4eOmZs48ZfC/yPax2Zjw/GS9u62FvbMAdcapS1tb+sH8HHJ
6+BBAJ0k32bu6IM4PtKuMO9U3DZ4sdjtMT4MKdUtWOCxtv/uX/GtsPBkRHtpCRxL
fR28xm7h2hptJpN0KtY55ZT/1lRBWAKcyPgQYA5a+33BA1G5cQFAfDXVWx8Eqs0e
bvb/fJGDZBlGZNSLf0Sg7RDMSABOlopZSj7uc4E1HaIPW9GYKqzdA5yBygS9SS8a
dLOYWu0fwPt8QK1iHx3ztVv6G7YsYjJnDKu6WsReHtA27NR6mt8evB/zzMxA0Qh1
d5rX/6s6V4bTSwPAB/10vf3w6xv5+WPAqt96CtZLwG2Jg2/Z73BGZDo2pUIXRHSR
0z7hw8QevS3lc8jyJUnHI3/8FEKeRPrGjd+3QQipu1RoUglUW4iA+mfM2tU85QPg
ksuAl6mbQhniz2Q7igIP+cwnEiwWEjTO+vPqwhoHbBmyHko2scp07LQoAbwqmTGP
/h3kDa2k10sosCVtDhIW74Gr2wvywkCyJtzCKDTAUz2tQC7HpieJ3FvKZQ/gNlyW
ZBh3vGtMMkbZKTiqOOGT5Y9/3rJuPCo4os3cgTOMM15gKl27RjY=
=mICf
-----END PGP SIGNATURE-----

--lXauG7w/YBYGURfo--
