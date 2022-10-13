Received: (qmail 29878 invoked by uid 550); 13 Oct 2022 21:55:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26316 invoked from network); 13 Oct 2022 21:51:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1665697887; x=
	1665784287; bh=D8JcK4Hn+D3h75eI3uQdfSkqC0Op+jinLLU5Uq6gMuU=; b=j
	e74ZIyV0Nm5mMBBzDlQLzEdzg3ChCPAmGMHEm1hwWj0DXuvvN3Q+U+HfhW8O5qAB
	K58GtF5neRPLuiAOUQr9Y2mD61e/VTU+zu4SDhpqL9A7AndXUZEjcIRbUioY3sjE
	vn8hjwZS7b3oPG3zXWBGkuZWhJjP3dnoQzc+3/+HZS1Hx+8/PLv9zDG0d1gF4Zpf
	K7JGIuCLo7Rp3ZIHULJZos0vzxgdgWTSyfby8yomq0I/HpOFOXftU1L9DY1ZI3Dd
	NCJmI3YkW7UBI0tgXXHYYQZ4qL5MsLdmKswEXCUxNF9RS5bb8SJqYqd9aopTggvh
	oU9hJoZLGHTGCn+t5MwaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1665697887; x=1665784287; bh=D8JcK4Hn+D3h75eI3uQdfSkqC0Op
	+jinLLU5Uq6gMuU=; b=KvX7AskS3HVzPte44fcPyns4Qul02lCFTA0Kiri0SdAz
	15nvIjRXpIUDvwibjVut0iqriNZP49Bmk3EwDHqEeOFYXrw4u1QmUzlhJXBhJwGn
	G6yEVCN3KJDttYIRWvbG2nblZ5Q5vvxNjWBUsMyBul7Wwmu+c2SvzvCiECAHg8BR
	Tftfo5nyvbKou+AdGdgrlkvnMFY06+DeUhxKFvf+b753A0Has9rL03TChJsIrbaP
	+uAWt3ETBz6s/Qcx3kPWgWsY+nBFQ+JyQl+NcXoOYiicczWDnRrmQM+MgyHdRpgN
	QG9RT3/7J4qZdBG8WnebIhKwKtLIKfUzQPAQTMXBwA==
X-ME-Sender: <xms:XohIY3q9MzsHEKmpigNNGFtIXbvf1yHJ8A0bAWOSXkPTg5nuJ2hBfA>
    <xme:XohIYxplsXGHr7CzJ6Vww51-zpMFYiKivMVW1vjHVxPWDeUUxa6TXMHO2IqNh8DzM
    It_1L6-99oZ11k>
X-ME-Received: <xmr:XohIY0PAtYDI6_9fTDj5CccH1LZ6qixvBBdWoASKc2Vlo5i9-12Mo8mwxqy1>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeekuddgtdefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepffgvmhhi
    ucforghrihgvucfqsggvnhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhngh
    hslhgrsgdrtghomheqnecuggftrfgrthhtvghrnhepkeetgeeihfetheffgedvgeegjedu
    leelledtffevvedtteefjeeugfeiuefhueelnecuffhomhgrihhnpehkvghrnhgvlhdroh
    hrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegu
    vghmihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:XohIY656xrRyMlAcvHsT1aMcTe27vPMHfXU4WsvIuHdpKa5551I6Lw>
    <xmx:XohIY25UZoNTEHU72vYBMWtBklm3gfYYFGAKMSs-tZeryP9xRvhMnw>
    <xmx:XohIYyhju5wlmJxc0pBiqgQWw65lGR7Zt_EfG2ccrvR5oKV4cZ4MiQ>
    <xmx:X4hIY7iC0wh2gyC758pk06gBML-qfppgCIstxDQHe4Kbh1QoYmDITQ>
Feedback-ID: iac594737:Fastmail
Date: Thu, 13 Oct 2022 17:51:21 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, shuster@seemoo.tu-darmstadt.de
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <Y0iIXLUix9iFJl7m@itl-email>
References: <20221013101046.GB20615@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dlnsyqEyplADl19b"
Content-Disposition: inline
In-Reply-To: <20221013101046.GB20615@suse.de>
Subject: Re: [oss-security] Various Linux Kernel WLAN security issues
 (RCE/DOS) found

--dlnsyqEyplADl19b
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 13 Oct 2022 17:51:21 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, shuster@seemoo.tu-darmstadt.de
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [oss-security] Various Linux Kernel WLAN security issues
 (RCE/DOS) found

On Thu, Oct 13, 2022 at 12:10:54PM +0200, Marcus Meissner wrote:
> Hi folks,
>=20
> Security Researcher Soenke Huster from Tu Darmstadt (
> shuster@seemoo.tu-darmstadt.de ) emailed SUSE with a buffer overwrite in
> the Linux Kernel mac80211 framework triggered by WLAN frames.
>=20
> We delegated the issue to the kernel security folks, and Soenke and
> Johannes Berg from Intel evaluated and worked on this issue.
>=20
> During their research they found multiple more problems in the WLAN
> stack, exploitable over the air.
>=20
> The patchset has been posted to the netdev list just now and will be
> merged in the next hours/days:
>=20
> 	https://lore.kernel.org/netdev/20221013100522.46346-1-johannes@sipsoluti=
ons.net/T/#u

Are these fixes going to be backported to stable?  I did not see
CC: stable@vger.kernel.org in any of the commit messages.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--dlnsyqEyplADl19b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmNIiFwACgkQsoi1X/+c
IsHpSRAAoZxBggjAQlh3n4BuEift+nK6XDWPU9weeWurbjWUFEzH4Hb5GgZHwVeg
sOuunHfysMlnvjBy5Vxz2jqtS/iGAI7T9Qt8ZRQ6EwDukp98XIsx78J8bQ7lMDE3
Ie+19NdLwpNbbXfSjbIv6RVy05n6nkgXK8LK9xPLzw6EbiDOyypqG0BqLY3Ttc7R
P7eXv0Xlq69lnKsmvYmMiDO8gZUpqzszS7X2xc76gqKL7sMayKZ9bxkm9J1o2Hi7
4OtKzdqnA7iVRpc82MB/wl91Fi8MD10HMjqZ/Mu1Lx5qJhQy0yrlQk4jQSFi8z1u
96Cw5qwucXTnN7jPc9RubD+Tw25S+mJjWTQHHvA9Fagl/2RnuvULSO9kCVBWSKlB
7ageuT2lGq9A8b9kg2yJL6D1BepAzOItnUkeo4zCdwpQmR2uf0jqN8qFQZpty0aJ
FCXQUNf82w89/w0rnRfOHugt16yneB7VNWEzjDQyidd+q/UUuURe9fC+89RUTjgY
l49e0rbYl0wky/h0yS/4gHraScVxRT+NbMgXEWRLobq3laau3+383Gkq5ESZGlzJ
npeWnFfS/8wwhAipTT/9cKqbBh/Uq3Tp20SIV3oJS1HaqmacLKQewI7NuJVWYtLM
wGQrG1MCTGDgW2umKCDUc4pOJ0yiFS9CNppqlAAa+V/obaO/V7w=
=Yl6j
-----END PGP SIGNATURE-----

--dlnsyqEyplADl19b--
