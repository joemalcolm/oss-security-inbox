X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1303" "Tuesday" "31" "January" "2017" "10:17:27" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<ab6ef47f6e244a0cb7571b8b9e4c304a@imshyb01.MITRE.ORG>" "34" "[oss-security] Re: mp3splt: invalid free in free_options (options_manager.c)" nil nil nil "1" "2017013115:17:27" "[oss-security] Re: mp3splt: invalid free in free_options (options_manager.c)" (number mark "U       cve-assign@m Jan 31   34/1303  " thread-indent "\"[oss-security] Re: mp3splt: invalid free in free_options (options_manager.c)\"\n") "<2944552.SWHvZueMFW@arcadia>" ("<2944552.SWHvZueMFW@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9352 invoked by uid 550); 31 Jan 2017 15:17:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7985 invoked from network); 31 Jan 2017 15:17:39 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2944552.SWHvZueMFW@arcadia>
Message-ID: <ab6ef47f6e244a0cb7571b8b9e4c304a@imshyb01.MITRE.ORG>
Date: Tue, 31 Jan 2017 10:17:27 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: mp3splt: invalid free in free_options (options_manager.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2017/01/29/mp3splt-invalid-free-in-free_options-options_manager-c
> 
> AddressSanitizer: attempting free on address which was not 
> malloc()-ed

> free_options mp3splt-2.6.2/src/options_manager.c:67:9

Use CVE-2017-5666.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYkKj6AAoJEHb/MwWLVhi2I5IQAKIqRlQDOlDi3vBVbyHS/7uj
rVKO/et4VVkB5+vh3mAt7TmeuU9kvkUefMlnGe6MREI1aqQhxEXJkspLGZsr2vWJ
wLFPlvbb1c5+bC194ZSGn1Ad29DbqxLVFJ8569Mxggo314RjzDEXn1deMLybIlx2
e6SRJ8c6YRAtoIvTQ9e+yr3YXMKTGnqzjpbdbuu/bX6AS/Th5/OLqWBBvkdX9hic
+JiPyL0V5D0XAdTRuZbKf8SZQ6FoigR+oMbAPznQ51Ewgcxu+WVbWi16OzvWzjYM
/j6ksokUlJ4vUOHkzr/Mm/h0+agYrJWIbZzVRaX/8WVlmUCMHXiErzHLO5WQCTE4
ebPbR1bQ31a3EbClP/B8U3CfWsQI7v4jdCAIMpsO5t+JTSqOw+1pQZ0CelPgIpRF
z/QbW0AU4WCcztglgMfAN0SRe2Osa9KICNJi4x+b9nyhyGDz89CU0GFyNJP9rQ08
HsK0bs+MAtlI/zg+x2KUeFuAn5/KsyZk4UxIWaArD/hFNy/8ZMxu1t82dCjzMoBt
q0731wugv1T8TdVuQE295KyZ2g1960FHHH/UQGTondbloZYbPaw+EtHHlrkk/Ce0
r2/mL14FmCWoqWulZlKNnPebDJtKEpnwwR332Jkfumk1fAuDP/QQScBmewYHRKls
7MyqXS/LzRjMYU+GDmlw
=qRBe
-----END PGP SIGNATURE-----
