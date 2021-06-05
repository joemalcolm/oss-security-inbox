X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7262" "Saturday" "5" "June" "2021" "02:55:10" "+0200" "Marek =?utf-8?B?TWFyY3p5a293c2tpLUfDs3JlY2tp?=" "marmarek@invisiblethingslab.com" nil "182" "[oss-security] XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock" nil nil nil "6" nil nil (number mark "U       marmarek@inv Jun  5  182/7262  " thread-indent "\"[oss-security] XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24029 invoked by uid 550); 5 Jun 2021 08:12:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3758 invoked from network); 5 Jun 2021 00:55:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=UWttYD3vcam0CRYF2aRAbejSEvuD6
	GasQFWXpjvSUYQ=; b=s2jSlVrjWCqEwwZrWJEzqljrCQAqrHHnA1A/sLnjucZ5t
	vkMOnJ6MSHY9OtYhOsK1Ox6KbIOwiSl3cgUR5A7sBHmtJeu8B2rLhRkNqDDYkYpb
	yN7m0LKNopRl/tVunHK2uyVHAzzmOjASXu8G7i3YQtgDQeW8NTPEYrfRb5D494sS
	5fJaWZKxFaFmbzfkiiUBroK/ehnECd3h6NvVrpoIGyZTQ9Cln8ZeVFOpGUW06M0J
	5VT+QgZi6ep6Z3F5au7gfOboFfBbAfrs3o4daQDq0kAxUd7UKKhlBVFdjmQRsQD/
	iWrhBypLl8RMHYy8AV6RV9v8WZXvG1uIdmvkHswOQ==
X-ME-Sender: <xms:ccu6YFXuHBN5Thok7nwqScIh5xwwXytMf7I6UpRCx1qXx1c_76K9TA>
    <xme:ccu6YFn0w9V7q-klSrNvtoctUIyHo42gjtv-3nuiJt6PPdKwQMBS9pM-dGU75ZHhj
    WFFQeJwl_OiwQ>
X-ME-Received: <xmr:ccu6YBZYY3mtnOcbvzG1etW7BkVDVGFSWDRz6D8hg6JYEKCRVstR0hpPIL3620-6icficNkzv6dawyRiXS-51paGgsyTrcwq>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedtvddgfeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtugesghdtreertd
    dtjeenucfhrhhomhepofgrrhgvkhcuofgrrhgtiiihkhhofihskhhiqdfikphrvggtkhhi
    uceomhgrrhhmrghrvghksehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqne
    cuggftrfgrthhtvghrnhepteduteeiudevkeegvefhtdekhfelgffhhedukedvvdeuuddv
    jeehvddtieehudfgnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrghrmhgrrhgvkhesihhn
    vhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:ccu6YIWxm31uThgPQO0QYTRr0PzX08xN5Mf6uxjGNaeFzCWcD19Jhw>
    <xmx:ccu6YPnXp5UxBxAcrpuizSWZYHCgm1MLv9r9-Tim7ZohiRr0j_vkTA>
    <xmx:ccu6YFdH8wyrJox8ppyoGZR7AwFnw_Bo3C4CLLsAyyMXTlhctQSqVw>
    <xmx:csu6YLzuWjjXLWey903to-DjCp_ZhHqlN7EkzgWaHikqGrXjc8jPPw>
Date: Sat, 5 Jun 2021 02:55:10 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <YLrLbpUuAbLO3RR8@mail-itl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w4utwrCeTSq9wwFN"
Content-Disposition: inline
Subject: [oss-security] XScreenSaver 5.45: Disconnecting a video output can cause
 XScreenSaver to crash and unlock

--w4utwrCeTSq9wwFN
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 5 Jun 2021 02:55:10 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: XScreenSaver 5.45: Disconnecting a video output can cause
 XScreenSaver to crash and unlock

Summary
=3D=3D=3D=3D=3D=3D=3D=3D

XScreenSaver is the default screen locker in dom0. It tracks which video
outputs are connected to the system in order to blank them properly. In
some specific hardware configurations, disconnecting an output can cause
XScreenSaver to crash, leaving the screen unlocked.

The issue affects XScreenSaver 5.45 only.

Impact
=3D=3D=3D=3D=3D=3D=3D

On hardware configurations with more than 10 video outputs that can be
disconnected, an attacker with physical access to a screen-locked system
may be able to unlock it by physically disconnecting one or more
outputs, bypassing standard screen lock authentication.

Details
=3D=3D=3D=3D=3D=3D=3D=3D

On X11, screen locking and blanking is done by creating a window that
obscures the whole screen, which is a standard practice. In
XScreenSaver, each such window is assigned a specific property. When a
video output is disconnected, its corresponding blanking window is
destroyed, and its XScreenSaver-specific property is removed so that it
will not be used by `xscreensaver-command` anymore. This is handled by
the `update_screen_layout()` function in the `driver/screens.c` file:

     985 /* Synchronize the contents of si->ssi to the current state of the=
 monitors.
     986    Doesn't change anything if nothing has changed; otherwise, alte=
rs and
     987    reuses existing saver_screen_info structs as much as possible.
     988    Returns True if anything changed.
     989  */
     990 Bool
     991 update_screen_layout (saver_info *si)
     992 {
     993   monitor **monitors =3D scan_monitors (si);
     994   int count =3D 0;
     995   int good_count =3D 0;
    ...
    1009   while (monitors[count])
    1010     {
    1011       if (monitors[count]->sanity =3D=3D S_SANE)
    1012         good_count++;
    1013       count++;
    1014     }
    1015=20
    1016   if (si->ssi_count =3D=3D 0)
    1017     {
    1018       si->ssi_count =3D 10;
    1019       si->screens =3D (saver_screen_info *)
    1020         calloc (sizeof(*si->screens), si->ssi_count);
    1021     }
    1022=20
    1023   if (si->ssi_count <=3D good_count)
    1024     {
    1025       si->ssi_count =3D good_count + 10;
    1026       si->screens =3D (saver_screen_info *)
    1027         realloc (si->screens, sizeof(*si->screens) * si->ssi_count=
);
    1028       memset (si->screens + si->nscreens, 0,
    1029               sizeof(*si->screens) * (si->ssi_count - si->nscreens=
));
    1030     }
    ...
    1092   for (; j < count; j++)
    1093     {
    1094       saver_screen_info *ssi =3D &si->screens[j];
    1095       if (!ssi->screensaver_window)
    1096         continue;
    1097       fprintf (stderr, "%s: %d: screen now unused, disabling.\n",
    1098                blurb(), j);
    1099       /* Undo store_saver_id() so that xscreensaver-command doesn'=
t attempt
    1100          to communicate with us through this window. It might make=
 more
    1101          sense to destroy the window, but I'm not 100% sure that t=
here are
    1102          no outstanding grabs on it that have yet been transferred.
    1103        */
    1104       XDeleteProperty (si->dpy, ssi->screensaver_window,
    1105                        XA_SCREENSAVER_VERSION);
    1106     }

The initial portion of the function counts how many outputs are defined
(the `count` variable) and how many of them are connected (the
`good_count` variable). Then, the `si->screens` array is allocated or
re-allocated to fit information about connected outputs, with an extra
margin of 10 entries. However, the loop at the end iterates over the
array up to the total number of outputs, not just the ones that are
connected.

If there are 10 or fewer disconnected outputs, this works fine. However,
if there are more than 10, it will access the array beyond its end,
reading unrelated data from memory. It will interpret this data as an
XScreenSaver window ID. If that unrelated data happens to be non-zero
(which is very likely), then the condition at line 1095 will not skip
it, and the `XDeleteProperty` call will operate on that (most likely
invalid) window ID. This, in turn, will cause the XScreenSaver process
to crash, as that's what the error handler is programmed to do (the
`saver_ehandler()` function in the `driver/xscreensaver.c` file).

The error message will look like this:

    #######################################################################=
#######
=20=20=20=20
    xscreensaver: 11:17:59: X Error!  PLEASE REPORT THIS BUG.
    xscreensaver: 11:17:59: screen 0/0: 0x2ae, 0x0, 0x6600001
    xscreensaver: 11:17:59: screen 0/1: 0x2ae, 0x0, 0x0
=20=20=20=20
    #######################################################################=
#######
=20=20=20=20
    X Error of failed request:  BadWindow (invalid Window parameter)
      Major opcode of failed request:  19 (X_DeleteProperty)
      Resource id in failed request:  0x188dba0
      Serial number of failed request:  4284
      Current serial number in output stream:  4286
=20=20=20=20
    #######################################################################


The issue affects only XScreenSaver version 5.45. Versions 5.44 and
older, as well as 6.00, are not affected. The XScreenSaver author was
notified about this issue and decided not to publish an advisory, as the
issue does not affect the most recent version.

The Qubes Security Team has decided to address this issue in Qubes OS by
patching this specific bug rather than immediately upgrading to the 6.00
version. The reason is that XScreenSaver 6.00 is a major update with
major architectural changes. As such, it poses an increased risk of
introducing unrelated problems. However, this decision does not preclude
the possibility of updating to XScreenSaver 6.00 at some point in the
future, independently of this particular security patch.

Credits
=3D=3D=3D=3D=3D=3D=3D=3D

The issue was reported by Mustafa Kuscu:
https://github.com/QubesOS/qubes-issues/issues/6595


This is mostly repost of Qubes Security Bulletin 068 (with minor edits),
as it may be relevant to other distributions:
https://github.com/QubesOS/qubes-secpack/blob/master/QSBs/qsb-068-2021.txt


--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--w4utwrCeTSq9wwFN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmC6y20ACgkQ24/THMrX
1yzMQgf/SlIikdMVtU/fHejXtoxuvAhRDmI0xx119ULyDaoz673DkbAru3ncDEqN
mEkEgyZ8VlOptmA02wDJMR22+OWshDPmqUl+Krw+lK4vDN2MHI1Pnk4PY7PBzHvz
uq080NAr/UzWfUd4vonA4/kapMLWU14RqQ8t+3xGGthzk10/lrauXLNcBxkMfLE0
uFo5F6ZQ7IZg4XJ73iZyB7oz8t6v8G16i335HzOgObqnbzOtAPP2FZLW4UNJYQXM
CxAKbW5IPwXfm7QcigRUshjqxV5Ej0xLRjsFpUbEWD+9fQdPeKl3U+n9YyA+xpEt
LKRmNwXCUHJUGDC3o04/WuQ761XZrw==
=87SV
-----END PGP SIGNATURE-----

--w4utwrCeTSq9wwFN--
