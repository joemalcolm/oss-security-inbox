X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1502" "Thursday" "2" "February" "2017" "00:56:33" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<7e6f78b11fd1464ab075e4b7d8b959e3@imshyb01.MITRE.ORG>" "37" "[oss-security] Re: CVE requests: OpenBSD httpd - 2 DoS" nil nil nil "2" "2017020205:56:33" "[oss-security] Re: CVE requests: OpenBSD httpd - 2 DoS" (number mark "U       cve-assign@m Feb  2   37/1502  " thread-indent "\"[oss-security] Re: CVE requests: OpenBSD httpd - 2 DoS\"\n") "<CADxEXOgSQWqbWcQaK9cZjckN+QC-pOXSzdj+meNs5KUEm=jn+g@mail.gmail.com>" ("<CADxEXOgSQWqbWcQaK9cZjckN+QC-pOXSzdj+meNs5KUEm=jn+g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30370 invoked by uid 550); 2 Feb 2017 05:56:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30346 invoked from network); 2 Feb 2017 05:56:45 -0000
From: <cve-assign@mitre.org>
To: <pierre.kim.sec@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CADxEXOgSQWqbWcQaK9cZjckN+QC-pOXSzdj+meNs5KUEm=jn+g@mail.gmail.com>
Message-ID: <7e6f78b11fd1464ab075e4b7d8b959e3@imshyb01.MITRE.ORG>
Date: Thu, 2 Feb 2017 00:56:33 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE requests: OpenBSD httpd - 2 DoS

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> DoS: Memory exhaustion by sending crafted HTTP requests with Bytes-range.
> http://marc.info/?l=openbsd-cvs&m=148587359420912&w=2
> https://github.com/openbsd/src/commit/142cfc82b932bc211218fbd7bdda8c7ce83f19df

Use CVE-2017-5850.


> DoS: CPU exhaustion with SSL client-initiated renegotiation,

Is this a public vulnerability? It does not have any obvious match with the
latest https://github.com/openbsd/src/commits/master/usr.sbin/httpd commits.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYksb8AAoJEHb/MwWLVhi2SNEQAJJI0g5obeSlVRVpbEFOv9N9
6DONiCVXnQrM+yvLCS5lxbM3i8Sipzi4IMgm9nWP4rRZ2KyrxnxQChxgc3Ogc7wE
NvvDadF5OkRv/VFooEroINkx9pO9PelvsC4k+57b/q/mxCi1CT9N6PWbt/K9WmKJ
KJap6hYzbCpcCsiLl7oqyYC/xzlYWBLkt/41Amsg5SjM2CfZlm8dPJElMuO++LF9
XYm0+GxbpvoQtApOwvqcTGI57Ip/oi4LFjpzq8tcJI88HTx6cmij232D3zPPNeFg
R1MsrsiFvjwoh6ltz/VNhEMj1Mtd9ZKcRZjmr2fEsJiX8H659qkI/bwvEdQiLyOB
xtF2Vlzhpfp7h2ubySdh7JMGQ80xy35s08Rn5NPCLqPVy3n7QcV3yISkL7LJBI+W
ya1nR4w7y8tZk2q2QCEXYuTL8g1uXy7sPEPYIwKCkDG6MwV4NM993m0UH2cBD9em
ghWSD9JciaJfmxvPD5WPnVSId62q7DeOQKeci9rR+3J7COitx1qR6RX8v2fM7goz
NAN1F7eTxk37hmfQnVhmxc4L6x1xFP4UQzBu9AdlWHf0fWECzJwI9wANHn80Xmkz
iPu9UUwyrp6bkElEmF4Ap0u4uw1Ib7Q/4PsvhMMz2vQi4+7ZsNKiaThuF8Z9na8Q
ETptVJ36GBgs7OP35yG3
=WYRf
-----END PGP SIGNATURE-----
