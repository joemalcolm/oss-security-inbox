X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4522" "Tuesday" "23" "February" "2016" "15:26:52" "+0100" "Johannes Segitz" "jsegitz@suse.com" "<20160223142652.GG4714@suse.de>" "123" "Re: [oss-security] Security bugs in Linux kernel sound subsystem" "^Date:" nil nil "2" "2016022314:26:52" "[oss-security] Security bugs in Linux kernel sound subsystem" (number mark "        jsegitz@suse Feb 23  123/4522  " thread-indent "\"Re: [oss-security] Security bugs in Linux kernel sound subsystem\"\n") "<20160119083335.GD24547@suse.de>" ("<20160119083335.GD24547@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13530 invoked by uid 550); 23 Feb 2016 14:27:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13510 invoked from network); 23 Feb 2016 14:27:05 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160223142652.GG4714@suse.de>
References: <20160119083335.GD24547@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WRT3RXLOp/bBMgTI"
Content-Disposition: inline
In-Reply-To: <20160119083335.GD24547@suse.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Tue, 23 Feb 2016 15:26:52 +0100
From: Johannes Segitz <jsegitz@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security bugs in Linux kernel sound subsystem
To: cve-assign@mitre.org, oss-security@lists.openwall.com

--WRT3RXLOp/bBMgTI
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

ping, please have a look

On Tue, Jan 19, 2016 at 09:33:36AM +0100, Johannes Segitz wrote:
> Hi,
>=20
> Dmitry Vyukov reported a series of kernel bugs in ALSA core that have been
> triggered by syzkaller fuzzer. These can allow a user to DoS the system.
>=20
> Please assign CVEs to the issues listed below. Thanks.
>=20
> (the link
> http://lkml.kernel.org/r/CACT4Y+borJj9XYEtXzLUbH9gUipPi9TQaj_O8Sw3tNUvFOD=
PZA@mail.gmail.com
> is dead,=20
> http://www.spinics.net/lists/alsa-devel/msg45102.html should contain the
> information)
>=20
> ----- Forwarded message from Takashi Iwai -----
>=20
> - NULL dereference via ALSA sequencer access:
>   http://lkml.kernel.org/r/CACT4Y+auYVVmKL37ijBWamQQ7zGKVVFHemyAiELW5DC0F=
z7V3g@mail.gmail.com
>   ('sound: GPF in snd_seq_fifo_clear')
>=20
>   The fix is on Linus tree,
>   commit 030e2c78d3a91dd0d27fef37e91950dde333eba1
>     ALSA: seq: Fix missing NULL check at remove_events ioctl
>=20
> - Race at ALSA sequencer timer setup and close:
>   http://lkml.kernel.org/r/CACT4Y+borJj9XYEtXzLUbH9gUipPi9TQaj_O8Sw3tNUvF=
ODPZA@mail.gmail.com
>   ('sound: use-after-free in snd_timer_stop')
>=20
>   The fix is on Linus tree,
>   commit 3567eb6af614dac436c4b16a8d426f9faed639b3
>     ALSA: seq: Fix race at timer setup and close
>=20
> - Race among ALSA timer ioctls:
>   this is triggered by a few different fuzzer cases, and involved with
>   multiple fix commits.
>=20
>   http://lkml.kernel.org/r/CACT4Y+ZrVvE3dgcYHRdHDG0X316VgC-=3Dpr2U-233vVn=
_QbHZHw@mail.gmail.com
>   ('sound: use-after-free in snd_timer_interrupt')
>=20
>   http://lkml.kernel.org/r/CACT4Y+bC5FMVFuk1VcqVtMyqvDyeKN4NrdxV+5eX93_Zr=
8L63Q@mail.gmail.com
>   ('sound: GPF in snd_timer_user_params')
>=20
>   http://lkml.kernel.org/r/CACT4Y+akV9XyDC_kmBQZV-26Py13E6sYASXaP4GKLNbRh=
6nZnA@mail.gmail.com
>   ('sound: use-after-free in snd_timer_user_ioctl')
>=20
>   The fixes are the following commits on Linus tree,
>   ee8413b01045c74340aa13ad5bdf905de32be736
>     ALSA: timer: Fix double unlink of active_list
>=20
>   af368027a49a751d6ff4ee9e3f9961f35bb4fede
>     ALSA: timer: Fix race among timer ioctls
>=20
>   b5a663aa426f4884c71cd8580adae73f33570f0d
>     ALSA: timer: Harden slave timer list handling
>=20
> - Deadlock at ALSA hrtimer concurrent accesses:
>   http://lkml.kernel.org/r/CACT4Y+a3YzyNbgeeg2Dr2dDcUtP+=3DD6DxQ7Dkjn-+rE=
XEAP5vw@mail.gmail.com
>   ('sound: spinlock lockup in sound/core/timer.c')
>=20
>   Further tracked at the thread
>   http://lkml.kernel.org/r/CACT4Y+YPVUCTenSZjLfMf08NHJm1u3--Qm6a32oTdCmxU=
GkC0Q@mail.gmail.com
>=20
>   The fix is in sound git tree for-linus branch, will send a pull
>   request in a couple of days:
>   git://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git
>=20=20=20
>   commit 2ba1fe7a06d3624f9a7586d672b55f08f7c670f3
>     ALSA: hrtimer: Fix stall by hrtimer_cancel()
>=20
>=20
> ----- End forwarded message -----
>=20
> Johannes
> --=20
> GPG Key E7C81FA0       EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
> Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
> SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
> HRB 21284 (AG N=FCrnberg)

Johannes
--=20
GPG Key E7C81FA0       EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG N=FCrnberg)

--WRT3RXLOp/bBMgTI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJWzGwsAAoJELwn3Z0sxP1muUgP/ima64SdRh91GXMKyCNoU+1N
5Lb9/M9DoccpG6IgIstjHldknXXS4ZKx/JsA99Lm8telz0ZaoVTVs8zKLinftOaA
Quu+xVZ3gqxZVQMkn6U+JPmU/FhZQ/m5ehHILs7HLmCKcSIvGWW4KGK5zwieH3R9
T4TAtx2SYfnjgUU/YDA2eWHIV56LQEujh8CojCmuvKvehC1rB3bLvwlx6ZLEtiAR
CFu1gZLqT5td/gM74cBqL9mCv3b8eRnFBwRpBhVCck6Rcn8MOgGrnaZkqMwJNK+L
aLIl7fi9SAjCNfOTL15YW7miLT+KXlWYGErO1+2pJ3mVsi++Lh2nsQSQ4Bk5U/V3
5q2wcsf78s0MrWriB/z+Y0ZseHswcxFp0LwhLSJO6O8ukGrfZwth5sW0v0bIkQR8
b9Hzr4pmLkgZufjlLgW6S+17BZbU+CMFluk3DkneOBCDSavvsOBjdX5eoEcrl/fI
n2QqY/hR9D4ms9Pxt7SbJ4LeTRJIOv9V1L9w9g8c1naEqDWIUR5kAnczkWHnXpL3
ZnKlNfK+EumXPQvfPdDGuH/FtvUURdbmfkvA3EQ0T7kTvCdJYz9fu+i3WKscTGqE
3PZVD7nnemHqNVtd6VQGA52zj1Ei2Ox7fmLitsnf9cJiFUpDs9sMNQOSngdlHfur
JjwIXB1C+9q7PFzLoh0o
=MHjS
-----END PGP SIGNATURE-----

--WRT3RXLOp/bBMgTI--
