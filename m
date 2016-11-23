X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1438" "Tuesday" "22" "November" "2016" "19:17:13" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<3fc75fac762f4dc8acc9a7911df31e5b@imshyb02.MITRE.ORG>" "37" "[oss-security] Re: libdwarf: negation overflow in dwarf_leb.c" nil nil nil "11" "2016112300:17:13" "[oss-security] Re: libdwarf: negation overflow in dwarf_leb.c" (number mark "U       cve-assign@m Nov 22   37/1438  " thread-indent "\"[oss-security] Re: libdwarf: negation overflow in dwarf_leb.c\"\n") "<1681368.mmIYxGAJKb@arcadia>" ("<1681368.mmIYxGAJKb@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32235 invoked by uid 550); 23 Nov 2016 00:17:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32211 invoked from network); 23 Nov 2016 00:17:25 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <1681368.mmIYxGAJKb@arcadia>
Message-ID: <3fc75fac762f4dc8acc9a7911df31e5b@imshyb02.MITRE.ORG>
Date: Tue, 22 Nov 2016 19:17:13 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libdwarf: negation overflow in dwarf_leb.c

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/11/19/libdwarf-negation-overflow-in-dwarf_leb-c

> dwarf_leb.c:306:19: runtime error: negation of -9223372036854775808 cannot be
> represented in type 'Dwarf_Signed' (aka 'long long')

> https://sourceforge.net/p/libdwarf/code/ci/4f19e1050cd8e9ddf2cb6caa061ff2fec4c9b5f9/#diff-5

> libdwarf/dwarf_leb.c 
> dwarfdump/print_frames.c 

Use CVE-2016-9558.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYNN5vAAoJEHb/MwWLVhi2GfkP/jgNLEYfq0Q32Eo1nHbEkMUz
w2mmoTJn9AUDZMrcBvO8ir4o8NXFrQBx2VbDgwWKH2ba8fXq2hlVGc3n3TDaLxp3
QfqMowvu0dZw78L6sPWBEwsVh5wzmAQOV5ORoLJhe4vT+UQgTeze8uRtpiM8TxmQ
09oSpDfZtlY1YCreHb5wgkZoBUxwu/wmFSFWw7LNh20fPfaVtfzn/wUbjnhfF6Et
5yYhY6pcMnOmZoXqpbXvCNi3iLJHaWAVbbME3lL4shmG4ZnnYq/DmIGBqtu9t0zu
gqvfT9ZqFkenxdTBAWKtwFY+4His6ORl3xwYUgxkNaINPDTew9lx49XvpYi20wB7
SQSbc0pfY3vv+Xe3Svu8JtcFK/0QL1dBWns79OafFnF6Th721o1FNsz6vSWTp0TW
01voipBiOq8tv3eF/oAGO9ENJv6l/GQXAy1vy0vfS4HXDechPxTNgG3jm1DrM/WH
X2oezB+KKQdxGc03N48oewPy+GHcaZm48XdLkrCARBLaP2scTIeW62Xx1LrclaGX
Frn8w5JDYe2CHuk6+h7XsY/WVdMDO9akjZiImuey/LJJ5Hja+VCYqeG3cLlLK72A
drA2E9FBuphjZEy6qjYroy6X+vxQhFxuEQVC07yaygT/2ySSNP4ujRAQvQZKszSt
kyslnffeY07X+QLx5GNi
=00TY
-----END PGP SIGNATURE-----
