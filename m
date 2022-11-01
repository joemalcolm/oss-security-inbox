Received: (qmail 19864 invoked by uid 550); 1 Nov 2022 21:09:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9241 invoked from network); 1 Nov 2022 20:53:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=e43.eu; h=cc
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1667336002; x=1667422402; bh=WU/m9RsSvz
	PM66pyHcuPXGNJcksmlrTOsh0gAYIWlSo=; b=GVghBMUwJYxDxSKc3nefLAzYzD
	Zz1sl7vIYoaheGSMg+4th2+7gjFgzRWpy1wVr09vLzM3HizWzPDUvbT4rU/6i0MH
	xUxwS82E7Og75HD2w+Owpq/FZ0RiD87VRl7IkC4IbwiHG6Qe/+LC9qyLoqV6DXQW
	GLdL2H/A3NTSEylU15hRRxtqKY9kg83gn23+NOoGNm1Vduw+Jl2v3Y+EOZbOwhtf
	5CwSH/Pg0Lu2luj8qCyfwn45hStDKmjc7XLX1SViZBZy/Xdx//ebYzG4MbGIMbjv
	05jPiIFbBwrXZWTTSuQhHRIad0AjVsRy24Ir5bDt5+HywOgBHG3DMXKTYpCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667336002; x=1667422402; bh=WU/m9RsSvzPM66pyHcuPXGNJcksm
	lrTOsh0gAYIWlSo=; b=exHsGuubgl/atI2TKmgG9KiH4idypRoEyE85Rbf6+gpW
	3wb7DvBImGiVZAAh7PCAMar3rnYfL+38GKv44R+kpiB2xFFNZIiWFdH5WSRif7na
	RwELc/9B3q8jvdgT7FCekpHhvR//r/uCcorgKmwsCHWtQm/PDbm1I7UgENFN4egq
	cPRXW2ed032Se6/n4Hxivik4Ou6g2NkBMzcGiCv6HWbu4LNqcZA/IOmfrcO5FL2V
	npT5c5TjsQzfqQ+7giU/kn98LzuJ2oV9u7C8QWo8AgbRDcJflM7K4TjgaEOjW+WO
	3220jg7Sh5Ow2oMo8ls3fajJJpqPJyzw8dN74zFpuA==
X-ME-Sender: <xms:QYdhY_JFcCfXnnvPfazM0qPGTxkE6_GWL2lAsXuJQL6zMB6Kuj5GQg>
    <xme:QYdhYzJQs0hA5FZglM7_FqrWgN_vUujGvmgHbv3OCAQlDNv0Ps32BkcpoSwYhK-Yu
    ywa0vbofI4SiX24W7k>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrudehgddugeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsegrtd
    erreerreejnecuhfhrohhmpedfgfhrihhnucfuhhgvphhhvghrugdfuceovghrihhnrdhs
    hhgvphhhvghrugesvgegfedrvghuqeenucggtffrrghtthgvrhhnpeekveefgedtgeduue
    etuedvgffftdduueehffetvefgfeejjeekhfekieetffehudenucffohhmrghinhepghho
    ohhglhgvshhouhhrtggvrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
    hmpehmrghilhhfrhhomhepvghrihhnrdhshhgvphhhvghrugesvgegfedrvghu
X-ME-Proxy: <xmx:QYdhY3tp3k8yF0DfYM4bu9Ad9UTtdv7exWPexHZerFUtSIFav6N6xQ>
    <xmx:QYdhY4bXvgC73dWMG99RhJBk_PeHTO8Q5b6ByYW-zIBXBGyURsFMPQ>
    <xmx:QYdhY2bsr-bJsimk2_EooM5twwx7_7RGlwH27HdWDN5GPhVjEXu4TQ>
    <xmx:QodhY_m8NMckB8TiFHnR_mxbrPV99vH03kLwCNHrISM8SvNBFyn84g>
Feedback-ID: i313944f9:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-1087-g968661d8e1-fm-20221021.001-g968661d8
Mime-Version: 1.0
Message-Id: <1e5efc36-0cd4-45e2-b838-1493f9db6518@app.fastmail.com>
In-Reply-To: <Y2F6C/dZo5njPUfd@itl-email>
References: <20221101170833.GA10470@openwall.com> <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
 <Y2F6C/dZo5njPUfd@itl-email>
Date: Tue, 01 Nov 2022 21:52:59 +0100
From: "Erin Shepherd" <erin.shepherd@e43.eu>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative;
 boundary=8ab1fe0c5f6c4087a23a856bc28d96e4
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer Overflow
 (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow
 (CVE-2022-3786)

--8ab1fe0c5f6c4087a23a856bc28d96e4
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable

LibreTLS does not track the OpenSSL API, so increasingly software does not =
build with it (it's not possible to support both LibreSSL and a supported v=
ersion of OpenSSL without #ifdef hell)

Additionally, there have been breakages to LibreSSL's compatibility with Op=
enSSL 1.0.

As a general rule, distros don't want to package multiple OpenSSL forks bec=
ause it just heavily multiplies the amount of security work necessary.

On Tue, 1 Nov 2022, at 20:56, Demi Marie Obenour wrote:
> On Wed, Nov 02, 2022 at 06:35:42AM +1100, Dave Horsfall wrote:
> > On Tue, 1 Nov 2022, Demi Marie Obenour wrote:
> >=20
> > [ Massive trim ]
> >=20
> > > 3. When will OpenSSL be replaced by something written in a safe
> > >    language, or at least with a better-maintained fork?  I know that
> > >    distributions often cannot use LibreSSL (because FIPS, ugh) or
> > >    BoringSSL (because of no stable API or ABI), but I wonder if e.g.
> > >    libcurl should be linked to BoringSSL instead.
> >=20
> > We see this over at https://boringssl.googlesource.com/boringssl/ :
> >=20
> >   ``Although BoringSSL is an open source project, it is not intended
> >     for general use, as OpenSSL is. We don't recommend that third parti=
es
> >     depend upon it. Doing so is likely to be frustrating because there
> >     are no guarantees of API or ABI stability.''
> >=20
> > If even the manufacturer says that you shouldn't use it...
>=20
> My understanding was that libcurl gets updated whenever BoringSSL needs
> a change, and that libcurl=E2=80=99s API does not depend on what TLS back=
end it
> uses.  Applications would not be impacted, since they would only use the
> libcurl API and ABI.
>=20
> That said, this would require constantly updating to new versions of
> libcurl + BoringSSL, so it might not make sense in general.  LibreSSL or
> rustls could well be a better choice.
> --=20
> Sincerely,
> Demi Marie Obenour (she/her/hers)
> Invisible Things Lab
>=20
>=20
> *Attachments:*
>  * signature.asc=

--8ab1fe0c5f6c4087a23a856bc28d96e4--
