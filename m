X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3216" "Thursday" "3" "November" "2016" "12:25:40" "+0800" "Kuang-che Wu" "kcwu@csie.org" "<20161103042540.GB10528@kcwu.csie.org>" "79" "[oss-security] CVE request: w3m - multiple vulnerabilities" nil nil nil "11" "2016110304:25:40" "[oss-security] CVE request: w3m - multiple vulnerabilities" (number mark "U       kcwu@csie.or Nov  3   79/3216  " thread-indent "\"[oss-security] CVE request: w3m - multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20185 invoked by uid 550); 3 Nov 2016 07:38:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26450 invoked from network); 3 Nov 2016 04:25:58 -0000
Message-ID: <20161103042540.GB10528@kcwu.csie.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline
User-Agent: Mutt/1.6.1 (2016-04-27)
Date: Thu, 3 Nov 2016 12:25:40 +0800
From: Kuang-che Wu <kcwu@csie.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: w3m - multiple vulnerabilities
To: oss-security@lists.openwall.com

--gKMricLos+KVdGMg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Following are security flaws that I reported to debian's w3m.
https://github.com/tats/w3m
(The original w3m project on sf.net https://sourceforge.net/projects/w3m/ i=
s no
 longer maintained for several years. Debian's w3m is the only fork still
 maintained)

These issues are all fixed in 0.5.3-31 released at Oct 15, 2016.

Please assign CVEs if you think they are suitable for identifiers.

Serious issues
- https://github.com/tats/w3m/issues/8 stack smashed
  see analysis in https://github.com/tats/w3m/pull/19
- https://github.com/tats/w3m/issues/9 some buffer overflow
- https://github.com/tats/w3m/issues/12 heap write
- https://github.com/tats/w3m/issues/21 heap write
- https://github.com/tats/w3m/issues/25 heap corruption
  itself should be only OOM. But it was affected by
    https://github.com/ivmai/bdwgc/issues/135
  which become heap corruption
- https://github.com/tats/w3m/issues/26 heap write
- https://github.com/tats/w3m/issues/29 global-buffer-overflow write
=20=20

Moderate issues
(the crash point looks not-explitable but I am not sure whether=20
 they could be reused as exploit gadget)
- https://github.com/tats/w3m/issues/7 null deref
- https://github.com/tats/w3m/issues/10 stack overflow
- https://github.com/tats/w3m/issues/13 bcopy negative size
- https://github.com/tats/w3m/issues/14 array index out of bound read
- https://github.com/tats/w3m/issues/15 null deref
- https://github.com/tats/w3m/issues/16 use uninit value
- https://github.com/tats/w3m/issues/17 write to rodata
- https://github.com/tats/w3m/issues/18 null deref
- https://github.com/tats/w3m/issues/20 stack overflow
- https://github.com/tats/w3m/issues/22 near-null deref
- https://github.com/tats/w3m/issues/24 near-null deref
- https://github.com/tats/w3m/commit/d43527 potential heap buffer corruption
  I classify this as "moderate" because the allocator do preserve more space
  than required size due to bucketing. And w3m's allocator is boehmgc, it
  seems not easy replacible. So the heap won't be corrupted in practice.
- https://github.com/tats/w3m/issues/28 null deref


Not security issue, just DoS
- https://github.com/tats/w3m/issues/11 OOM


Regards,
kcwu

--gKMricLos+KVdGMg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJYGrxEAAoJEG1XW8ld0mmX/CMQAKBjzRR34MFEIStZ8X/MWawV
/KamukVi/pCK2+mhEbuCC8Y27wpMLZD/crG2L00wzh6jFy7W8excT7YncYzf8h2y
YbNY8oPRPfRArw2WjIEGA3c4WdIvhBjIWA7WDziKsoGg3PGJqok2fBAf63cjRuz9
0Ul7jbZvGxnzNu/ahdikgmxp65Ii+02sCbSwKZQ+UC8R9psgQDm10MhJ5QNkgNFE
Kk9IRxdhYBA/bMZPDyL/tqoS4eYHHgkO4Fg/TBFQ2BY1CfDDkwAm0+rDZMuVSLeO
nB+W503t/G+AV5k3KtNiuZtxhvykQNijxk2lz3apOusPbwx6yLJpu7pR075ZGLE9
lwBZJYcQv3K1gI2lPvWTidkeEb5GGl4jsQDKgxlvUxafRnMsL+9BuPFDLrCFE5WN
Ypt4QXvUrp8ciPtUvgy5/zRPsC+2JQMNfOTdrRtCswUJU3imime+T7KVlKgtiyc6
Vb7kLOBl1nfjujCpJ+NUnEOruzfZ5a7G52HAASx23G+JhFm+MkF+FRCO92h3px8k
fRu3E4c5FuF9EklBb7Rm1smkxR+NMTmVVV48TFre6qv6+nC8GWCCY353ouaym8Zi
Qz/YlwV65mwayZCZRmoBNeGKvrtGjmz2PG3ivfDSrc7nTWZ4pijN/X6mi1HLKaON
LiY1Z7GmIOuaY/77KKYT
=axdu
-----END PGP SIGNATURE-----

--gKMricLos+KVdGMg--
