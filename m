X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2153" "Wednesday" "23" "November" "2016" "20:29:24" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<ad660c2632fa4e6790fb12dc654b6769@imshyb02.MITRE.ORG>" "58" "[oss-security] Re: CVE request: w3m - multiple vulnerabilities" nil nil nil "11" "2016112401:29:24" "[oss-security] Re: CVE request: w3m - multiple vulnerabilities" (number mark "U       cve-assign@m Nov 23   58/2153  " thread-indent "\"[oss-security] Re: CVE request: w3m - multiple vulnerabilities\"\n") "<20161122051648.GI10528@kcwu.csie.org>" ("<20161122051648.GI10528@kcwu.csie.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11610 invoked by uid 550); 24 Nov 2016 01:29:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11583 invoked from network); 24 Nov 2016 01:29:36 -0000
From: <cve-assign@mitre.org>
To: <kcwu@csie.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161122051648.GI10528@kcwu.csie.org>
Message-ID: <ad660c2632fa4e6790fb12dc654b6769@imshyb02.MITRE.ORG>
Date: Wed, 23 Nov 2016 20:29:24 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: w3m - multiple vulnerabilities

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

CVE-2016-9621 - https://github.com/tats/w3m/issues/29 global-buffer-overflow write

CVE-2016-9622 - https://github.com/tats/w3m/issues/32 null deref

CVE-2016-9623 - https://github.com/tats/w3m/issues/33 null deref

CVE-2016-9624 - https://github.com/tats/w3m/issues/35 near-null deref

CVE-2016-9625 - https://github.com/tats/w3m/issues/36 stack overflow

CVE-2016-9626 - https://github.com/tats/w3m/issues/37 stack overflow


>  https://github.com/tats/w3m/issues/38 heap overflow read + deref

This is a single issue described as "Prevent array index out of bounds for symbol"
in https://github.com/tats/w3m/commit/0c3f5d0e0d9269ad47b8f4b061d7818993913189

Use CVE-2016-9627.


CVE-2016-9628 - https://github.com/tats/w3m/issues/39 null deref

CVE-2016-9629 - https://github.com/tats/w3m/issues/40 null deref

CVE-2016-9630 - https://github.com/tats/w3m/issues/41 global-buffer-overflow read

CVE-2016-9631 - https://github.com/tats/w3m/issues/42 null deref

CVE-2016-9632 - https://github.com/tats/w3m/issues/43 global-buffer-overflow read

CVE-2016-9633 - https://github.com/tats/w3m/issues/23 OOM

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYNkGwAAoJEHb/MwWLVhi2OBoP/2hAgLEX4dNUdROa3s7mzq3P
2WL7yqZUisyAmTfJT9D9clv6hI8tgu2vjpNDz3Cilq2Q0OyzvuJ1LnQ9jBXuENo7
8YjvaeS4ZtJJR5OnMTNf6chYFm5x2pw7dfGYWoUtZR0IalxXIWzXJMw0u8INf2BF
hh0agXsmgjlf1xqE+UPxPPNFuyfqcpNqt0P1wyLUv+oT5IFVIqKYdu3jt1TpjnSr
swvJphIAdvxanEztk+3y9vsm9oXVLE3bWbYlrtvMnIkqq7IJRgN1HnXOG3Szv8Wq
/o2caFc+d1PQEY8csaISbuRQKkJ+ah8bBtU1WSprnjIKvXo523VJ6MDwUvFbpOMw
9IJXTLbCwpayIKlyDlZ8hywEWhqEM8BMjSqsVTTNcX+OLVGYQrGTr9J4Nelb2tNr
QqFUjtJbKXyvC+k7YU6gxIhIrPuzJmznMCKlvjPEI1U5epFXpAU/j/SL5Y02kGJA
E2X+moIuddy/eCm2XCVrV48+JQ5ogkurvsjqYNLey5q3AY/abMT0Y0/db2iLx//2
Erjgbh9y4AeCu12EkezM+x8VPWXlOaRPRq7fWCAnX5FNPB1zWPc0XvHkhohUNYfS
3iWnh66BF9mkwhozZdUqhIiRmeLkPG9dvdEq5Vp8/anU2RLHfzE1jew1vcSaXRXk
fxLX2vS3cGtCddByKBMN
=9Mxk
-----END PGP SIGNATURE-----
