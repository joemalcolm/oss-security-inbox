Received: (qmail 14331 invoked by uid 550); 21 Jul 2023 11:24:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12280 invoked from network); 21 Jul 2023 01:22:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1689902551; x=1689988951; bh=qTjhfiOu2VfcgbVtIOR4q55J2Go9psXwoJb
	z2Ha+kEk=; b=Hgajes7EbiWnphJZzlSC9BBwAuGkvne3WY1B+JBFHl1YjpLWLDT
	0Fw6ZTLjrvEjip49BkcKmpbOtegP+9ex3tO/OOLeJ+2H7OQYLVkJhZiFWk0lYfP1
	x+laqf5Kr0MjPR0sEPU4zSHcS5d8XZo4Fc+1EVWnjDgtVEKNqgbpgq5c0+IJwPBr
	OaC9gH3odH41BL5qWrdN84jzStkVxgBY6sxzRGW+LffiEiRpq14+annexlRd4WBh
	koAcFRWjgclIOHLVXFYOYDu+9uUR+grld2qlSbqPsaxJ3aKyLnp57xLNmFttvLdg
	dbYqfQQ83s3+O20okNNB4jytUT0uX+uISMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1689902551; x=1689988951; bh=qTjhfiOu2Vfcg
	bVtIOR4q55J2Go9psXwoJbz2Ha+kEk=; b=pSWkyV3oDHRqTXQTjOWxDrplh1QzF
	lmxVj6W1XJuEKojxOteL/wsEID7cfOuhpphMIP0QKyF7TSnxQ1hgLWuYu3UbPlZl
	gZk7Qc7d8Sa6GmjFg4nQzC2n1Z2MDhDuI7KrbLWL5O3NukwuXr1q6oxurygvrReq
	tH/RRgj+pSwhSnn6Gwn42AsdLYGjvXcSAGeeXvX01x4DofCqU1FHKzGQIxajlLd+
	L0S08770Cr7Js6gxA0TXAr7/yDc0rK773G2UiSoIYMtuDpmfw8A2MG6gnzvmNlQ/
	qWrxBmXd/Ld3bnneANzpUwCYcpo1D9tH762gqfracyrHVdkCLUmvLJJ2Q==
X-ME-Sender: <xms:1925ZHuIlfPXX_jNMSU6jiePdZK8hTxOpCWrZW-FXevOVLAj4xh3Pw>
    <xme:1925ZIe6o9Jf8Rzb-ZpSvMUaB1S7fhCRpvfKKMwwRnFBb4k4Us7kaIwuuALwb-4h7
    DRfv0cjn9Geovs>
X-ME-Received: <xmr:1925ZKwNIMcWySFDk8-AlTTUJ2ndZDphnE6LvoMfdy-gBdEa4fEE8ZWcGVgVqlaOhILS3BKghC6t3sc1RSwjFR1eMpY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrhedugdeggecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttdejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    dttedtueeivdefiedugfejtdeutdelfedvueekledtudegjedviedukeefhfeuteenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesih
    hnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:1925ZGPGYZwCQo2b82SRundNwF14JldtEyKZsKtCOAAA0vzKSuWgww>
    <xmx:1925ZH8uZmfPRXkotFea6yvsWM9g9PGGq64soUijWqJ2BKEuuHC2Sg>
    <xmx:1925ZGWCQlR-JlJzgond8C_uNd2Xcpigce_5IZApvwvAMPgjzkmIww>
    <xmx:1925ZKJnIvF50TDi6NvbwC0kVsm72TjXJoAEGZJsp2XJNsQVwJCWXg>
Feedback-ID: iac594737:Fastmail
Date: Thu, 20 Jul 2023 21:22:08 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZLndwziGSn83SBUM@itl-email>
References: <e9c022742fc07cee@cvs.openbsd.org>
 <ZLk1hSUEt00caovk@itl-email>
 <1c005469-a540-5cd1-642e-5aebc35dd17b@geeklan.co.uk>
 <633ff42d-052a-df7b-dc34-6264e9d4eb77@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zhV7lY259kvvlCVB"
Content-Disposition: inline
In-Reply-To: <633ff42d-052a-df7b-dc34-6264e9d4eb77@gmail.com>
Subject: Re: [oss-security] Announce: OpenSSH 9.3p2 released

--zhV7lY259kvvlCVB
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 20 Jul 2023 21:22:08 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Announce: OpenSSH 9.3p2 released

On Fri, Jul 21, 2023 at 11:04:49AM +1000, Matthew Fernandez wrote:
>=20
>=20
> On 7/20/23 23:41, Sevan Janiyan wrote:
> > On 20/07/2023 14:24, Demi Marie Obenour wrote:
> > > Should there be a system-wide configuration file containing a list
> > > of known-good PKCS#11 libraries? ssh-agent having to guess if
> > > something is a PKCS#11 library is less than awesome.
> >=20
> > There's a compile time setting for paths from which you are able to load
> > libraries from.
>=20
> I don=E2=80=99t think this helps much though, right? The Qualys research =
that
> motivated this found an exploit chain using only libs present in /usr/lib=
 in
> a default Ubuntu install. If you want to lock down loading to a specific
> non-/usr/lib path that you have control over, this suggests you know and =
are
> in control of the PKCS#11 providers you=E2=80=99re going to support. In w=
hich case,
> why not avoid dynamic loading to begin with? I guess the allowlist and new
> defaults are the answer to this conundrum though.

IMO the root cause of this problem is that PKCS#11 libraries are installed
in /usr/lib, rather than in /usr/lib/pkcs11 or another subdirectory.
There should be an automated way to check if a library is a PKCS#11
library without having to load it.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--zhV7lY259kvvlCVB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmS53cMACgkQsoi1X/+c
IsFcxBAAyYHc7G00G+qKYgEU7rCdwZuOOcdQWtoKrauJB3ERhLxPI2mEqbx/ENyf
q5Rx14l+Qpj3iqtaCVibPs1qylpnlYrqR93HcFP7IndY18Kc16XlugLMj9dxnnvB
vlz3FPbwhM/xd1QhGC+Ui3oOea2sNietAd6mTqSPkc8gK1135yHwHLs0zfUcjVOr
+33V/L8wbPfCarHlX2Ht5jLvFpSd4tkm880fNh3Hc4FBdajch+BWayhr7JtGMxSJ
nMzCRqtUEfwvjf8Q83g23dLcQziADvoIDE7GBXnECvEXBaDwMQEpm7LNJdvxKpnh
P671WYtRPY1nmZDH1KxJPIHVVN7En0IQuKw8pSew/Gcq90UrR/NgbCgu/TBdNZu+
kM9zDzPBbQka1q8RkPtR/yX/qeTVHRw++OZwohuUbhqSEMqrH1oUAWrFJQ/kvYqt
dS9Zu5UNdPupnn22Y5crm0elvCkux1HATmIBrT042sZ5UM6LIwAR3W3N+JM1i/8M
+Js4tGxW9iWswOdjliQOWVfb/QUEr+4IsFJp++udk/s3nWquBEcD1uAZJ98GJHy9
1eJJV80oGWYrZBi+f7T9QjteduAQchP7duT3eJaY1AVk52YkqQt+lp2j7jPauT/w
Ifw8o9uXfIct146rlaE79CLDvSQBlZXBQgYhRT7apoEog35TMqs=
=D+EC
-----END PGP SIGNATURE-----

--zhV7lY259kvvlCVB--
