X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1640" "Sunday" "4" "December" "2016" "22:21:05" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<e510445958b0452499da785a4d64ab4b@imshyb02.MITRE.ORG>" "49" "[oss-security] Re: Xen Security Advisory 201 - ARM guests may induce host asynchronous abort" nil nil nil "12" "2016120503:21:05" "[oss-security] Re: Xen Security Advisory 201 - ARM guests may induce host asynchronous abort" (number mark "U       cve-assign@m Dec  4   49/1640  " thread-indent "\"[oss-security] Re: Xen Security Advisory 201 - ARM guests may induce host asynchronous abort\"\n") "<E1cBjhk-0000Fg-Ct@xenbits.xenproject.org>" ("<E1cBjhk-0000Fg-Ct@xenbits.xenproject.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9933 invoked by uid 550); 5 Dec 2016 03:21:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9902 invoked from network); 5 Dec 2016 03:21:17 -0000
From: <cve-assign@mitre.org>
To: <security@xen.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <E1cBjhk-0000Fg-Ct@xenbits.xenproject.org>
Message-ID: <e510445958b0452499da785a4d64ab4b@imshyb02.MITRE.ORG>
Date: Sun, 4 Dec 2016 22:21:05 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Xen Security Advisory 201 - ARM guests may induce host asynchronous abort

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A malicious guest may be able to crash the host.

> x86 systems are not affected.

> ffdefdaa67748df7fccbc82011202724c622ca432cd121853ecab45ff4657406  xsa201-1.patch

Use CVE-2016-9815.


> 0665eb575b056f98d5330ef23f497b2b3de1a15319e2012005890a17df32a7ed  xsa201-2.patch

Use CVE-2016-9816.


> 4486d5efb59c1f1fff04a3cb697f948d5bf680e2a1c0d76cd44382ad8fa9095e  xsa201-3.patch
> ca82c82acd51bf3cb8114d1843519c28e3df26243bd45eb712ff10ba11061b93  xsa201-3-4.7.patch

Use CVE-2016-9817.


> 1de6ddb4b5b46ae390ec4587e588c00a706f4a68365d379db7ad54234f770d48  xsa201-4.patch

Use CVE-2016-9818.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYRNkEAAoJEHb/MwWLVhi2qkoP+gPLRp8bs5dFIQelz0NUnFgh
TVuE883HifFhNiWgAk+L7D7+COlgqJcK+SChwjdCtfMTMfLUv6KRUJGExd3lXmqF
AZ9cJr1Qfp0xGStwdyeOTXi6mHnQAdr4zw8em2rQQE72quJSesxhm9I2LOLGnWAr
2zq5TZeAPmu27wdzkT+nakz7XWyD8ecxlypRhCn+Y1aCWi/KMME4blEsjGGW7+vU
RoXbPyB1eF5bVhq6PQA2mnyZw8X2r02xUux0TACbNvG3SCa2DvlVVMOTitBbmmUv
rL4ptE71hKfhV5uds7Ptf+hJNJLLBwRemjQ1cd+j7iTRC2Mb4TUOr5kKYAHaZRxi
C25wKWjpM8957eeS7+EnY3o7XYfI0fVRLgyZNKDinuJUUAqEgtLVMyMu7coUsWCr
Yl68yJ6je392WmQmW3fffHk4d3Rl/GnVVOQy3qnVTcLZp2McM67IwCnHDFqBMRwb
6mGN6nc2MPSDPhZgOb5nmR44ho/JjSJoHYktudamJIEhr4WTpZuoKnUIOadQyc91
x/WFi/IVarv06SN4OEfT/grE0ujZmBnlefdLmee5R247V5E52unS4g/z1CNqTgNm
X+u7bfvxbxIzZf8GdtJrf98apo9mDcdwfmdRuuPSUOG13ySlKxj8SY/3NSE6o30j
4XyiforlM4vWauldBk3V
=OdPm
-----END PGP SIGNATURE-----
