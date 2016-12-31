X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1552" "Saturday" "31" "December" "2016" "12:12:14" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<7af25344ac544162af359607a4bf34e4@imshyb02.MITRE.ORG>" "42" "[oss-security] Re: CVE Request: UnRTF: stack-based buffer overflows in cmd_* functions" nil nil nil "12" "2016123117:12:14" "[oss-security] Re: CVE Request: UnRTF: stack-based buffer overflows in cmd_* functions" (number mark "U       cve-assign@m Dec 31   42/1552  " thread-indent "\"[oss-security] Re: CVE Request: UnRTF: stack-based buffer overflows in cmd_* functions\"\n") "<20161231154054.abrg2lwgdfj3354p@eldamar.local>" ("<20161231154054.abrg2lwgdfj3354p@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7233 invoked by uid 550); 31 Dec 2016 17:12:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7215 invoked from network); 31 Dec 2016 17:12:27 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<daved@physiol.usyd.edu.au>, <jf@dockes.org>, <willi@debian.org>,
	<security@debian.org>
In-Reply-To: <20161231154054.abrg2lwgdfj3354p@eldamar.local>
Message-ID: <7af25344ac544162af359607a4bf34e4@imshyb02.MITRE.ORG>
Date: Sat, 31 Dec 2016 12:12:14 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: UnRTF: stack-based buffer overflows in cmd_* functions

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> I've found a Stack-based buffer overflow in unrtf 0.21.9, which
>> affects three functions including: cmd_expand, cmd_emboss and
>> cmd_engrave.

>> Apparently writing a negative integer to the buffer can trigger the
>> overflow (Minus sign needs an extra byte).

> https://bugs.debian.org/849705

>>> I guess that you can just add a package patch to increate the str[] buffer
>>> size, something like
>>> 
>>> - char str[10];
>>> + char str[15];

Use CVE-2016-10091 (for all of the 849705 report).

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYZ+YzAAoJEHb/MwWLVhi2I1wQAKZleo2oQTznb6H4Ktghax2F
jJ8ZchpRw9miiQogbGzSHNVFOiR5Ap0O9Kxusy9ndflduYur3Q3ipdLrONVnR+Tp
RMMRNfBcWZi3g3DI6q10WeJ1jswoz2wYljICYIZWAHULvj34Y8Gj8fpFqq8Wr4SQ
TBDSyF4RyXRNgwBaYiT3VeHQgbYwz7krzLTytmllQ+I8eG9Ehi4p4eNYLKLvUqqL
5zNTnAresR9GytTl2uCyWJN9c+IBr18lZ3BbYnYY9EJZztZLnIRbQPF7mp1ZV4M3
d5xmq2Ota/vl/xUVpn42tq7ZR2tqnKvCOah0aCZsQTBz3MWmajITaAKH6tW8uvdy
xxzvDvhN6YFdafrWBfZREdiJab6zprK5P5ErpDoj3/WJukMYVGOmCJWky8JuBI7i
tT7OElaJOUoAk0VrcZoWKAGlxrNjQXbfCBUn+xawUgeLYBmUMlBFeoBg1XpZDpl/
4iuwY55s0nOq+JTtvNswl1uDRh4lJI2JQYm4KNCC6sFgWnuXitTkWUYw+K5vndnX
XXLTUj7KoPbg67Q4kKYS7J8wEJxAXFQ6WJZklfzQ0Y81IDuFJMGCyaBnljy2NN84
0uCUp3J39jGFk34j4/HiBFEcBxj1YfBEGuCKfjSj/Ey/to6ECqTR2AhF1TSwfhpt
uvY0H3jZ2y/XLDXoUiGr
=K2dj
-----END PGP SIGNATURE-----
