X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2235" "Wednesday" "9" "March" "2016" "20:21:45" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160309202145.0273729d@pc1>" "61" "[oss-security] Heap use after free in Pidgin-OTR plugin" "^Date:" nil nil "3" "2016030919:21:45" "[oss-security] Heap use after free in Pidgin-OTR plugin" (number mark "        hanno@hboeck Mar  9   61/2235  " thread-indent "\"[oss-security] Heap use after free in Pidgin-OTR plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5446 invoked by uid 550); 9 Mar 2016 19:22:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5144 invoked from network); 9 Mar 2016 19:21:53 -0000
Message-ID: <20160309202145.0273729d@pc1>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-25641-1457551301-0001-2"
Date: Wed, 9 Mar 2016 20:21:45 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Heap use after free in Pidgin-OTR plugin
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--=_zucker.schokokeks.org-25641-1457551301-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/39-Heap-use-after-free-in-Pidgin-OTR-plugi=
n.html

The pidgin-otr plugin version 4.0.2 fixes a heap use after free error.
The bug is triggered when a user tries to authenticate a buddy and
happens in the function create_smp_dialog.

The bug was discovered with Address Sanitizer. This is yet another
example why all C/C++ code should be tested with Address Sanitizer
enabled.

This bug was already independently discovered and reported in the otr
bug tracker.
https://bugs.otr.im/issues/88

Independend of this bug another more severe bug in Libotr itself was
also disclosed today, please make sure you update both libotr (4.1.1)
and the pidgin-otr plugin (4.0.2).
https://www.x41-dsec.de/lab/advisories/x41-2016-001-libotr/

Upstream bug report (contains Address Sanitizer stack trace):
https://bugs.otr.im/issues/128
Commit / fix:
https://bugs.otr.im/projects/pidgin-otr/repository/revisions/aaf551b9dd5cbb=
a8c4abaa3d4dc7ead860efef94

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-25641-1457551301-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJW4HfJAAoJEKWIAHK7tR5CMIoP/2AbUGKvWwWvijiQE39Qf9kq
MGVJHKNigJTLxs/XtJtu2crOXtLEH70B3B7pfzkIcT1x+u4IFULKoBYjbxA6JV9u
zVhntIJ9MMQ1rQ0muKQUKHpfBVTuMWy16JKs++vI9kDmPVv9VQ1O0d539VMAAG7/
bpqDHfi8JGNcntZeXfU7PBdC5PSPqhBKHD8esDU0UDPpCR3ZHRE+w4p8qU9TcK+T
lACswK0cUanFXzopjJ0OnNde846Q5i0K5Nq4Elfg0mjpm6MrK4FX32TKRpOoJ55n
8qaLCbRng1zgL+Te7pejTcthxt6eRNBoh8MF1haY7y0iOeYpFCG8NIUW9xSDxD9Y
G4iAb+uCTEhg5FNeE/k/mXPsg1RyjgBk2Da8awgi7B+ExjX3McgEYJGv4I4yMjW+
JojtXZLapoif7Uk91NJmfs1PGDAfz0pZl9hZ/M6jJZ5NcK8lB/NRo3pihxp3U3bS
StRS1IvqrlSxLjucw75wpX6skgJlWitaPb3QBqKmBWvMmTPTmrmaQUTir/0vYp8Z
xaTUkRJdg9TVezZRl9drrRYAz/DraM2PyN5ILfWTCmxtd5nU8y+7piVgXoEd/J2G
1Bl/0Oze7Fe+iDjus/Ia88XI+PIpvjPV9iSlRWB8Qkoxk+yKZtvyufW1HS0LXZAn
msHp7W/fZ+hqRNoa0R0K
=HBv9
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-25641-1457551301-0001-2--
