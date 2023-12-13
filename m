Received: (qmail 17906 invoked by uid 550); 13 Dec 2023 13:03:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10143 invoked from network); 13 Dec 2023 02:22:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=who-t.net; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm3;
	 t=1702434145; x=1702520545; bh=Iwahc1q1chNz+2FNBeU3cxr0o7S+MyY0
	ZpLtfnnZZMg=; b=oOD8yexcz5Dzh4GzBrm9G5bueJ+5QDLTDr6tHbdrBKCv744b
	5yrehCvEje26HvKM9e46956kS7VQG8Rz0wg9qleCAjlN5jdKvPv0fMYgtEbhHoZc
	rOInnytYEIsFqN8HqGFP/gFVazTjIC4Lk7AoHBgzvQgdY4JK88zoGNW2Aevp6hE9
	9cVM5ab+LGJ7WT3PJc+SJLRglG2S94XRznLz8/R/HgyD2v6zmSmIyYAkovginVdr
	QfpOFnC3pybtj3koviOzKHDll/xmXyLPcDIL4SZQcxU8U3+zCyC69mryDSeKvO6y
	KmQENbwND3M/FlXmXsS292XfHC3AaezzBp5y3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1702434145; x=1702520545; bh=Iwahc1q1chNz+2FNBeU3cxr0o7S+MyY0ZpL
	tfnnZZMg=; b=EKudVlNUvNk32rEKuwc3oA5HcHnv5mDyNzZLyabegTfsxn5gG3X
	Z0WsN+E5505lpzM8dss2Wq2KNEnY39Aqd8eg3+83+luueyYXjp5EG4UIBN+HLCkm
	e84Hi1Psy1Uvqp8WL3Z6bFcHKUsRAOWSdBqdvzD/zmUtYHRTHsD4d1WXJ6dyVIAm
	X3yNPD5twSNouRG6r21/ftnSn+z3UU4KsGHxgAWGdrIDh6OEQ9OzL5a8WM5AYwKs
	wI768sVyqCnmLNwOOd39JiS7nUpk5xkptiYgfmuf3Emk/k5j9baxn7TAbpE71RYH
	Ms51WIem+0Vjk9+NLdoXUt4d4lFVHsoH5GA==
X-ME-Sender: <xms:YRV5ZRi6yMywYZZu2ZseLsNVuZmcZlAqf0IIr49ZCDxSupSHFI8zdQ>
    <xme:YRV5ZWDovi6WGNXbYzuYYkTrj37FplQ3vBM7dpIgvMLzQKUvNOTMT4P-Ub6VBswap
    iafQZCDwqcZneQOzMk>
X-ME-Received: <xmr:YRV5ZRGJ79sCXn9vwGOYRH-sOQfWNXARSMLD5MmCMz1v7O6qqiK3ZddLypNzZ3-0b6Lh-75r8HkoNjvcrVPCRm59xUN7Ycp_FQqF>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudelhedggeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtugesghdtreertd
    dtvdenucfhrhhomheprfgvthgvrhcujfhuthhtvghrvghruceophgvthgvrhdrhhhuthht
    vghrvghrseifhhhoqdhtrdhnvghtqeenucggtffrrghtthgvrhhnpeeiudehtdfftdeuvd
    ellefhgedtkedugeeuteejveffleefveetuefhieffteetveenucffohhmrghinhepfhhr
    vggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehpvghtvghrrdhhuhhtthgvrhgvrhesfihhohdqthdrnhgvth
X-ME-Proxy: <xmx:YRV5ZWQOsjg4bX9uzTe7vHPFozMABzq1wkoqMKhVOaQIxr-MF0WwQw>
    <xmx:YRV5Zey8MVVM9qY42mEA2Dv7NxqsFoF3NRnNgwRqHMGmFKsZ87wO2w>
    <xmx:YRV5Zc4UYEjRm7ddrDGZ6Q6QOCeqrmqHsQ1XkxlNuA3RBpMYLL0zMw>
    <xmx:YRV5ZTvHkz5m81aXFsHEDFNW_WAGlq-QVMHuyJXRwtgYve2TDInoNw>
Feedback-ID: i7ce144cd:Fastmail
Date: Wed, 13 Dec 2023 12:22:20 +1000
From: Peter Hutterer <peter.hutterer@who-t.net>
To: oss-security@lists.openwall.com
Message-ID: <20231213022220.GA541253@quokka>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="L8axtbGzuCmt4+sa"
Content-Disposition: inline
Subject: [oss-security] FW: X.Org Security Advisory: Issues in X.Org X server prior to
 21.1.10 and Xwayland prior to 23.2.3

--L8axtbGzuCmt4+sa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

----- Forwarded message from Peter Hutterer <peter.hutterer@...> -----

From: Peter Hutterer <peter.hutterer@...>
Subject: X.Org Security Advisory: Issues in X.Org X server prior to 21.1.10=
 and
	Xwayland prior to 23.2.3
Date: Wed, 13 Dec 2023 12:02:10 +1000
To: xorg-announce@lists.x.org, xorg@lists.x.org

X.Org Security Advisory: December 13, 2023

Issues in X.Org X server prior to 21.1.10 and Xwayland prior to 23.2.3
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Multiple issues have been found in the X server and Xwayland implementation=
s=20
published by X.Org for which we are releasing security fixes for in
xorg-server-21.1.10 and xwayland-23.2.3.

1) CVE-2023-6377 can be triggered by forcing a logical device change on a d=
evice
with buttons which will result in an out-of-bounds memory write.

2) CVE-2023-6478 can be triggered by sending a specially crafted
request RRChangeProviderProperty or RRChangeOutputProperty. This will trigg=
er
an integer overflow and lead to disclosure of information.

------------------------------------------------------------------------

1) CVE-2023-6377: X.Org server: Out-of-bounds memory write in XKB button ac=
tions

Introduced in: xorg-server-1.6.0 (2009)
Fixed in: xorg-server-21.1.10 and xwayland-23.2.3
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/0c1a93d319558fe3a=
b2d94f51d174b4f93810afd
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

A device has XKB button actions for each button on the device. When a logic=
al
device switch happens (e.g. moving from a touchpad to a mouse), the server=
=20
re-calculates the information available on the respective master device
(typically the Virtual Core Pointer). This re-calculation only allocated en=
ough
memory for a single XKB action rather instead of enough for the newly active
physical device's number of button. As a result, querying or changing the X=
KB
button actions results in out-of-bounds memory reads and writes.

This may lead to local privilege escalation if the server is run as root or
remote code execution (e.g. x11 over ssh).

xorg-server-21.1.10 and xwayland-23.2.3 have been patched to fix this issue.


2) CVE-2023-6478: X.Org server: Out-of-bounds memory read in RRChangeOutput=
Property and RRChangeProviderProperty

Introduced in: xorg-server-1.4.0 (2007) and xorg-server-1.13.0 (2012), resp=
ectively
Fixed in: xorg-server-21.1.10 and xwayland-23.2.3
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/14f480010a93ff962=
fef66a16412fafff81ad632
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

This fixes an OOB read and the resulting information disclosure.

Length calculation for the request was clipped to a 32-bit integer. With
the correct stuff->nUnits value the expected request size was
truncated, passing the REQUEST_FIXED_SIZE check.

The server then proceeded with reading at least stuff->nUnits bytes
(depending on stuff->format) from the request and stuffing whatever it
finds into the property. In the process it would also allocate at least
stuff->nUnits bytes, i.e. 4GB.

See also CVE-2022-46344 where this issue was fixed for other requests.

xorg-server-21.1.10 and xwayland-23.2.3 have been patched to fix this issue.

------------------------------------------------------------------------

X.Org thanks all of those who reported and fixed these issues, and those
who helped with the review and release of this advisory and these fixes.



----- End forwarded message -----

--L8axtbGzuCmt4+sa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQ8LEPZRH1ZOO9FUeviO35wtGfwvwUCZXkVXAAKCRDiO35wtGfw
v8Z3AJ415UoxwYkibuth/FvB9/BF7AjUPQCeKG4umOJQdZ+finb8mnmefyZahmo=
=cP7C
-----END PGP SIGNATURE-----

--L8axtbGzuCmt4+sa--
