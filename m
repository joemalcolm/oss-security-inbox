Received: (qmail 15551 invoked by uid 550); 2 Apr 2026 01:46:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28273 invoked from network); 2 Apr 2026 01:25:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=who-t.net; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm1;
	 t=1775093101; x=1775179501; bh=fFQRpVwKXdeLIHnvomtzwHx38crwGmhN
	GtmDz+o382o=; b=VYtO37jEff6LXQK1gnyFAFz+tp9jINolOFblefzzW2wdxg6k
	dHjpuo+Fb0O24LT8dzlGXiGNkQkgdAQQ9EnrZdlmfsOhX4/quWRq8iYIFTKx+lzL
	opszZBI/9eP4ureyxZPmtJOgXwpsjWkF0LdhKa1kHVyaX28En1KmJ2EtwWQLKoDz
	TM1OGRWFBAHt0KKk/mcJOV/isPUA7biAUm1aq2wAvBDRJkiHP3KDqo5qzX3UI/Se
	30oqbH3l4PVW8qPIneMx0FZhyIBhbvdyS+9Y+vHjWsQb174aSjtDFdqNz9uF73b1
	4nbEd4qjPnBiUwy8WYiM2WgLC1lsYUHQ2CPK8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1775093101; x=
	1775179501; bh=fFQRpVwKXdeLIHnvomtzwHx38crwGmhNGtmDz+o382o=; b=B
	DlbEWLK1dwe0B7woDzNNCHIFWVdvOVTeGTl7bBdkgR2DraGuj42SYgTLQzrFysLI
	NQKsfsadUogsncOtaFJi2sa2hL4vzSWGzdM8fDMxEo06xLTuxqhTh7OtmF7UwLj4
	bBeLxbyQnKJqHfV9YerPsYOKblAQth/PkRK1e3M9jgEfkA1vBThd04wXYlxnFyfW
	KPPuQmJvHHtC+mUmbAXTtZ4zGsSwcPdJgfKQv2xvwOi6jEguMlxDNhP2682jv5M+
	RZXxOGXY6Uu0Xa9RNXv07obcEdmgL4HZADiixoR6L5wuespT4lHDgLhzTpT5/0iY
	AX0uCtoV0qmWhvyemSYSQ==
X-ME-Sender: <xms:bcXNaVNGgDJTCaqsq_Cl5pN_6RWT6O23GcwD9Y2DDKODk5WWi63-oQ>
    <xme:bcXNae6X8DRKkc9raZfcoXQkLSSVn8kL4S-8QFxDt1F0jnGO_u3hUuTk7TwfCAlkU
    51lgussDn4qZTDOsfkDYI4s5U4DTGrdqFeGg3ZtbiF7fUX-3EL8ewY>
X-ME-Received: <xmr:bcXNaZ7veqKyZYtkt5WEGrG35U4ZESLGPd3CAWhY9UfGTyu2pZekqAl_zyz6guV6rNWcu7toXPyDYKB_m7SvKpq7tdbaV1pns10E>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdegieekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtugesghdtreertddtvdenuc
    fhrhhomheprfgvthgvrhcujfhuthhtvghrvghruceophgvthgvrhdrhhhuthhtvghrvghr
    seifhhhoqdhtrdhnvghtqeenucggtffrrghtthgvrhhnpeeiudehtdfftdeuvdellefhge
    dtkedugeeuteejveffleefveetuefhieffteetveenucffohhmrghinhepfhhrvggvuggv
    shhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
    hlfhhrohhmpehpvghtvghrrdhhuhhtthgvrhgvrhesfihhohdqthdrnhgvthdpnhgspghr
    tghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtg
    hurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:bcXNaW17vfMWpmQvkQqWLNSx_DN4knQq0hqXAi2YnvRLxeaj-b--5g>
    <xmx:bcXNadVwMvQsujNLUfm2VdtpPwkchDmX9_-68h3HiNW9E31NkgUEwg>
    <xmx:bcXNaZ5V4MZwzltxDmpi4fADEelbSUSsREEAfhHmP9zRe0-998A_nQ>
    <xmx:bcXNacJxFzu7wdnbIflXvmQJralvoQljuO3N3I2VYILTLM8QFpvwsw>
    <xmx:bcXNaQEZB2EGaFYU9PJh1ox-ZsoJ8pqC3ef9SHPq6zFnA40wyZgd0mzr>
Feedback-ID: i7ce144cd:Fastmail
Date: Thu, 2 Apr 2026 11:24:57 +1000
From: Peter Hutterer <peter.hutterer@who-t.net>
To: oss-security@lists.openwall.com
Message-ID: <ac3FMrUy3x5rrDTl@quokka>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gsl4l4isadoirm4f"
Content-Disposition: inline
Subject: [oss-security] FW: libinput Security Advisory: multiple security issues in libinput

--gsl4l4isadoirm4f
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: FW: libinput Security Advisory: multiple security issues in libinput
MIME-Version: 1.0

=========================================
libinput Security Advisory: April 2, 2026
=========================================

Multiple issues have been found in libinput:

1) CVE-2026-35093: Sandbox escape in libinput plugins

The libinput plugin system provides a sandbox to any Lua plugins to restrict
them from any IO other than log messages. However, a bug in the plugin system
loader allowed for precompiled byte-code to be loaded. This bytecode is not
verified at runtime and thus not restricted by the sandbox. This allows a
plugin to do basically anything Lua allows, at the process' privilege level. An
attacker that manages to deploy such a Lua plugin may thus have unrestricted
access to the machine (depending on user privileges).

Upstream issue: https://gitlab.freedesktop.org/libinput/libinput/-/work_items/1271
Upstream fix: https://gitlab.freedesktop.org/libinput/libinput/-/commit/356c498fd4ba25ec99f6866fc96847ec3d1f16bf
Versions affected: libinput 1.31.0, libinput 1.30.[0-2]
Fixed versions: libinput 1.31.1, libinput 1.30.3

2) CVE-2026-35094: Use after free allowing information leak in libinput plugins

This issue is less severe: a plugin that called Lua's __gc() function
left a dangling pointer in the device's name which could be printed to the log.
Depending on the value at the memory location, this could lead to sensitive
information being exposed.

Upstream issue: https://gitlab.freedesktop.org/libinput/libinput/-/work_items/1272
Upstream fix: https://gitlab.freedesktop.org/libinput/libinput/-/commit/45dfd0f0301af855f068df27b2e40cc9f5713acd
Versions affected: libinput 1.31.0, libinput 1.30.[0-2]
Fixed versions: libinput 1.31.1, libinput 1.30.3

As noted above, updated libinput packages that fix these issues have been
released.

Affected distributions/compositors:
-----------------------------------

Affected is any distribution with libinput 1.30.0 and newer, however lua
plugins are only loaded if the compositor (or another caller) loads plugins.
This is currently the case for GNOME 50's mutter, KWin (git) and Niri (git).
wlroots, sway and river are not affected.

Distributions affected: Fedora 43 and Fedora 44.
Fedora enables the -Dautoload-plugins meson option which causes plugins to be
loaded regardless of compositor support. Arch, OpenSuSE, Ubuntu, Debian and
NixOS do not set this flag and/or are on older versions of libinput.

This is not an exhaustive list of distributions or compositors. There are a
number of utilities that use libinput and may be affected by this, in
particular those run as root.

Acknowledgements
----------------

Many thanks to Koen Tange for reporting this issue.

--gsl4l4isadoirm4f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQQ8LEPZRH1ZOO9FUeviO35wtGfwvwUCac3FaQAKCRDiO35wtGfw
vzQNAJ9KeFTo43dRG3zkhfASV4mB1VzlKwCgtqdUb2JLYzl0He3EWW98oVv5l1c=
=SBMS
-----END PGP SIGNATURE-----

--gsl4l4isadoirm4f--
