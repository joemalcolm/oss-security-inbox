X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1189" "Thursday" "12" "January" "2017" "21:47:13" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<234ac7fe83fb46f8b571574565bd4e36@imshyb02.MITRE.ORG>" "30" "[oss-security] Re: CVE Request: Irssi out of bounds read in format string" nil nil nil "1" "2017011302:47:13" "[oss-security] Re: CVE Request: Irssi out of bounds read in format string" (number mark "U       cve-assign@m Jan 12   30/1189  " thread-indent "\"[oss-security] Re: CVE Request: Irssi out of bounds read in format string\"\n") "<1484223894.26049.11.camel@gmail.com>" ("<1484223894.26049.11.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1508 invoked by uid 550); 13 Jan 2017 02:47:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1490 invoked from network); 13 Jan 2017 02:47:24 -0000
From: <cve-assign@mitre.org>
To: <ailin.nemui@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <1484223894.26049.11.camel@gmail.com>
Message-ID: <234ac7fe83fb46f8b571574565bd4e36@imshyb02.MITRE.ORG>
Date: Thu, 12 Jan 2017 21:47:13 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: Irssi out of bounds read in format string

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> - Printing the value %[ leads to oob read
> https://blog.fuzzing-project.org/55-Fuzzing-Irssi-with-Perl-Scripts.html

Use CVE-2017-5356.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYeD88AAoJEHb/MwWLVhi2li0P/2G3s2BZ1aKfD6AE6RL9S1nz
DGFt6rX1OpYLBLsq0+C/6a4w8WN1Rih6LmlADwzDb6E93TY8eyfaF2jCPg5VUL1I
ZMLsAFL7WkrfJKiMItoYPDr6eKzXH1SCsuukaNFmuVCpxJS+cWuaQJKI0/Y+wrEo
zFRLTLWkx02EvicjwgdJ5+oWtp9PEpgjiAFD5fYkMG/PHWUyQIt1CYo4vTh3uvY3
m/z1ur0Eh35WSPFpxHMbUmMIi1fzVohcJTGvbXmR+EWwfRmudENrVPSFdUgCZAmh
0uQa+5it6eYPaorz67Hv9zUtEcNUzcibk/cepfNpY/rWWqJb7M2Wtg88J0YBysSS
C39Dnd6v06/2RkyZGWga8N9TF5UIty2Oljhyjrmfkw9p/ko7DJoS+F8SmDR32qtO
fB1YrhVXoXvZRj108vdtipl46w2xWL5+yP8fHTqZjRnEMRUrI308MrfjWW4UGyMi
ebLCN0uWtTXMC0TQCbXIhVNnDFhQlBRTpcxlWtuc6GDjvVCCBIWjFVB8jHUUIVBO
B+L+CQtcVoFmxz1470iodzHVjWIR7lagJp6KxaaSKQcMU+5Q2djHLw6nVuxsHC6y
o1t8u8SHXiLQSqyGImTuy/Ntvj4+yXABy5jzT2Y7XlS7dXhoSG9hu7PPsxGxIA6w
qNa+XrGe0DuQj87/bXYO
=ARuT
-----END PGP SIGNATURE-----
