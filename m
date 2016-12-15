X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1268" "Thursday" "15" "December" "2016" "12:46:09" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<a7284f2aa7864398ab266074ca61b417@imshyb02.MITRE.ORG>" "32" "[oss-security] Re: CVE Request: FlightGear: Allows the route manager to overwrite arbitrary files" nil nil nil "12" "2016121517:46:09" "[oss-security] Re: CVE Request: FlightGear: Allows the route manager to overwrite arbitrary files" (number mark "U       cve-assign@m Dec 15   32/1268  " thread-indent "\"[oss-security] Re: CVE Request: FlightGear: Allows the route manager to overwrite arbitrary files\"\n") "<20161214155711.4z2obsdysl4qwzl3@eldamar.local>" ("<20161214155711.4z2obsdysl4qwzl3@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18400 invoked by uid 550); 15 Dec 2016 17:46:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18382 invoked from network); 15 Dec 2016 17:46:21 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161214155711.4z2obsdysl4qwzl3@eldamar.local>
Message-ID: <a7284f2aa7864398ab266074ca61b417@imshyb02.MITRE.ORG>
Date: Thu, 15 Dec 2016 12:46:09 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: FlightGear: Allows the route manager to overwrite arbitrary files

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.debian.org/848114
> https://sourceforge.net/p/flightgear/flightgear/ci/280cd523686fbdb175d50417266d2487a8ce67d2/

>> + SGPath authorizedPath = fgValidatePath(path, true /* write */);

Use CVE-2016-9956.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYUtTdAAoJEHb/MwWLVhi2FvQQALOQ9koKeFNAWXn9+FVyNjUP
GZkG+4gC5q/33B1IY4UIF08TQuXGz2diPgORmkS2jRKPWz0LBQvgI0UhPUJZR48v
MjtR6x2kvHDb2JtXMBhmySZTvwez9MJ8XosoXsmemAY1m8BgmffxgI8xExXjPpph
B08bDQAB8tspqiONLaGT+fWyeObid0LnZg0TPxif3pdkW8k2ZpfQog7AtV/ShMqK
o9aGvozIOG4nRXbHORhJroS6RfBbiblblMDt6mD1U9MWi6EXOamvG2tvEeSqWwda
wCuoocCPWifL+ythFF73emldNTl8E84z3PjEvPIb3wW5QTnc2v8j58J2Nga5A/AJ
PCOVkB2cUa2gHsUpLZ6ahr8bjPV41FErgP0r7c72Pk0O1o+eieMKg5nzW56941h7
0c6ilhNHLN1uYXeelfLzM1Y3XqH4RdyDE24tAOP+b/kw8aEOj3WWpwWI1kPeooaD
vJ70dXWn5sRWiUVknptQAV8v71o/C8Ah0rE6ArnP4i7uF6LTBc85fv+ye3xP8y9e
iA5Q6HwkT/aJfW0jFPhCNg84wgxn+n13pyEppQ5ojjPJtzbaMHsI1AN294Y/FYYM
//cDvlr14sPIht1DXa94/gFBY1Sebkg3mk3AIYvVEEvCcq7Vmyo1htOeyraH0Kdc
ihaXPExomG2PvjS3JIjV
=JSzX
-----END PGP SIGNATURE-----
