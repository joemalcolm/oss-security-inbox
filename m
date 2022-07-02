Received: (qmail 14234 invoked by uid 550); 3 Jul 2022 11:24:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24405 invoked from network); 2 Jul 2022 22:55:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1656802501; x=
	1656888901; bh=5CreqN0qbeMRzScbqQTRn49M3OHwk/jgBoHuJ1T5A1A=; b=a
	43oAEMoSM/A5VIQNv4cHsvEAKAGx+S3JVouNww+px1/fi6NNOp1Oz3ZEcoGoGnar
	0j55ZLlWovYDTjigQg5HZy2waJmC2zs9z106D9sdQ25VO/e3q/OKy39sZnPcvjmN
	IMItNx9wi421DGr5e4hZfbupta4evhTIrKahbXM/+aeZhKx++AAe7cGQdTYH2lLi
	/cdRcfZyd5SA39cC41mqxvIf+qUiZxuuYQGM65U2U6Ikd9NEw0W1+JOorF9nN63Z
	jJS62yoD89cSnUdOmgBdg0PnyRhReTGUQI6IaPn/+YXzhTosIFRcXlFsBl01wrua
	/oEaZlwTaBhnak+L5xSrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656802501; x=1656888901; bh=5CreqN0qbeMRzScbqQTRn49M3OHw
	k/jgBoHuJ1T5A1A=; b=qSlhTx7J8C4kDzEa9vYCtXSYF+FaM6RLJG2lbe/6phQf
	2qDNQ9jwI8rAEOdILchpgPOzH+2Q0DQWnEmU9nU7+rg6JqS1YzRjIYvGItBdaIhl
	FvKssyDLxNCb7ezdTDaeuIMRiLx+hnwh9qHBlf/MN/Cnxz65CvOwu0NivguTGEv+
	aKRQI+Rik4llms8V4YoiTy4A8kOKascPAJ+aRmN0f6AG+o3KnFdl179GyXc3Hthe
	oKaFxKkJgEqvv8Gk6rBrJehZZghtdRe5boESgeepsthPJJ5tsT6blkd78G3ZEKdp
	HcoCrQPg5Mo+w5+TC6zGHMKhX5JSlCOcLVlLeX8CiA==
X-ME-Sender: <xms:xczAYouULJEeR6om0NxN9WRdd0RJ48-nEmjd8E1uWHxdmiOzjzYNNw>
    <xme:xczAYlc9ip-9d66iiXS16jArBkRh2o-fIB2dKB7CVoet41hLf7KEJY8s0nKxSQSZl
    XuXicnA3lkuW_g>
X-ME-Received: <xmr:xczAYjygjBZ45mZLlXsmHM7p6ocTJYcQxg5T4JiDejgaUaSKwq_254D-_v2m>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudehiedgudeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepffgvmhhi
    ucforghrihgvucfqsggvnhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhngh
    hslhgrsgdrtghomheqnecuggftrfgrthhtvghrnhepkeetgeeihfetheffgedvgeegjedu
    leelledtffevvedtteefjeeugfeiuefhueelnecuffhomhgrihhnpehkvghrnhgvlhdroh
    hrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegu
    vghmihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:xczAYrONCfa7GHCFkXIzuvfQJKSa3evPv7AAUiWsxG_1dxGz_IQffA>
    <xmx:xczAYo_rp27AfW9S6i2FMXqK2K2Msc0KMZ6cq4d9Rwf9eJNYm9GEfg>
    <xmx:xczAYjVi3KX_vTf357CDJLRq1cTKnE74qxy3-rOR6AgHCmhCUFK3nQ>
    <xmx:xczAYhIkQsMd2-8zr4iGdgqP6mi6rNeuDyQSp8-RBfYfsaqn-C7wyQ>
Feedback-ID: iac594737:Fastmail
Date: Sat, 2 Jul 2022 18:54:57 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: Hugues ANGUELKOV <hanguelkov@randorisec.fr>
Message-ID: <YsDMw8o0g0IjrwzK@itl-email>
References: <20220702193746.GA12948@openwall.com>
 <20220702215539.GA14413@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DS294z4lVLrQFIQO"
Content-Disposition: inline
In-Reply-To: <20220702215539.GA14413@openwall.com>
Subject: Re: [oss-security] Linux kernel: Netfilter heap buffer overflow in
 nft_set_elem_init

--DS294z4lVLrQFIQO
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 2 Jul 2022 18:54:57 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: Hugues ANGUELKOV <hanguelkov@randorisec.fr>
Subject: Re: [oss-security] Linux kernel: Netfilter heap buffer overflow in
 nft_set_elem_init

On Sat, Jul 02, 2022 at 11:55:40PM +0200, Solar Designer wrote:
> On Sat, Jul 02, 2022 at 09:37:46PM +0200, Solar Designer wrote:
> > The message below was meant to start an embargo for the issue, but it
> > was CC'ed to netfilter-devel, which is a public mailing list, so it also
> > appears here:
> >=20
> > https://lore.kernel.org/netfilter-devel/cd9428b6-7ffb-dd22-d949-d86f486=
9f452@randorisec.fr/T/#u
>=20
> I'm sorry I got the encoding wrong, breaking the non-breaking spaces.
> Let me try again, below.  (Not trying to fix the line wrapping, which
> would be too invasive an edit to make to someone else's message.)

At least my MUA (Mutt) displays escape sequences instead of the
non-breaking spaces, presumably because the non-breaking spaces were not
UTF-8 encoded.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--DS294z4lVLrQFIQO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmLAzMMACgkQsoi1X/+c
IsG9Cw/+PcZ625KJwLy/XGTUG4Svi0Ch7orWq2g/+V0ZhUzOLLTR4tpm+xzEaTvz
gNr1uZwO2w5+gzoF5woN5rVAqYPT9ruLATQEkWRKAedWP8yz8gKtzMQYT7b9vH28
IYlttwFWAYOvjZkcS+Udq7HOmQRM108AIuY5wq3uVWl6JcmNmfHhqvFWJ6m67dRw
75Bs0IA4BLRAjODh0WgplgIho8rMY/vP8SeHxrXmMttIYf9yQlPZQEs+hNUXXkqi
tylX+nU01OneCNFa6KcpSsXr6rKiODtRsrc/DTfFBhoJyShyO+rUxDICzuWZ+lPN
guLyNE52L6RNfKarWybo9xsRomYii1OUn2pqO8KXvauI3yPEOlc/6kLdKsabeSrn
GjZVj2trS65wsy3Wm4Mpyj5zrSzfP/5406jp9+mYNx2IjbWWyCmEL0b6afZXLDdH
Q4K8rOjzO84taCkcYWU0cKhVANkyMQRdVl6lEmAVfYUEJlES5g8A/DbYa2luRelg
3dHubFPRPUm6eRkju+HgZ2y1c2JlxOS6upq225CuWEqPRrMr1EnvQy/hoycxbcq9
W8rNm3Kd2EZSDc/HM5iNZ1kK+Y/AAu3ty0tYC8t64u57ZkVp7Hwqia9UwtIgzvBV
0eq0gtkger8NrwyTDAtWf99RBDN7+nhsOgR5/Oi8lh+Fucv/TyA=
=Jhw7
-----END PGP SIGNATURE-----

--DS294z4lVLrQFIQO--
