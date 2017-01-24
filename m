X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1317" "Tuesday" "24" "January" "2017" "03:12:09" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<c66b6384d0834cb09b4c472e15f2131c@imshyb01.MITRE.ORG>" "36" "[oss-security] Re: CVE request: Linux kernel: vc4: int overflow leading to heap-based buffer overflow" nil nil nil "1" "2017012408:12:09" "[oss-security] Re: CVE request: Linux kernel: vc4: int overflow leading to heap-based buffer overflow" (number mark "U       cve-assign@m Jan 24   36/1317  " thread-indent "\"[oss-security] Re: CVE request: Linux kernel: vc4: int overflow leading to heap-based buffer overflow\"\n") "<f7ba24cc-1b0e-7ea8-fd2d-d062c817d55d@insomniasec.com>" ("<f7ba24cc-1b0e-7ea8-fd2d-d062c817d55d@insomniasec.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5525 invoked by uid 550); 24 Jan 2017 08:12:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5507 invoked from network); 24 Jan 2017 08:12:22 -0000
From: <cve-assign@mitre.org>
To: <murray.mcallister@insomniasec.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <f7ba24cc-1b0e-7ea8-fd2d-d062c817d55d@insomniasec.com>
Message-ID: <c66b6384d0834cb09b4c472e15f2131c@imshyb01.MITRE.ORG>
Date: Tue, 24 Jan 2017 03:12:09 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: Linux kernel: vc4: int overflow leading to heap-based buffer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [PATCH 1/2] drm/vc4: Fix an integer overflow in temporary allocation layout.
> https://lkml.org/lkml/2017/1/17/761

Use CVE-2017-5576.


> [PATCH 2/2] drm/vc4: Return -EINVAL on the overflow checks failing.
> https://lkml.org/lkml/2017/1/17/759

Use CVE-2017-5577.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYhwunAAoJEHb/MwWLVhi2S/wP/jt59qeY74I02n9My1lTZEYd
jy7AWveL6n8B/Z3JTcJq+70wVn8wQ0j+oKI+Hd4PdQzK0inBYINgRvuPnrtFaY0R
yNgJhfrOHyw+FRwrAqgjQeo/0iiWmmOus3iQeK/4z4snHFdo3nXkQULAS3hh5J0y
U0EEubTWGp8czySRj325Lz05ZyRsTW8A3oIm/mtbocuh85r2OdHrisE8SxRvzmdM
plXtCFqLzwnw4ay23VB7AsZOjJUknyxwohARgyQBLjIyRD/GGhKhblfAzbsJ1GeS
C43os7VZkxlkZMIJJMt/C4iZJdihzVSuQ9sA70exo8bwBMcAs6Fa1IG8HuZTPQH5
bU1sBzKu55b/Iyo2CK3+fTDkNbvAggF0RzJkTUZ7FDuqupbpDgCCPOxqFc67cnkY
0sS4iVJRQctUSV2DCcbGvlxL3SMA1raBGzVszoPuhrM1KQP6cHGEj6Zkx/q2/UKh
sCD9dV7ZUXo/HRGGfdgWmkMC1quhQ0Vbh7KQYna2Sb6CrUFVPfyyAymv4daF4xe/
HjjxrtLcsr75GbI4m7z7HvMHuR3Ec2ok6cx3NMM/G1ya8nhbjDJkgOd87DFohgYV
OHvBTQbk1g955spSJsQNsI0W9UcORJ2/b7N0PR9JP4Xtn/61A1VNdZSUKijFl/s/
F6HMPX7zYdSE8i9NWJ7D
=vnRT
-----END PGP SIGNATURE-----
