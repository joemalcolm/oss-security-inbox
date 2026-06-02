Received: (qmail 8011 invoked by uid 550); 2 Jun 2026 00:27:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16090 invoked from network); 2 Jun 2026 00:06:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=who-t.net; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm3;
	 t=1780358804; x=1780445204; bh=IZMuDQhLGUUhq4q5rCm7kzwx1mhIan4s
	uLrPJjfL1KY=; b=xzVPJWm4tqlugaUVifqdcJAB2Bqm6MEn0IH8/GCItuM9SmY2
	e/panhkeU9ARxmec8/hIvWHqIZHVQglhSsGv1d+k3Kamp5CmXrk63TXW5i4O+3OM
	IZVsQm68yoWhPrBLCB2rorCHrkQYjSR50mK8WOYOLYEe/8lPzY/8RYsnNvow3Qdt
	QOn6FpZJmaCJxKUwBgpMLHISr3imaRjuZiS4BrviickvFqjGHPBJSrDY3Z/s9Tk0
	g9B2VTsPkTJKpboMgLXT9om+Elxtvu36XWOmTk7YGtlP141B4W9nsgiR0QP4VMLT
	P4UxKX1yok8+CMcGCeDzkh0SLgc7AJc8X1OS1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1780358804; x=
	1780445204; bh=IZMuDQhLGUUhq4q5rCm7kzwx1mhIan4suLrPJjfL1KY=; b=h
	RMYvMgvPsaaAxDg/ZGYlYAMc0Tcn1qb7af5a7MG5A1wwgn6Q7nMaCOT6hl8nYfqM
	8wZe2DdWyT8spDuFXZiWZ3QBmdfwXq6FgFc3/ZsXruZ19F7NRhTj8euoohftQ975
	LjvfSmDZ8PyzMQ3/AhwWrrCTkTosADPB7c0BXTMmweQc7cCc7ttmvrgOpdelRXQm
	NWI2Na/AN8C0ABWREKU7u5FPKFgSNsx8uACJF4OsVUW3YB2fsCK3BN4D5yX04jY0
	48WfR/iMiIEohNjMZmFbjQdZKrdmWAMhFvYQytRyvTQHhO0Duw4LgitfLd/RsQ2H
	4Lxdzx30UavUoA1qLL6Iw==
X-ME-Sender: <xms:kx4ean4nm01ZG1rp5R1fi6Zhsl_F5qtrECu1ASOuAp8oaEQUamleHg>
    <xme:kx4eaj0ZU8NGwzKedpjo6-8ykehDQUbjpsmKP9Fko5RKgIw8pHlEdP4nEJqGdYKc-
    jsDUTGeuaRcVosrmMTBFPW8N4xcvEfAweCIsMZvqoC_mloDKlDSlTUr>
X-ME-Received: <xmr:kx4eakH4bHkLWMaeprsHktnfwvVXjzhbdhMNhsnEPXJokIdlFcylEWISUAW6xhcDPLKb7GADGvK73PuSIwAaJsBef5z39a1eYSvq>
X-ME-Proxy-Cause: dmFkZTFmKqxnnzcXZcNai8N7Y8A7odV3DC7jZxTHSx4W+kZua0fYg5ErELxBRMRh0muuUL
    8hk2qntZTxl52Bx1/V0qEkyQWBjZxycMDQeLf8XCD9C5qTHNY6aDVTI94AwCC3jMIeC0xD
    TmPK+6hoCiAqyOrAyXZtMAU/uYlDebtuBGGOh5baJfUtbzF0ig1Jy1jYI/FZUwACQyTvU1
    Jchxqf7Njg1gnQIBCP5uq+RCysNpLRLUwytPD2cb5SaAvINTRG/sdg1sOUbWKmY5y/96M1
    WuWMNpTT2dnzzkEIL4e2Dji2K1cX1C/bvMASw3d08QaQPi+O0M8sP21hj/7ILSOfJmp2PE
    Vx0hGuMvaXRhud2JLGatnHroq9NKLJZ1GFtUx7tu9yIGiHyGYNnAKT1BHUIr1NWbQfzjGP
    BoufxCSuF/HHdiTPnw+eRwd1jGW/5qI7GKb7MrJK8QB66p2d+z12q8rXomnxcBVru0RhD5
    atOOshqm3iXlvhKOfcNDbhhWS3ScWbyUCOaglgcNSC7MFM9ujFcBXg4b1dQd9O8U1mrqBs
    xGEIPXnVfd4Epb74p8BAewKEZhgwR+8heEB26zQ62AU9OOaWSV8XeIDjrWvxhfJ5vThoAi
    GUd+UEp/I4SSzBb2MSxZfSxsNCZ519Ul+rhhD8ZJNt3c0dQ/Rh0QGcdk6duQ
X-ME-Proxy: <xmx:kx4eatSa0TyTRubv-XfHL-o2dX2c-JAFp5LUtceM0fVjnp_kdRuZag>
    <xmx:kx4earBZ7mpUGwBhWyW2fbbHtdZxWvfo7zfBIwEcxTkJwaKRs9IweQ>
    <xmx:kx4eat08-7trj4PJgyTliVkCAL6w1oQx7DAH6P8Lbgysk2fyZztvoA>
    <xmx:kx4eapWBYpOeHcu9kxcJkCddhLvq6_YlnXL6N7l4VTUaZclWfRrk5g>
    <xmx:lB4eahCM2ITbv_9rz1JVXZ0sHkEGjceKskwSMvmdiNlBS4cHutOj3ElP>
Feedback-ID: i7ce144cd:Fastmail
Date: Tue, 2 Jun 2026 10:06:39 +1000
From: Peter Hutterer <peter.hutterer@who-t.net>
To: oss-security@lists.openwall.com
Message-ID: <ah4eSpv9hMfFZNAy@quokka>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2a3kvijxki6ovmcb"
Content-Disposition: inline
Subject: [oss-security] FW: X.Org Security Advisory: multiple security issues X.Org X server
 and Xwayland

--2a3kvijxki6ovmcb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: FW: X.Org Security Advisory: multiple security issues X.Org X server
 and Xwayland
MIME-Version: 1.0

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
X.Org Security Advisory: June 2, 2026=20

Issues in X.Org X server prior to 21.1.23 and Xwayland prior to 24.1.12
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Multiple issues have been found in the X server and Xwayland implementations
published by X.Org for which we are releasing security fixes for in
xorg-server-21.1.23 and xwayland-24.1.12.

Note that CVEs have been requested for these issues but did not get assigne=
d in
time for this disclosure.

* Font Alias Stack-based Buffer Overflow

    A mismatch between the X server and the libXfont2 library's maximum
    font name length can cause a stack buffer overflow during font alias
    resolution. The server allocates a 256 byte stack buffer but libXfont2's
    alias target name length is 1024 bytes. A font alias name between 257
    and 1023 bytes causes the X server to copy that name into the undersized
    stack buffer without further checks.

    Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
    Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/bb5158f962dc9=
35e58ef8b4b5fcb31be201a6e07
    Found by: Anonymous working with TrendAI Zero Day Initiative.
              (ZDI-CAN-30136)

* XSYNC Use-After-Free in miSyncDestroyFence()

    A client that sets up multiple fence triggers can trigger a
    use-after-free function pointer call. An attacker would connect to the
    X server to set up a fence and await that fence, then a second X
    connection destroys the fence, causing the use-after-free.

    Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
    Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/f5abfb6199447=
1023d8c6470428c8e30c411cc0b
    Found by: Anonymous working with TrendAI Zero Day Initiative.
              (ZDI-CAN-30159)

* XKB Key Types Stack-based Buffer Overflow

    The X server has multiple stack buffers that are sized
    XkbMaxShiftLevel * XkbNumKbdGroups but CheckKeyTypes() does not verify
    or clamp non-canonical key types to XkbMaxShiftLevel. A client can
    change key types to excessive shift levels and trigger three separate
    stack overflows.

    This is caused by an incomplete fix of CVE-2025-26597.

    Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
    Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/543e108516428=
fc8c3bea91d6563ad266f9a801e
    Found by: Anonymous working with TrendAI Zero Day Initiative.
              (ZDI-CAN-30160)

* XKB SetMap Request Stack-based Buffer Overflow

    _XkbSetMapChecks() declares a fixed-size stack buffer mapWidths[256]
    indexed by key type index. The helper function CheckKeyTypes() writes
    to this buffer at a client-controlled offset, allowing a stack buffer
    overflow.

    Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
    Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/867b59b33bee6=
69cb412f1314e47c52eacf6e00b
    Found by: Anonymous working with TrendAI Zero Day Initiative.
              (ZDI-CAN-30161)

* XSYNC Use-After-Free in FreeCounter()

    A client that sets up multiple SyncCounters and awaits on those
    triggers can trigger a use-after-free when destroying those counters
    via a second client connection.

    Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
    Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/f5abfb6199447=
1023d8c6470428c8e30c411cc0b
    Found by: Anonymous working with TrendAI Zero Day Initiative.
              (ZDI-CAN-30163)

* XSYNC Use-After-Free in SyncChangeCounter()

    A client that sets up multiple SyncCounters can trigger a use-after-free
    when destroying those counters via a second client connection while
    changing those counters.

    Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
    Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/bdd7bf57af208=
b1ddf57d4683d67104443b44812
    Found by: Anonymous working with TrendAI Zero Day Initiative.
              (ZDI-CAN-30164)

* GLX ChangeDrawableAttributes Out-Of-Bounds Read/Write

    A wrong size validation check in __glXDisp_ChangeDrawableAttributes()
    can read (or write) a client-controlled number of bytes, exceeding
    the request buffer.

    The write path requires byte-swapped clients which is disabled by
    default.

    The read can lead to information disclosure, the write can be used
    to crash the server, or for privilege escalation if the X server runs
    as root.

    Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
    Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/6d459e4daf715=
bea8abdafa8fb130be2f8a1d145
    Found by: Anonymous working with TrendAI Zero Day Initiative.
              (ZDI-CAN-30165)

* CreateSaverWindow Use-After-Free Information Disclosure

    A client can trigger a use-after-free read after changing window
    attributes and forcing the screen saver. This can lead to information
    disclosure.

    Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
    Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/ecc634f1b2f7a=
a473d3a267eada98c4918bf9e05
    Found by: Anonymous working with TrendAI Zero Day Initiative.
              (ZDI-CAN-30168)

* DRI2 DRIGetBuffers/DRIGetBuffersWithFormat Out-Of-Bounds Write

    A client that requests multiple DRI2BufferBackLeft attachments and one
    DRI2BufferFrontLeft can trigger an out-of-bounds heap write.

    Fixed in: xorg-server-21.1.23 and xwayland-24.1.12
    Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/339c279514326=
134b0878fc23ce6e9520440ce7f
         https://gitlab.freedesktop.org/xorg/xserver/-/commit/b7aa65cc3bb11=
b792ce2a3f511ba9b863acb11c8
    Found by: Peter Hutterer, Red Hat.

--2a3kvijxki6ovmcb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQQ8LEPZRH1ZOO9FUeviO35wtGfwvwUCah4ejwAKCRDiO35wtGfw
v1CxAJ9SIiCMgo6DsbXrqkrlvpondpF8+ACfavHeHyO2HViF4PNZyW8blyzhc3o=
=tInu
-----END PGP SIGNATURE-----

--2a3kvijxki6ovmcb--
