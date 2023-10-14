Received: (qmail 5208 invoked by uid 550); 14 Oct 2023 17:12:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1269 invoked from network); 14 Oct 2023 17:07:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1697303254; x=1697389654; bh=kQq/dci9+Jd9qTlID3NkK5HKE7FCVXduxU8
	lfrJKyxI=; b=j+soCRyhxowKscpwXSnC/6Kk0ZMsbXVX3PFLuKKnT0Jd70Cx8Q+
	+lv/iJsjwT59weep0RS+OiE2p/SuEjTqYo/w2+hN4QOwEXpMe0HJbfRUW/QVDExO
	x8adwd8f/a8CNs179ErBsBFExqrNIBul6ZeFNqoyxk/wvQfefMEude8EqJuq2B30
	kFs5kpASZCN/UQ+BwNWR94NGirfv4x8kZbORvxIZ/qySf/2QS0fPEZ2+QJ1lIDKu
	tZUrv8DFxfmAkE2xadRbjwDLc9iWlhjaIc7h6lVZfhkQvlAx4pRaf+vnMDA0BfwN
	0tXiFYGV46aOrbSACJ3pjq4Kl+Zi1YNQXnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697303254; x=1697389654; bh=kQq/dci9+Jd9q
	TlID3NkK5HKE7FCVXduxU8lfrJKyxI=; b=c8TiellP7ucwGc2v6h7/OMSIjAfAn
	f7jYSig6rXKyPY0PC/1z1ucEC0Zwt1FFyZc0W2WGrmoXvXxmJ8ZMZKTLzfRndTFc
	ZfhlrOH6y/pVRBNN09oWw1EvxChvngdGF6tYWDLWtNHEeGYruFC8ChtoECN95ltu
	fVwyUUyv7uMrMLTZZoM+S2gR7dg1cD2IMERkv4Y2KxLAIo1fLVd1zqG2xlF9TyCP
	dd97z/ipVlx1nVm143CyvPdeEx2/u40uXZxPeHy70EzwueRd6EBB9qbLjmUFVQSh
	ZqCSiqCjL7nfcBE6dg0NQqYWc7X8sO3pV709dsP5Q31fVQtl8sGIPkTxQ==
X-ME-Sender: <xms:1soqZT93q5THm8xjU6S1YRrpTCPMSyntt5Z1XFZ8vnDFkk8f8wqrqA>
    <xme:1soqZft7LjKgC0VVe4tgcxzcTTGDKemnWl4itSxBnxEawrnJVhaBwyAlHvTC1IV-r
    id93nxGG_ki714>
X-ME-Received: <xmr:1soqZRCk8g25WNq8qDGXG6j3b6A7ZRgzeIB_HsuCl_tS3oPMWLdzdD6t9-089Q_JMT-dtwPXcyX6bce8QDn_rFCYxVwfUwo8rwdaLb8-k27ri31M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrieehgddutdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtjeenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    eptdettdeuiedvfeeiudfgjedtuedtleefvdeukeeltddugeejvdeiudekfefhueetnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhise
    hinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:1soqZfemWVO_O2ChL7uH4wvxEtFXmo4KbkkLzzfxM8drtuci6k17LA>
    <xmx:1soqZYPFJWNyQTJ3BddP-yFB5kRAPkKmCqdeAuFfBpJknBqP_ptKAA>
    <xmx:1soqZRlnM1bvQpQuya5_RjGE6tb_vLcK5FhzkYvdOfIClWApHvZNYA>
    <xmx:1soqZebqlZIJo3iPILb4nLaemQkgoARa7HpVUspZD2RzMzhtFqwSVA>
Feedback-ID: iac594737:Fastmail
Date: Sat, 14 Oct 2023 13:07:30 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZSrK1GqJsL8oD7y+@itl-email>
References: <56c8798b-0ad7-652b-d034-90229b6768f7@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bMe8skJHsYs9hEIc"
Content-Disposition: inline
In-Reply-To: <56c8798b-0ad7-652b-d034-90229b6768f7@gmail.com>
Subject: Re: [oss-security] sandboxing,of upstream programs by distros

--bMe8skJHsYs9hEIc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 14 Oct 2023 13:07:30 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] sandboxing,of upstream programs by distros

On Sat, Oct 14, 2023 at 06:39:49PM +1100, Matthew Fernandez wrote:
> Hi all,
>=20
> I asked Alexander about this off-list in relation to his thread
> =E2=80=9Clinux-distros list membership application - CIQ Rocky Linux Secu=
rity Team=E2=80=9D
> but he suggested I bring it on-list instead.
>=20
> Is there interest/solutions within the Rock Security SIG or other distro=
=E2=80=99s
> security teams for sandboxing that package upstreams can opt into?
>=20
> To step this out a bit=E2=80=A6 we have a large, old code base that was w=
ritten
> decades prior to current best practices. It has numerous known memory saf=
ety
> issues and ever-dwindling maintainer capacity. It is also a dependency,
> either directly or indirectly, of a significant fraction of the world=E2=
=80=99s
> software. I am guessing this scenario sounds uncomfortably familiar/common
> to many on this list.

Which software is this?  Are there plans to at least fix the known
memory safety problems?  If not, I think it would be best to disable the
known-vulnerable features by default.  If the entire software package is
vulnerable, I recommend deprecating it and recommending that downstream
users migrate to a more secure alternative.

> We (the maintainers) have discussed sandboxing as a way of mitigating the
> risk of known bugs. However, one of the problems is that we don=E2=80=99t=
 know the
> complete set of required privileges of our dependencies. The software can=
 be
> configured with or without various libraries and also has a plugin mechan=
ism
> for dynamic code loading. Basically if a sandboxing solution like seccomp
> wants to know our full set of system calls, we ourselves don=E2=80=99t kn=
ow it.

You have to be willing to break compatibility to at least some degree.
If you try to support everything, you wind up with something like Qubes
OS=E2=80=99s =E2=80=9Cconvert to trusted image=E2=80=9D, which creates and =
destroys an entire
virtual machine for every operation.  Even then, you will still break
a (hypothetical) plugin that accesses the Internet, because that VM
should not have network access.

What I would do is compile a list of system calls that are reasonable to
make after startup.  Once all plugins have been loaded and all
configuration files have been read, no plugin should be opening files or
making network connections.  If it does, that plugin is broken and needs
to be fixed.  You can have these system calls fail rather than killing
the entire process, but you cannot try to support arbitrary plugins.
That said, I expect most existing plugins will work fine with
sandboxing.

> The downstream maintainer packaging the software for, e.g. Rocky, does
> though. They have a complete picture of which libraries/features are enab=
led
> and how locked down the plugin stuff is.
>=20
> So, where I=E2=80=99m going with this, is that if the various packaging e=
cosystems
> could (or do) offer sandboxing to upstream, people like us would gladly o=
pt
> in to it. Of course, these downstream maintainers can already seccomp our
> software today. But expecting them to reverse engineer our exact needs se=
ems
> a bit much.
>=20
> I=E2=80=99d be interested to hear any thoughts on this.

--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--bMe8skJHsYs9hEIc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmUqytQACgkQsoi1X/+c
IsFjdRAArE5fEvL1luUVyddHfKCA1BR8nYJ/LXC7aGGdLOJmkABICE+Op6J4eYn1
ybJqJZA9CfdC1jHyBlpUFnZcQGjWQ13eQTaktLPDZLjgzJGMeOg+LI+rfOxNA9NW
rsjCtbNtprwlz0I4vdfC/82raKzBblWg66/VwVg7v2syf6faJ/ySjK8OU87AEnE6
i/HZJijanb9DELqCH/KiOspRVws7EWE44kGKuvhZmTowuQ14hF0Y6WlSpRZCJI4x
uFpfjmD7JsYzRjpa+lnPjfycGLCnPrGVAnirWgXJhJNUC8z5J84yXLtTgvxoef1U
Wlw3fveaJH607TOWd7yV7oSqx9av1DYKKa4ABUCr7I4hjV6Tk1fTmfmEOhwMngfN
hhHTJkPu7dzEGPQjRMdFWesYmtYVTb//hrjFn1J+T7yib31U4v4xiZcKfLNjc6yh
LXh+EPng1SXBtkSYL9PONtWE5a2NSw+mPSfxbrcVLn5tny7S7hDfpm1blHvBPz2w
lubuAVtdqipm4hlr9zx7zjy+xfWQMnNP8HbdD6kzjIU53qKsr0VFfxgEFk9ui8N9
R+T8cD3zNN9zovxbrWIup+VwZqUurefGocOmIaFGhBYI1r+nnTBLIna+vYDfzIZv
jJLe9ejEvc2vrQh2Yu0R7hGxNm4WJaoYZ679/XcvApfMEuP6weE=
=bU9G
-----END PGP SIGNATURE-----

--bMe8skJHsYs9hEIc--
