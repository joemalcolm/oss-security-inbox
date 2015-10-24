X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2574" "Saturday" "24" "October" "2015" "10:31:16" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20151024103116.4877253d@pc1>" "76" "[oss-security] Heap overflow and endless loop in exfatfsck / exfat-utils" nil nil nil "10" "2015102408:31:16" "[oss-security] Heap overflow and endless loop in exfatfsck / exfat-utils" (number mark "        hanno@hboeck Oct 24   76/2574  " thread-indent "\"[oss-security] Heap overflow and endless loop in exfatfsck / exfat-utils\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30141 invoked by uid 550); 24 Oct 2015 08:30:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30097 invoked from network); 24 Oct 2015 08:30:39 -0000
Message-ID: <20151024103116.4877253d@pc1>
X-Mailer: Claws Mail 3.13.0 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-18577-1445675427-0001-2"
Date: Sat, 24 Oct 2015 10:31:16 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Heap overflow and endless loop in exfatfsck / exfat-utils
To: oss-security@lists.openwall.com,
  CVE ID Requests <cve-assign@mitre.org>

--=_zucker.schokokeks.org-18577-1445675427-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/25-Heap-overflow-and-endless-loop-in-exfat=
fsck-exfat-utils.html

exfat-utils is a collection of tools to work with the exFAT filesystem.
Fuzzing the exfatfsck with american fuzzy lop led to the discovery of a
write heap overflow and an endless loop.

Especially at risk are systems that are configured to run filesystem
checks automatically on external devices like USB flash drives.

A malformed input can cause a write heap overflow in the function
verify_vbr_checksum. It might be possible to use this for code
execution.

Upstream bug report
https://github.com/relan/exfat/issues/5

Sample file triggering the bug
https://crashes.fuzzing-project.org/exfatfsck-heap-overflow-write-verify_vb=
r_checksum

Git commit for fix
https://github.com/relan/exfat/commit/2e86ae5f81da11f11673d0546efb525af02b7=
786

Another malformed input can cause an endless loop, leading to a
possible denial of service.

Upstream bug report
https://github.com/relan/exfat/issues/6

Sample file triggering the bug
https://crashes.fuzzing-project.org/exfatfsck-endless-loop

Git commit of fix
https://github.com/relan/exfat/commit/35a1f77f9be2d8b21731f758baba4334935bf=
18b

Both issues have been fixed in the latest release 1.2.1 of exfat-utils.
https://github.com/relan/exfat/releases/tag/v1.2.1

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-18577-1445675427-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWK0HUAAoJEKWIAHK7tR5CqkIP/ikFv6egbyLChEcHJo9sJs3n
Nw/k0cr6Cb+tUaYfxGOvehnJ3auiTkM6b6QsXnQurVV8kdx//0T5kK+Zb2+RKcey
HpZJxniTOVl6LSBUzqgjXo3IRgZWK6TkT1R1k5Ox2v4k0tBXPqZH6scpco8W/Io+
FKtOJRwwoYwQKF4kuRwLorHjIt6cqOAv8eFw9AL2ShzAYDFW7rnBv7LnTbNdJv7W
qBbqzlplJITFTrKwnVZjy8eOMiOWRw0BWC2nCi+aU9+kCfvpHswN71ZLlp/iolCp
4pkjcDZMJh2UJKXeBtADUcwSyHX4XRC7tZFya0fknMYLgP1+85ZnX9obWmDK8pD8
Hb91PaiUAF2GFP65ZhSV9rB1/VJ/YcoyIYaSQUTcZNltoQCblsEIrUjzN7QgNjcY
NjL7182yube5HkwuZao0+vooD7cHiVyzUf/Wb52i+bzSzqUvNY75qSu5YO0lntgq
yJRPItZ6nUkoF14EYr9qq3VzxHYUo4OxidvQpRMLeGIj/Rgq5KhDCUwuoG2e1Nwt
5XX3/6lHlzhRD/dsGjuFPo2PJxV1wIAvykf0hBLKhhToNXDWl52fF4wafB+mG7zm
9qHElm00nZVTV4t4W/WaWU1o4Adn4n7yF/iz0FR1kqLGJNDMED0Oay7nI4pjtD5V
4DmmlkodRRBi2aCtCbUt
=9KVB
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-18577-1445675427-0001-2--
