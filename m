Received: (qmail 12030 invoked by uid 550); 29 Aug 2022 18:13:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5274 invoked from network); 29 Aug 2022 18:04:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1661796230; x=
	1661882630; bh=H63Gmn9cQiUIOKoLPbcONBWb+XafCR+rR5J0hZ7SzQo=; b=d
	hvY7m63+5/I42jGTswmNNk6COgRpfUf2u5e6/DGsPDUS17O7F2ftS8uKn6xzhJuG
	e4dhZ0UAhqrKua5/HhfH0DZ5u1GM+0bDplekfnNhzkRtRBAgcgkB6WXyCBmOyOFK
	l43Z3L49QR2tW+NS5ahVXoUr3+mzJMHJMprI/qVN05h5QbnI6BYr2L8qUmW1AmO9
	zKZ94RviTTuIWUEh3m5LZKYCUES3LCJ4kmWpbko28UxxG15Odh51rUVpA4KJJu83
	+y9XNQWCVOw9/+qhp/TPdrr3o3qYMSxLWNbYdhdGWUcaNZj9koFAqOpSteZCCnWe
	Cumffo0A8PbN2ZVWNcGOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1661796230; x=1661882630; bh=H63Gmn9cQiUIOKoLPbcONBWb+Xaf
	CR+rR5J0hZ7SzQo=; b=RfXFXUPUvQqOM9YnCYlLf702/dObF06qWRki2xR+yEMr
	OpZsdxlSWmip7VRwGWgR9S8T1fw4l+iRJVYgmBNCHQIbC1X7p7okPoeapRwHWiiL
	nd0hpjKCjs8Z+7N+/SZpDf2wKgpjTC4Mc2R7xk2NkvDlx3XS/kyskXtenxNb+W03
	t7mVrZW6LshFJJIrRmqQFNbSSUlCQInQrtTmxfrUk1h8as+taiB/9WOb5Bu8mhod
	e4BCHHx1WUojmF4/WUIJTeIvgyJry1VZl/4zbDS9tUlTiPoA8VPBpSuN9Za+CucY
	cSwFPPIFsyq4lj9FA+IU02wdNKetRxX1ynVQUPjM9g==
X-ME-Sender: <xms:hf8MY4y8vG04eHG8cFA_KvP84cp73vaNLoofC9F85v_UkqHp0q_uoQ>
    <xme:hf8MY8QryMvzTdxLtbk4HnRewLBfdr-kDD2yfVB6h2pcw3Zss3DHDDLdfdfd7-54_
    3JhaV68bHiriJk>
X-ME-Received: <xmr:hf8MY6USnePKObFUkxVAqkc1q1tRpFeUP1hdKAUg4BUYFQOE-MiRMLJniz6U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdekuddguddvvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtd
    erredttdejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrh
    hnpeeitefhhedufeehffeuveejffevkeelvedvkeevfeejudehjeejvdefffegtedvuden
    ucffohhmrghinhepfigvsghkihhtghhtkhdrohhrghdpfihpvgifvggskhhithdrohhrgh
    dprghpphhlvgdrtghomhdpfigvsghkihhtrdhorhhgpdhgihhthhhusgdrtghomhenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesih
    hnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:hv8MY2iaoJNl_G9_TW38vgQNr2UzUL59ANfSbmXByQAABaBDc-2S1A>
    <xmx:hv8MY6DyPurW9RACN2j-kFmHEnV75zLcqW1qMkUbFlbsQ4mgiCHoWw>
    <xmx:hv8MY3KqLzeYdy3yo0Ddk3yRE3nCAEf57t8fePtwoL1uIwaSI3jMPw>
    <xmx:hv8MYx-TFBeYJoMxPBJo7Y7mYBdIQeo9V0bAHF95vbceSIXoaM_ORg>
Feedback-ID: iac594737:Fastmail
Date: Mon, 29 Aug 2022 14:03:44 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, John Helmert III <ajak@gentoo.org>
Message-ID: <Ywz/hDw3dwvhYlua@itl-email>
References: <b2f4c0a2-695c-7744-2397-269a1e588c31@igalia.com>
 <YwhTtN8duEhxo1hY@gentoo.org>
 <8812a292-ecd6-5172-a746-4ca192552882@igalia.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AOV2ihFoNH9kxwhw"
Content-Disposition: inline
In-Reply-To: <8812a292-ecd6-5172-a746-4ca192552882@igalia.com>
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2022-0008

--AOV2ihFoNH9kxwhw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Aug 2022 14:03:44 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, John Helmert III <ajak@gentoo.org>
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2022-0008

On Mon, Aug 29, 2022 at 01:26:49PM +0200, Carlos Alberto Lopez Perez wrote:
>=20
> On 26/08/2022 07:01, John Helmert III wrote:
> > On Thu, Aug 25, 2022 at 11:34:04PM +0200, Carlos Alberto Lopez Perez wr=
ote:
> >> ----------------------------------------------------------------------=
--
> >> WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-00=
08
> >> ----------------------------------------------------------------------=
--
> >>
> >> Date reported           : August 25, 2022
> >> Advisory ID             : WSA-2022-0008
> >> WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0008=
.html
> >> WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0008=
.html
> >> CVE identifiers         : CVE-2022-32893.
> >>
> >> Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.
> >>
> >> CVE-2022-32893
> >>     Versions affected: WebKitGTK and WPE WebKit before 2.36.7.
> >>     Credit to an anonymous researcher.
> >>     Impact: Processing maliciously crafted web content may lead to
> >>     arbitrary code execution. Apple is aware of a report that this iss=
ue
> >>     may have been actively exploited.
> >=20
> > According to Apple's security advisories for this (e.g. [1]), this
> > issue is tracked on the Webkit Bugzilla as 243557 [2] which was opened
> > on 2022-08-04. A few minutes after that bug was opened, a pull request
> > on GitHub was linked [3] with a patch which also seems to add unit
> > tests. So, it appears to me that this issue was public since at least
> > August 4th, and even more widely publicized with Apple's security
> > advisories on August 17.
> >=20
> > WebKit-2.36.6 was released shortly after the first bug report, on
> > 2022-08-07, and WebKit-2.36.7 was released yesterday, on 2022-08-25.
> >=20
> > With this bug seemingly being publicly known to be an actively
> > exploited code execution issue, why did it take several weeks and 2
> > WebKit releases to get this issue fixed and a WSA released?
> >=20
> > [1] https://support.apple.com/en-us/HT213412
> > [2] https://bugs.webkit.org/show_bug.cgi?id=3D243557
> > [3] https://github.com/WebKit/WebKit/pull/3023
> >=20
>=20
>=20
> We (maintainers of Linux WebKit ports) don't have access to the security
> issues affecting Apple products until those issues are made public by the=
m.

That is unfortunate.  I thought you would have access to embargoed
bugzilla tickets.

> So, we didn't knew until August 17th of this issue. Also you can see
> that the bug report itself or the patch doesn't has any indication that
> it fixes a security-related problem.
>=20
> Therefore, the time it took us to notice the issue, backport the fix and
> do a new release was just 7-8 days (from 17th to 24-25th of August).
> Which, honestely, it is quite good taking into account that: 1)
> back-porting the fix was not straightforward since it required
> back-porting also a few previous patches in order to be able to merge it
> properly and that 2) we are in August and people is usually on holidays.

Was backporting needed, as opposed to shipping a new minor version?

> On the other hand, I don't know if this issue was or is exploited on
> Linux WebKit users. All I known is that Apple said they are aware of a
> report that this issue was actively exploited (on Apple/WebKit users).
> So I assume this can also affect Linux WebKit users. But I don't have a
> confirmation that this is actually the case, neither I'm aware of any
> PoC demonstrating the issue.

Should every release include a comment like, =E2=80=9CThis release likely
contains security updates even if no security advisory has been issued.
Please treat it as such.=E2=80=9D?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--AOV2ihFoNH9kxwhw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmMM/4MACgkQsoi1X/+c
IsG8RhAAySWZU5Dc3aER8RI0pSzbAyc+FZiWq9kiN+hqfwl1Y8OQ3SrrwzkcxIFi
2jRHAojNp5JWLGGN7xZ4Hz45UAbBOkrhe2ZQHSdfWbI2bz2qouRZFuYRmaA1Hbn7
afcAGMIL063MLZU5oKh+dyaR02j6aHCjDKR0cRUYtYoMwnzXU0Dl/gO0pVVJoOK9
eW6q96GuaaorCzttfBRBkuu9UAg8/kmpP0twCwrLDloUMAl6/GMrd+u/2PHwUtNP
U961ybbyZzg2zKGrLF3XDI0ZOFL6YwcnCNen2dXSYYQN5s7upieJBGQ0xvcZpTsK
Lf9oERSZ8MjSDLimYtVjrffgLN453kzSdZ12RvP7x8ipg7kV44IvF6iZ+oIdvIAj
TIYR+oycpZkhjsGF+T8PyfRM6grhDE0rWuqTRxVX/UfAJHsGCNpqILIBDTV3gYOt
3OYee9Ve35WOl3IT5RdZ9kEwUFrNuvCabrfccxC6255qIPhzf626f5vJJBzQJSIg
8RaF3/K6/NhkY32a16EvHgH80lDnHzxd3dzBI3Cv43+/8orByCOLV7ZVa8cEuDnL
85y/LpdTMa4yv6x/ROZUlZV+1uWZc3xFURXKaVgs11bV8t9ER/0QQkOUB/7t9Nf2
s+A+vXAD+RtrSjtmLbE8xFKIShNUiXuwAaT0v/u0yuZ4XJiFTIs=
=6oUG
-----END PGP SIGNATURE-----

--AOV2ihFoNH9kxwhw--
