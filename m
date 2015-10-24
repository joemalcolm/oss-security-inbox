X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2227" "Saturday" "24" "October" "2015" "17:54:10" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20151024175410.42963a35@pc1>" "73" "[oss-security] Two out of bounds reads in Zstandard / zstd" nil nil nil "10" "2015102415:54:10" "[oss-security] Two out of bounds reads in Zstandard / zstd" (number mark "        hanno@hboeck Oct 24   73/2227  " thread-indent "\"[oss-security] Two out of bounds reads in Zstandard / zstd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21700 invoked by uid 550); 24 Oct 2015 15:53:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21653 invoked from network); 24 Oct 2015 15:53:32 -0000
Message-ID: <20151024175410.42963a35@pc1>
X-Mailer: Claws Mail 3.13.0 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-31465-1445702000-0001-2"
Date: Sat, 24 Oct 2015 17:54:10 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Two out of bounds reads in Zstandard / zstd
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--=_zucker.schokokeks.org-31465-1445702000-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/26-Two-out-of-bounds-reads-in-Zstandard-zs=
td.html

Zstandard or short zstd is a new compression algorithm and tool
developed by Yann Collet. Fuzzing zstd with american fuzzy lop and
address sanitizer uncovered two out of bounds reads.


Heap out of bounds read in function ZSTD_copy8:

https://crashes.fuzzing-project.org/zstd-oob-heap-ZSTD_copy8
Input sample

https://github.com/Cyan4973/zstd/issues/49
Upstream bug report

https://github.com/Cyan4973/zstd/commit/fc60883d42f7f860d4573e34b466eca632d=
57966
Git commit / fix


Stack out of bounds read in function HUF_readStats:

https://crashes.fuzzing-project.org/zstd-oob-stack-HUF_readStats
Input sample

https://github.com/Cyan4973/zstd/issues/50
Upstream bug report

https://github.com/Cyan4973/zstd/commit/3e8fbabfa8b16fa605038c68c8fac7fe29f=
4c78a
Git commit / fix


https://github.com/Cyan4973/zstd/releases/tag/zstd-0.2.1
The new zstd version 0.2.1 fixes both issues.


--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-31465-1445702000-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWK6miAAoJEKWIAHK7tR5CF1wQAJez3rr/F0dbqkTeDMDdmwW1
SqYfvU8A/kZ4lfehGAky8b1VtY4zRZe5a4bxWw0JZQ3U+fioCstQQWsH+5rOqxrD
caCMI+pskBa3af/hhWPKVyQcHLOovt3VQV2zUeYsG35jUpiBdFHEs2R8KF7/3CjY
iHhVUzwgZLaJ06YPglBW3W/ePf1f9kxd4bx7CrBz0RuX8UJDRs8URknFYrMNVBYU
NUlQDpE8r9pxHNqN/4sth4Wm/Q5r6csyCspfEgwFyDYwU+jdpuoGhyrHjrwdm+4f
YW4vFU/1GwD/ifw7qmXkWGYkVlqrmRCN2w2hLuezj8qbwBi0kd2g1Cii2uCg6qde
3tU2cM9A309lqFMyCz885VxalUhTJWMwiaB+VQ33BVcroknPVhWvk0YV7mb6p4yS
HhWCHGzy9Cydl0BYXdaQ63pAb3oCB2cRxacEizePyU1Ks95Mgr9OmDfSHO+6OH3J
0wUONdxOf+4N6zeYN1aE0bahpEOVO2aFKWm+ggKbWKFSceiKJPnkxjpyUrZa/V+I
TCobdpV7SNXRCK6x5sq2a72/6rEiv2Gwu8l9s+DIEyxowTgBGymGlswLWxkXqoSr
TpMADpHVzrVWw5JVb7mWbOAD0fjez6+Bt8fWrQDQGiCTCeupDOTs5yRx2DXTnsvd
aypzERqL4i/5OlBq3rO3
=CMrl
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-31465-1445702000-0001-2--
