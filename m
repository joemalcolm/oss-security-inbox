X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3972" "Tuesday" "19" "January" "2016" "09:33:36" "+0100" "Johannes Segitz" "jsegitz@suse.com" "<20160119083335.GD24547@suse.de>" "113" "[oss-security] Security bugs in Linux kernel sound subsystem" nil nil nil "1" "2016011908:33:36" "[oss-security] Security bugs in Linux kernel sound subsystem" (number mark "U       jsegitz@suse Jan 19  113/3972  " thread-indent "\"[oss-security] Security bugs in Linux kernel sound subsystem\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32645 invoked by uid 550); 19 Jan 2016 08:34:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32510 invoked from network); 19 Jan 2016 08:33:50 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160119083335.GD24547@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u8s9Pzz3IDmFxazj"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Tue, 19 Jan 2016 09:33:36 +0100
From: Johannes Segitz <jsegitz@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Security bugs in Linux kernel sound subsystem
To: cve-assign@mitre.org, oss-security@lists.openwall.com

--u8s9Pzz3IDmFxazj
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Dmitry Vyukov reported a series of kernel bugs in ALSA core that have been
triggered by syzkaller fuzzer. These can allow a user to DoS the system.

Please assign CVEs to the issues listed below. Thanks.

(the link
http://lkml.kernel.org/r/CACT4Y+borJj9XYEtXzLUbH9gUipPi9TQaj_O8Sw3tNUvFODPZ=
A@mail.gmail.com
is dead,=20
http://www.spinics.net/lists/alsa-devel/msg45102.html should contain the
information)

----- Forwarded message from Takashi Iwai -----

- NULL dereference via ALSA sequencer access:
  http://lkml.kernel.org/r/CACT4Y+auYVVmKL37ijBWamQQ7zGKVVFHemyAiELW5DC0Fz7=
V3g@mail.gmail.com
  ('sound: GPF in snd_seq_fifo_clear')

  The fix is on Linus tree,
  commit 030e2c78d3a91dd0d27fef37e91950dde333eba1
    ALSA: seq: Fix missing NULL check at remove_events ioctl

- Race at ALSA sequencer timer setup and close:
  http://lkml.kernel.org/r/CACT4Y+borJj9XYEtXzLUbH9gUipPi9TQaj_O8Sw3tNUvFOD=
PZA@mail.gmail.com
  ('sound: use-after-free in snd_timer_stop')

  The fix is on Linus tree,
  commit 3567eb6af614dac436c4b16a8d426f9faed639b3
    ALSA: seq: Fix race at timer setup and close

- Race among ALSA timer ioctls:
  this is triggered by a few different fuzzer cases, and involved with
  multiple fix commits.

  http://lkml.kernel.org/r/CACT4Y+ZrVvE3dgcYHRdHDG0X316VgC-=3Dpr2U-233vVn_Q=
bHZHw@mail.gmail.com
  ('sound: use-after-free in snd_timer_interrupt')

  http://lkml.kernel.org/r/CACT4Y+bC5FMVFuk1VcqVtMyqvDyeKN4NrdxV+5eX93_Zr8L=
63Q@mail.gmail.com
  ('sound: GPF in snd_timer_user_params')

  http://lkml.kernel.org/r/CACT4Y+akV9XyDC_kmBQZV-26Py13E6sYASXaP4GKLNbRh6n=
ZnA@mail.gmail.com
  ('sound: use-after-free in snd_timer_user_ioctl')

  The fixes are the following commits on Linus tree,
  ee8413b01045c74340aa13ad5bdf905de32be736
    ALSA: timer: Fix double unlink of active_list

  af368027a49a751d6ff4ee9e3f9961f35bb4fede
    ALSA: timer: Fix race among timer ioctls

  b5a663aa426f4884c71cd8580adae73f33570f0d
    ALSA: timer: Harden slave timer list handling

- Deadlock at ALSA hrtimer concurrent accesses:
  http://lkml.kernel.org/r/CACT4Y+a3YzyNbgeeg2Dr2dDcUtP+=3DD6DxQ7Dkjn-+rEXE=
AP5vw@mail.gmail.com
  ('sound: spinlock lockup in sound/core/timer.c')

  Further tracked at the thread
  http://lkml.kernel.org/r/CACT4Y+YPVUCTenSZjLfMf08NHJm1u3--Qm6a32oTdCmxUGk=
C0Q@mail.gmail.com

  The fix is in sound git tree for-linus branch, will send a pull
  request in a couple of days:
  git://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git
=20=20
  commit 2ba1fe7a06d3624f9a7586d672b55f08f7c670f3
    ALSA: hrtimer: Fix stall by hrtimer_cancel()


----- End forwarded message -----

Johannes
--=20
GPG Key E7C81FA0       EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG N=FCrnberg)

--u8s9Pzz3IDmFxazj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJWnfTfAAoJELwn3Z0sxP1mpU8QAIr4zDqJZmj6Ayc2LWfuro/W
pDLVEXQ8SbJ1rVh95ih3XtNNjCpAAFIXMNfmqClBGk1GewkXFXLTc8FHbHBCl4Rh
RW8YpulApPZparrLe+5y3uFkF7XsXJYs7/rULxr3OBZCYQePJnPVF9VTw4BAgYL1
HhOCTw3y84zxW15H/oouML/nrj3qg8vhEq3rMyq57LiNMnIZoXx73fU/i5aGniUd
2B0AxDk+3NiSSIcZOmU6XAZPjW50VZgkirAsHWh6dmKKC1UAoO2V8wo2lgfBcW8V
DCrl8PvpXuv5eOJ1tCLQlWkekB92g4l1oSk1CAON77PFpAC8gt3TzdgtpxHlFp1k
MjkzYyCHzke0BhbSnzoKEcI1SkQMI283MxL8NKoWsU9Od0NGsC+h/Mzla4CcW1K+
fZCjQUPax0slfZfWN1kKhaVBSRK5U7/mSqj04GceNbFObvQJkGHKDvLjx894E/Y9
MFX2alBXZzFpYGevrGGqc3OPpP4+tm6D6CmtFsowto1GGtjib/ADeQBKHGb3hpFe
7s9zqYc8fAo+UdN4nm1aUcjEdRQxpZ2G9G4wDR/Mi6M41T/20MuS6iOq3RbosOZY
oHppGmJgwxCStJzogrfmuoBkdRsR10grvRbncWl+U02AWS5i3V0X02wR6v7LeQdG
gxb7Jrvqe6OuWfd8YUm3
=dtvc
-----END PGP SIGNATURE-----

--u8s9Pzz3IDmFxazj--
