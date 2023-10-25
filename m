Received: (qmail 32326 invoked by uid 550); 25 Oct 2023 11:06:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23980 invoked from network); 25 Oct 2023 02:39:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=who-t.net; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm2; t=1698201542; x=1698287942; bh=9uE/IO7sigxl9U2KsWY+sXwyp
	m8Hk1Lg7Xr8hdBEtQ8=; b=CLvtDW9+YZlcWOqadTLPIoJr8u2WuriXqAH8tpaKp
	rSFDluOxq6bB8pP5GCl30TkYW680eOhlCAH1MPW+Qjc88IIHck22HmEMoT/DQLK3
	//d4zeXKOKzX8Dee3JrG2tQ3ca5HPuO3noWnFe2HJlepD6BnSplon+1MjCkCDcmH
	1Gbggpm/VVexOSmLL6c5fYeTqK4DsxXKtj1EDFsG1Dl8IKoW0dAPVyMMdc9bmDI2
	izZ4UUPiPeXe7SfFPRD4NshySiL/36xzUoBIWPPwcsKni8azN13cRKxcHuI6+wY9
	vDUCW622UTaieAXKPdCQ8HOnD9CyccSW0+NJIeyyTPAHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1698201542; x=1698287942; bh=9uE/IO7sigxl9U2KsWY+sXwypm8Hk1Lg7Xr
	8hdBEtQ8=; b=SFN1lZP90mah0lyVDUwSbOJmLgDjj8hTpu/ruCouDOSgnIsMFJm
	Xwe8jvzyeNetKIdJ0Zzahthg9ZlclfIQbHK9hN+HYs0snwEZvk3g2GQl3jgZj+C+
	VFkZXF+rerTLD+GvTtjPenucT7W81ExGHXIDH5AuPQFXiW5WSU3hHvdoaItPXtlS
	PMhmM2xraZgRNJStiWLvbj9zqnHF9lul5SlobbFCv2qp4452tS/TFd7G5rcVcGkb
	VzshwGGdUDGJ6Pacruyt1/lyyIGmrZvBvru9O5XtcoWOBEp4NQiDwiPKSeLJxTVb
	uCe5culv6GI3vBfqE+eMETMAGocuDJ1CwSA==
X-ME-Sender: <xms:xn84ZWQrYiSxC3kRblVRJWvgUMIiyVMi6hGTfayKbK_njOU56rAMYA>
    <xme:xn84Zbxt7rC2hDPxl2QQOA2dpLnBToofzFBuQlRy_QPDGJ5zkUjhpIcHq4WqIXbNp
    r2hYk8oX9mj3BPj_yc>
X-ME-Received: <xmr:xn84ZT35y7SxI29DaTm4GtGNGZq9aViG4SsAiaxZ31pTtw9M1oPLoRiJDqTd7FIodRYkQ2fDQ28XT9EOLAZV-KjN4LWiostzWdQD>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrkeelgdeivdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtggusehgtderredttd
    dvnecuhfhrohhmpefrvghtvghrucfjuhhtthgvrhgvrhcuoehpvghtvghrrdhhuhhtthgv
    rhgvrhesfihhohdqthdrnhgvtheqnecuggftrfgrthhtvghrnhepieduhedtffdtuedvle
    elhfegtdekudegueetjeevffelfeevteeuhfeiffetteevnecuffhomhgrihhnpehfrhgv
    vgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepphgvthgvrhdrhhhuthhtvghrvghrseifhhhoqdhtrdhnvght
X-ME-Proxy: <xmx:xn84ZSBZ5SvPo1iwggoovzvc3pqj8i-GqlNG7BGMbK3zfStU-EfYbA>
    <xmx:xn84Zfh2feR2JFm6mWe-XsV_DsPGW0cV6dIRHBXbzy7WCK3mKKvKxA>
    <xmx:xn84ZeoT1T8dKowGqCH4p_BonP4JMuIhl53d8fqjwa6GeFwRdJqs5Q>
    <xmx:xn84ZRcc1PSrNWXB2wxEH8y1ty4DuR7BVh0svohgSkMv0zcBZlz5GQ>
Feedback-ID: i7ce144cd:Fastmail
Date: Wed, 25 Oct 2023 12:38:56 +1000
From: Peter Hutterer <peter.hutterer@who-t.net>
To: oss-security@lists.openwall.com
Message-ID: <20231025023856.GA687776@quokka>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3Zyg/I5cdPGR77HB"
Content-Disposition: inline
Subject: [oss-security] FW: X.Org Security Advisory: Issues in X.Org X server prior to
 21.1.9 and Xwayland prior to 23.2.2

--3Zyg/I5cdPGR77HB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

----- Forwarded message from Peter Hutterer <peter.hutterer@...> -----

Subject: X.Org Security Advisory: Issues in X.Org X server prior to 21.1.9 =
and
	Xwayland prior to 23.2.2
From: Peter Hutterer <peter.hutterer@...>
Date: Wed, 25 Oct 2023 11:53:55 +1000
To: xorg-announce@lists.x.org
Cc: xorg@lists.x.org

X.Org Security Advisory: October 25, 2023

Issues in X.Org X server prior to 21.1.9 and Xwayland prior to 23.2.2
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Multiple issues have been found in the X.Org X server implementation publis=
hed
by X.Org for which we are releasing security fixes for in xorg-server-21.1.9
and xwayland-23.2.2.

The first issue (CVE-2023-5367) can be triggered by prepending to an input
device property or randr property.

The second issue (CVE-2023-5380) can be triggered by warping a pointer acro=
ss
screens in legacy multi-head setups and destroying specific client windows.
Note that Xwayland is not affected by this issue.

The third issue (CVE-2023-5574) can be triggered in Xvfb during cleanup of =
the
ScreenRec, either at server shutdown or when the last client disconnects.
Note that this issue has not been fixed in a release yet due to some
issues with the proposed fixes.

----------------------------------------------------------------------------

1) CVE-2023-5367 X.Org server: OOB write in XIChangeDeviceProperty/RRChange=
OutputProperty

Introduced in: xorg-server-1.7.0 (2009) and xorg-server-1.4.0 (2007), respe=
ctively
Fixed in: xorg-server-21.1.9 and xwayland-23.2.2
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/541ab2ecd41d4d868=
9e71855d93e492bc554719a

When prepending values to an existing property an invalid offset calculation
causes the existing values to be appended at the wrong offset. The resulting
memcpy() would write into memory outside the heap-allocated array.

For example, prepending 3 values to an existing 5 value property results in
an allocated array of size 8, but the existing 5 values would be written at
indices 5 through to 10. Indices 3 and 4 were left uninitialized, but due t=
o a
separate bug the resulting property only had a client-visible length of 3
values and the uninitialized memory data was never visibile to the client.

xorg-server-21.1.9 and xwayland-23.2.2 have been patched to fix the offset
calculation and the length calculation of the property.

2) CVE-2023-5380: Use-after-free bug in DestroyWindow

Introduced in: xorg-server-1.7.0 (2009)
Fixed in: xorg-server-21.1.9
Found by: Sri working with Trend Micro Zero Day Initiative
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/564ccf2ce96166204=
56102727acb8b0256b7bbd7

This vulnerability requires a legacy multi-screen setup with multiple proto=
col
screens ("Zaphod"). If the pointer is warped from one screen to the root wi=
ndow
of the other screen, the enter/leave code may retain a reference to the
previous pointer window. Destroying this window leaves that reference in pl=
ace,
other windows may then trigger a use-after-free bug when they are destroyed.

This bug can be triggered only under very specific conditions, in particula=
r it
requires an XWarpPointer call and that the pointer never enters a client wi=
ndow
on the other screen.

xorg-server-21.1.9 has been patched fix the offset calculation. Xwayland is=
 not
affected as it does not support multiple protocol screens.

3) CVE-2023-5574: Use-after-free bug in DamageDestroy

Introduced in: xorg-server-1.13.0 (2012)
Found by: Sri working with Trend Micro Zero Day Initiative
Merge request tracking the fixes: https://gitlab.freedesktop.org/xorg/xserv=
er/-/merge_requests/1189

This issue only affects Xvfb and requires a legacy multi-screen setup
with multiple protocol screens ("Zaphod").

Screen cleanup is handled via stackable "modules", but the fb module hardco=
ded
the cleanup path for the screen pixmap instead of calling into the next lay=
er
of the stack. This caused a minor memory leak that was fixed with a patch to
Xvfb introduced in server 1.13. However, that patch did not remove all
references to the freed pixmap, causing a use-after-free during screen clea=
nup
in a lower module.

This issue has not yet been fixed, please see the above merge request to
track future fixes to this issue.

----------------------------------------------------------------------------

X.Org thanks all of those who reported and fixed these issues, and those
who helped with the review and release of this advisory and these fixes.



----- End forwarded message -----

--3Zyg/I5cdPGR77HB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQ8LEPZRH1ZOO9FUeviO35wtGfwvwUCZTh/vgAKCRDiO35wtGfw
vxRoAJ9E/s2SLuBZHubdoGZPijxGiMlOAACeLruD2EvkJ8LFfx7N7iuXfAZDz/4=
=mZse
-----END PGP SIGNATURE-----

--3Zyg/I5cdPGR77HB--
