Received: (qmail 16307 invoked by uid 550); 2 Nov 2022 02:51:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16286 invoked from network); 2 Nov 2022 02:51:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667357468; x=
	1667443868; bh=7Uui+T5dx6wNzFUf58n2w465gmnQehVLHpx0E+N/YsI=; b=R
	ndDKOFGdIs1eMRxF6OZQwsXTMO5QsT1oSNX6IoAU8HC3vlgNqjDpSdjAvVksxwVV
	XXiViv+f/jgSfD+pL+WjdLx8RhRzZSmYwOxBz/JoDvuSY5JzBnr40a5jxlt4Qu9h
	ljNhKM4cMI8OUw6LZhTNLFCLm0acYSdFGGrUsJMKTqU071QCbf0GqBwC8u04a+6f
	BI2ayB/JT3p4d1VmXJoNNNSBcLputW2epj5yCCfX1yTpTB1TXYqbxa5dDF9iK2Kh
	T9GGshqOqfrXNJdGirE8anPLzpusmzkrDtnesst3LhZ98yzwiuyWgAbd/OGau8mj
	007B53IJTWu7GsZnTuOWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667357468; x=1667443868; bh=7Uui+T5dx6wNzFUf58n2w465gmnQ
	ehVLHpx0E+N/YsI=; b=rWqtKVYvua/OyGxmkh4bKMopR1Tk+Cubra8XZu1zUvgD
	1QVKqWSdpb+jzu2n14nnJZfCG88aylo9Nf8boLV2z3K7h6ql1fLVj4jycdglAfGV
	yh5F+eqkUawmbY1HytDRfpyuggBY3l22eIVxKtfPElUEukGZaU1SSq2PUuyaglAo
	MaX8iyam0cbuWOJE1TDZXCNzlIE1ihw08TpvF0qyX8OPgFrjwHVxpHbK2mwFbVow
	aGq+tpnojLlNBaYvxlT7mkIS0jIYxfHME9C9sFahgyI03swHqi7zLjanpgkFVVsY
	b8XDVQ725G/06L+tNp2i0GDm9PcZ8q2Bi4YvAI0VzQ==
X-ME-Sender: <xms:G9thY_auZ1z6RPlktkxAfqQh3RL_fMLXcPYWQiqeglLAejo72BYyjQ>
    <xme:G9thY-aeFGbRT8j1_7CqU_jGEmty76blnXmclLWrzgXehIaaQjTiWM64hjxVgkkxY
    yXx-heBqknY5jc>
X-ME-Received: <xmr:G9thYx-k8uROcDrYgOoGhvnr2XGOPOQmb8ziebm90DEMF7SLLaHbLkXMtlKf>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrudeigdehvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    eigfeifedvgfejleefieefgfejvddvfeelgeelieefgeffhffgffeffffhueduheenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesih
    hnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:G9thY1onO-5zWFTCLOqYXzPFEibjNJ6NiIBvpEuEpUf-CtmXyQ14kQ>
    <xmx:G9thY6phxiNPZ_dcuW5lS8_hfNMlf4VIF-wvUlmLHyJdurYD-f4tiQ>
    <xmx:G9thY7Tt1GxLhoFnY-w6W52bNt0OFZQY_gBnGOcrH9k7dWqZyfOoEg>
    <xmx:HNthY33C5u4VNw0_S_A1elgPmo9XBAg60wc1cj5o6RhgudGzcZx3QA>
Feedback-ID: iac594737:Fastmail
Date: Tue, 1 Nov 2022 22:49:48 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Y2HbGYMVSAm7/sUn@itl-email>
References: <20221101170833.GA10470@openwall.com>
 <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
 <Y2F6C/dZo5njPUfd@itl-email>
 <1e5efc36-0cd4-45e2-b838-1493f9db6518@app.fastmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LN6ciN3PgL+U0r2l"
Content-Disposition: inline
In-Reply-To: <1e5efc36-0cd4-45e2-b838-1493f9db6518@app.fastmail.com>
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

--LN6ciN3PgL+U0r2l
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 1 Nov 2022 22:49:48 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

On Tue, Nov 01, 2022 at 09:52:59PM +0100, Erin Shepherd wrote:
> LibreTLS does not track the OpenSSL API, so increasingly software does no=
t build with it (it's not possible to support both LibreSSL and a supported=
 version of OpenSSL without #ifdef hell)

Has software not from OpenBSD considered switching to LibreSSL outright?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--LN6ciN3PgL+U0r2l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmNh2xgACgkQsoi1X/+c
IsH5EA//ak7qpHp+a6l2Qq1YLNlIOyI/daTX30Aw9iSVbiR5AZe74fhABUS1ywLz
UULEAKog/LjXe75Fg4R7u2rJBFybqFn8fTU986R7hBOdD/maaPu8YRtPQXYyseFg
ifAsF6bm81XoQgTJwC+tpZVsumVp4flM/4AV3si38+9Lwr0++7waYyL4Gpe0/R6T
70dMH4gH3l+bh/v5KGcPTa3CumtsecHaBegQC5L6QSJr57m3mtEHZI+XNIUB+8sW
COm9GtBJUUdiqJcjYocEnr76oG0kmzRH27aznmjvGuJJRFiedia6IY3BKhFkQ9A4
D2H0rELgnYbrCPsP4MYU7WSZtb+nIVhRe2FwPMOOPlL6yllk/6/C5rXNVIUV/dz1
PpOpPESpCvMBlA3QcmRIXho8bpwXtu2MwO200Wbyj1qFqPab+ne2wdeuF5/f62xj
p10zxTIfwemaQt8jS+j8n0OY7DdHhkqd/pzNmdfMoEFxQY524m2JvTdJ42O0LboV
dQkSY7CATexMSmBh93hHNjLRqn9IUdiWK9uU9bLZgF26Yfu4IR4crXPqhRZpT4ca
KOqMKnGCQm3n3XFqZlWj5EzRmSuTcshQonbSyo4tKgYXzTdEVAmTFNvSnS7qYMgK
LRFcGNFinLQCkghYW/yyMmRVwzn13pk63oG010wbprI6026PfdU=
=pGik
-----END PGP SIGNATURE-----

--LN6ciN3PgL+U0r2l--
