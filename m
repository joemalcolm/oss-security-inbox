Received: (qmail 27852 invoked by uid 550); 3 Dec 2025 04:58:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23706 invoked from network); 3 Dec 2025 04:24:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=who-t.net; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm3;
	 t=1764735876; x=1764822276; bh=jKj1Jut8BOUonExxZJZVxJL0vKwocWxi
	a8FAUjHTLBc=; b=zESzXJ/ISY9KYzBG6ULtpadTGp08NxiSy+tfFbU85r/tEQbJ
	crbWEiCIDvs5/qGrwJfdWI42pcakH8EbXsqJiTCab6WeKu3pbSkk54v2Loz6p0pw
	van1nm8mhtq84M6gbp/c4WxBLVuzz4M92qsmn9zR/Jp6hkvqE0X8LDT26XYC6jhP
	lJ/oCbN79utHE6j0pjoeb4MeAo99YbV8HqM7ksbffaxhxKaL4y0WizW3pBEDHAHh
	u74aA+MS6RJthChdE/ItZ3P9o+0m1k/sF/LjIfgg9vRqSHFuXfL+m0uQsB3CCAUR
	ENOxos9y0qhTZ5ZJpcfrbQMQtf2ux23daDkiaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1764735876; x=
	1764822276; bh=jKj1Jut8BOUonExxZJZVxJL0vKwocWxia8FAUjHTLBc=; b=b
	2IUZhX8cq3q90zMVUSmVmoD25vhfLjBKn5jjwkwhdJnNxRlGkitWCFua4bWGtbbs
	CyvibGiWswSxf7WXMLZOz5kjRHrqwLuWuEtp8krRn2FB9dnPWSxQTYFqWl4DB0B3
	cPTih701BPdZRrvEkNjlyJEB/KrHz/jrUOZeeFoPh4XHt7+XAs5DzslQNmsVFOfH
	IK3p9Orkbd100YdXFzTVUpY+5MzHWkUNdVRG9kr7tW9X015XdWzmoprskUh2Pr34
	ei+V1IokqkwTDOSoqg56FQzsUXFjTODtzXMHvpY/GbSmLlWJSLPTO2rc36tIa6u8
	C7WrITHN+dV5E7PkTUseg==
X-ME-Sender: <xms:hLsvaU3KJ7jzmVCSbStXlA-yFAys6s5CYvfheYKlNBlsJp6CgNqmYA>
    <xme:hLsvaWBlThQF-KOOHwaThtUVdjc5-aeY3FXWZcKzmsTMzAu0WL_jXIfpWHTotm7tQ
    kuhlSqO69w4eApTc49MmzP4m-MIQDtpMLmybA9eMTv9t4OfTezb-g>
X-ME-Received: <xmr:hLsvaSjVF0UIZmVBnD1GayqmjErT7AzbxT1D3abI8rLpJS5ct-d-dZlM8udYxalMs2Mr67rQKCZ_Q1EECHCWvwowZ6qEYWicwA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduleduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtugesghdtreertddtvdenuc
    fhrhhomheprfgvthgvrhcujfhuthhtvghrvghruceophgvthgvrhdrhhhuthhtvghrvghr
    seifhhhoqdhtrdhnvghtqeenucggtffrrghtthgvrhhnpeeiudehtdfftdeuvdellefhge
    dtkedugeeuteejveffleefveetuefhieffteetveenucffohhmrghinhepfhhrvggvuggv
    shhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
    hlfhhrohhmpehpvghtvghrrdhhuhhtthgvrhgvrhesfihhohdqthdrnhgvthdpnhgspghr
    tghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtg
    hurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:hLsvaS8z_W3CcBFLDFPQgeCreofusuKHs1QQ8xeF1gVKJF4xNkJBmg>
    <xmx:hLsvaW_6Q-PlVUanO3IXkTqCMlVvpDFMmYKyzc-NpfWNZc1ufAbkVw>
    <xmx:hLsvaTBI8Lgii-cd7dU5r92GSPM79cEEBOKWtj4xbz93C8SUz7j4lA>
    <xmx:hLsvaezlaNpH2IfP4nC0krCIgl_xRr3l4vOXRz_PXWiOvxYvhyMgWQ>
    <xmx:hLsvafMmG6slxaU7gSLCf7CebME0Ee3-_ny02KSzs-v-3xuC2EgpNU1N>
Feedback-ID: i7ce144cd:Fastmail
Date: Wed, 3 Dec 2025 14:24:32 +1000
From: Peter Hutterer <peter.hutterer@who-t.net>
To: oss-security@lists.openwall.com
Message-ID: <20251203042432.GA2645052@quokka>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="HUmr+vG821pmDmwK"
Content-Disposition: inline
Subject: [oss-security] FW: X.Org Security Advisory: multiple security issues in xkbcomp

--HUmr+vG821pmDmwK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
X.Org Security Advisory: Wed 3, 2025=20

Issues in xkbcomp prior to version 1.5.0
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Multiple issues have been found in xkbcomp that have been previously
been published as CVEs in libxbkcommon. libxkbcommon is (to some degree)
a fork of xkbcomp and some of the code base is identical. These CVEs
were published earlier as:

- CVE-2018-15853: Endless recursion in xkbcomp/expr.c resulting in a crash
  https://gitlab.freedesktop.org/xorg/app/xkbcomp/-/commit/da8367645
- CVE-2018-15859: NULL pointer dereference when parsing invalid atoms in Ex=
prResolveLhs resulting in a crash
  https://gitlab.freedesktop.org/xorg/app/xkbcomp/-/commit/895e080b2
- CVE-2018-15861: NULL pointer dereference in ExprResolveLhs resulting in a=
 crash
  https://gitlab.freedesktop.org/xorg/app/xkbcomp/-/commit/c34263540
- CVE-2018-15863: NULL pointer dereference in ResolveStateAndPredicate resu=
lting in a crash
  https://gitlab.freedesktop.org/xorg/app/xkbcomp/-/commit/fa10dbc2c

These four issues also affect xkbcomp. As the issues have been
effectively public for a while, there is no embargo. xkbcomp 1.5.0 is
available now and contains these fixes.

Many thanks to Pierre Le Marre for finding these issues in xkbcomp.

--HUmr+vG821pmDmwK
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQ8LEPZRH1ZOO9FUeviO35wtGfwvwUCaS+7gAAKCRDiO35wtGfw
v9f5AJ0QKqTEtsFk7WNqMlHz/BEyoPujTACfXiBYNf4OQoRdaZAqxMr9rFcfyVo=
=HUq9
-----END PGP SIGNATURE-----

--HUmr+vG821pmDmwK--
