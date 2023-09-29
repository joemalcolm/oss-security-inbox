Received: (qmail 22411 invoked by uid 550); 29 Sep 2023 16:53:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3734 invoked from network); 29 Sep 2023 16:35:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1696005311; x=1696091711; bh=TUr4IKkCIz0Bn3bBd7r0NtwrTYec8OByb/0
	78/HfiMQ=; b=Kz0qxvfNZc6A9qLmra+lTF4AepvdmdLhAwIt2W2n3MJZ8ZnvfRu
	2GJl2DMlraT0BtfImPrOvZO2sWlA+w+5MGmQKjNZL0iwrTMxGVZYjsB0239ZhD9w
	wZMb7+TZlpE853DPRxsjOjJjXJFYx4tK5AOP86Lule9Fz/w1sx8YPxXcK0IylnD1
	A28nv+Aj6mJEeF1b7E7HS8n86LNW2hVnbyktKv4xxVTWYeqFs9hkQmjhLPIphPfC
	KfMerlCr1Q27prvkj3unI5Eniv4r+GLIRLnuelYbLPSU+7NZZIFB6tIrVN6MSKjN
	tDVUrNHhCatCGPi3k7WXMB3qHthyEvi4PIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1696005311; x=1696091711; bh=TUr4IKkCIz0Bn
	3bBd7r0NtwrTYec8OByb/078/HfiMQ=; b=qCsX6Y4ExfoPlp3xqFcVgvR9vROTw
	e9U1ukv3Plb53a8iZd8LbHgho3FzSxOJcNha35SFR6HWInkI6KvlSJR5OvMmyi4x
	agiEaKvg+Z5gAU1m+8OyYx3b1GsLwVTpmYF+cNBg1ZArJD4LwgNRtJyQnKjaECNF
	vGza5zTY2FrZa7JeK5B7wahdq9LFaAzclu0Or0QE1WTV9D1KP9ae6usqQf+oms6I
	Lmzfkq/AZ74X5l0oV8oD7evuzUi/pG75+zSsEWg9yrJZCIs9WYIeoj5ET6uEoKmV
	Kc3o5QYNeBxsOMSO6W6FPHgdTHruYCoJoDxlWRj0AQks/emEr8HYh62tA==
X-ME-Sender: <xms:v_wWZfUoAYrWLIYyz5ctsA_KdLWUOrgFRaRiOY-fXBs5-fYER6ncVA>
    <xme:v_wWZXmqHE3roSdrf3txq1wN-l5OGa6mvtn9nJC4iVQfQQOMvSrB3gG5gSBG2yv9k
    HJEoWs9z1u6enI>
X-ME-Received: <xmr:v_wWZbajSaMe6ov4wV-oIL8U2_2xb__cspgjPlSgKXqDWPFtAMVOaf7G9T-09jz2T06WTXdMZ7FMncciSzuquO-4oTG_LsR2RDdhhpMySajshLfG>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrtddvgddutddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epiefgieefvdfgjeelfeeifefgjedvvdefleegleeifeegfffhgffffeffhfeuudehnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhise
    hinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:v_wWZaWkG7QHy_BBR699FOWJYezWPVaxu94igeHBwOrngPsj1EQEEg>
    <xmx:v_wWZZkcEaAq7DhNnp8epaFq5K0gGOXrZij8VhCw6WqrKgoqmgPDWQ>
    <xmx:v_wWZXc_7RJhoPS-tc0uwV635qRXVD1mSerWn5zV3md79Nct4NnQ0Q>
    <xmx:v_wWZVzdTyWPIzhecOIrQIL737_VJZKx8utRIgqQnLV1jLhVWuilWA>
Feedback-ID: iac594737:Fastmail
Date: Fri, 29 Sep 2023 12:35:07 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZRb8vSZlWXIJtPjS@itl-email>
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
 <ZRXlPoozp5n+cWv1@itl-email>
 <fu34pmyckhgrjugxc2pqbj5afhtsf5jisnbpjghhkr7rfie3my@53a2ma3ekn6i>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UhgTBVPUaaGL1ABf"
Content-Disposition: inline
In-Reply-To: <fu34pmyckhgrjugxc2pqbj5afhtsf5jisnbpjghhkr7rfie3my@53a2ma3ekn6i>
Subject: Re: [oss-security] Re: CVE-2023-5217: Heap buffer overflow in vp8
 encoding in libvpx

--UhgTBVPUaaGL1ABf
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 Sep 2023 12:35:07 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE-2023-5217: Heap buffer overflow in vp8
 encoding in libvpx

On Thu, Sep 28, 2023 at 05:10:09PM -0700, nightmare.yeah27@aceecat.org wrot=
e:
> On Thu, Sep 28, 2023 at 04:42:33PM -0400, Demi Marie Obenour wrote:
>=20
> > How long will it take for corporations to accept that writing media
> > codecs in C, C++, or any other memory-unsafe language is a
> > fundamentally bad idea, and that it is better to rewrite the codecs
> > in a safe language (such as Wuffs or Rust) than to try to secure the
> > existing ones?
>=20
> Wouldn't the low-level code have to ultimately depend on unsafe Rust
> modules, or similar feature in other safe language?

In Wuffs, every memory access is checked for safety at compile-time, and
that includes being in-bounds.  If the compiler cannot prove that every
access is safe, the code will not compile.  There are no bounds checks
at runtime.

Interfacing with hardware accelerators obviously will need unsafe code,
but my understanding is that most vulnerabilities are in various
parsers or in the code the accelerators replace, not in the code that
interfaces with the accelerators.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--UhgTBVPUaaGL1ABf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmUW/L0ACgkQsoi1X/+c
IsFFyRAA1jFfJx3084WrTdz5nxiunjDQR6PsuxW6z9bVDyAsDzSqhD8sV7e76e7p
5yPHQTEra1fRpC/loCPPFlvRQPIeokSsj2nTriacKvGEG9MQxzu+cYT4cvyLF6Qn
DJxWagMDyp2DeYD+kNID/tCNadue7L5kVZGu3SL2Yxv53mBE9RaIpCMspCKiVPsS
k5C1xWcPp6IAhM8/NGEkrrNF2vuxnqxciItu1AwEzq+rT/8ss7C7DqLN0kk33vKY
ZkoBkUQeSkgDJxKv1G066Wr+otZ40PN5Lrfzadcq8rxATJZOAY34G/qgHBGJK7nM
T/afU4vNx7ldR/O8SaNCYti9a7dUz6QlbUbJleg48aghWWxvxRYQ4BH6QFbqng69
klXjMhsy75WMYLHczWCutSDKPYI/kwznAB0JSTS/gfuC4mC5AVWd+HvxFaORIlzx
ppK4BO7kuwQGoQlGFJucZXw+vCKK1X5R7mUOeuFnbmIeEXB93DMIfYGQcWh/d8tL
u3qdrg4hj51lVh1T7YWz6SP8cbeWgThqVs1Ih+agl3qcdDcjcRraGQgdGewGwOYq
edDkPEG7UTVHWwzUMKMtW3CQGxBCE8J+sbuyHl66i+uqj3jRtj2HIs9fZABT1KYD
TgeOpLqdV3EB9NsMAJmfOlFEzUrGHyUomu+4hzGmsgKU8ASc08o=
=FDf/
-----END PGP SIGNATURE-----

--UhgTBVPUaaGL1ABf--
