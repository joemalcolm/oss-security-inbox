X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1478" "Sunday" "4" "December" "2016" "22:24:21" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<86dc641af9b1454bb9cb64f523c87a60@imshyb02.MITRE.ORG>" "37" "[oss-security] Re: CVE Request: SimpleSAMLphp: SSPSA 201612-01: Incorrect signature verification" nil nil nil "12" "2016120503:24:21" "[oss-security] Re: CVE Request: SimpleSAMLphp: SSPSA 201612-01: Incorrect signature verification" (number mark "U       cve-assign@m Dec  4   37/1478  " thread-indent "\"[oss-security] Re: CVE Request: SimpleSAMLphp: SSPSA 201612-01: Incorrect signature verification\"\n") "<20161203094405.udrlvszru3jxezia@eldamar.local>" ("<20161203094405.udrlvszru3jxezia@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30466 invoked by uid 550); 5 Dec 2016 03:24:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30444 invoked from network); 5 Dec 2016 03:24:33 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161203094405.udrlvszru3jxezia@eldamar.local>
Message-ID: <86dc641af9b1454bb9cb64f523c87a60@imshyb02.MITRE.ORG>
Date: Sun, 4 Dec 2016 22:24:21 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: SimpleSAMLphp: SSPSA 201612-01: Incorrect signature verification

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://simplesamlphp.org/security/201612-01
> https://github.com/simplesamlphp/saml2/pull/81
> https://github.com/simplesamlphp/saml2/commit/7008b0916426212c1cc2fc238b38ab9ebff0748c

>> convert an error state, signaled by the value -1, to a successful
>> verification of the signature (represented by the boolean true)

>> an error during signature verification is treated as a successful
>> verification

Use CVE-2016-9814.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYRNj2AAoJEHb/MwWLVhi2LPoQAIka//ctCZOUgkIQaf0t5UYI
hgd2XPcl6LHfOzJA+hvmERO4uxgceqNQ8nhZxkIsWs8tA/eibpHBpz2UebkcKt6r
3IRwP3Xo3NBVpHXYcL6snoDJ6eYipeQeVwEVnoudxIFrzXcHL7YJNpXbRDUA/n44
hoDlc2OZyeMzPWU+fvLXuyi/ylm2AOUJIbb9icONyhdKKyQiI61oInhbGCG47qi0
lhUUQMyTHgTlRtYGSUyJWzRo0u5OIJaS+XAgUPhWK670kTJ8ZEhVcKJNRrLiRxu6
1SHna5o26O6LHTIyJMhKcOfMYpWCUnHhqBTn+IwBalumYJucBW3k9MIBn3M0Odtp
s8mcPQ4NX70uLCEh7+alOF4Pi7tUI6N+KvFX5IUsbBhVW0afpSgl9B5BsLmEmDKT
M+szOjUQ1AaNfptqpDTWSSpusK9assQ+2g5warmw6ndPvhcjx4/1KmpInI0kCMQ3
9nZ/blvuMPd9QkiuD9YKG1qOnAO1qK7IdWKDwmVvZqweuawfJgoUknHd4a5tduaJ
REMTO+CPkk2th2dEAi9/yZywzCExOw2Am5qOIwiv6tei0GFmwRHrauglQQDE4NP8
rU49wxNYW1UOP6Yd4d2rZHiJQBhvkByhPSIWJWxggnl4cTLL5sKxSdFLech1bWuv
6ZF1/SgEqZUECFXhsUlY
=NZRo
-----END PGP SIGNATURE-----
