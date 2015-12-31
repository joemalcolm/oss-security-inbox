X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1780" "Thursday" "31" "December" "2015" "15:33:11" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151231203311.CA5BA332073@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: CVE request: pngcrush-1.3.35 through 1.7.88 segfault when run with \"-loco\" option" nil nil nil "12" "2015123120:33:11" "[oss-security] Re: CVE request: pngcrush-1.3.35 through 1.7.88 segfault when run with \"-loco\" option" (number mark "U       cve-assign@m Dec 31   42/1780  " thread-indent "\"[oss-security] Re: CVE request: pngcrush-1.3.35 through 1.7.88 segfault when run with \"-loco\" option\"\n") "<CA+PdXcsSzW3-Ocn0ZUzARJ0Gkt-1Sg23V5K7m_3OzSQHBXA0aw@mail.gmail.com>" ("<CA+PdXcsSzW3-Ocn0ZUzARJ0Gkt-1Sg23V5K7m_3OzSQHBXA0aw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27957 invoked by uid 550); 31 Dec 2015 20:33:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27933 invoked from network); 31 Dec 2015 20:33:23 -0000
From: cve-assign@mitre.org
To: glennrp@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, brian.carpenter@gmail.com
In-Reply-To: <CA+PdXcsSzW3-Ocn0ZUzARJ0Gkt-1Sg23V5K7m_3OzSQHBXA0aw@mail.gmail.com>
Message-Id: <20151231203311.CA5BA332073@smtpvbsrv1.mitre.org>
Date: Thu, 31 Dec 2015 15:33:11 -0500 (EST)
Subject: [oss-security] Re: CVE request: pngcrush-1.3.35 through 1.7.88 segfault when run with "-loco" option

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Can you explain how a privilege boundary is crossed?

Our understanding is that pngcrush is a command-line program, and that
the bug is largely equivalent to a scenario in which the "-loco"
functionality had not been implemented.

We probably would need a threat model in which the victim cannot
recover from the attack by simply avoiding all subsequent use of the
"-loco" option, e.g., a segfault that realistically could lead to code
execution.

We also can't, for example, assign a CVE ID for a threat model in
which an attacker constructs a huge PNG file in the hope that a victim
may decide to try "pngcrush -loco" on it, and the segfault may cause
the creation of a core file that consumes the victim's available disk
space.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWhZADAAoJEL54rhJi8gl55u0QALmsZpPJPDlYUUIYzDubpfFR
QeLnKg4w94LZ2lN9YsNl6O2JVlZwDmquT0H6IdhpmFE54pz7iMV3O8pKJ5BVjuSF
3G7L32YGYY62NlARlwltC7Krxy2Xw0NiX/1lDi5xxHXshROtmF8xmtBqowjAJxHK
FkE5SXx6CyGQ5Du8PNhc9dQ33RPYRv67JMKA6JxgdbesVOyhZ64M2WKEOFYyFF4n
ivPyOddIkvrn9PoACDprZGSydjP23jfLa1Hlr7HS5W3+nWwm/C4nzW0AjIIzsTex
fJxkZhEJQyeR94qTRvsNzLGw8+8W0WjQhftSUWqsZi3HVZn2S5GXTlC2AZVAEBLE
Cdq0G1sYtdUZFPrra4bypirT2e6hsTupy1l8oDp/mGAxbP5qHJUe/pzSMBWwkmuI
fUv6fNUvWUnJvSzjVMNvEg3ArEY/4ZqMFqj+KTa0lfMfEN6rLctX+HpvIqlCL3tn
ts4232OBwDbvuZrf3nS33IB/Sy8pHae0jF7U3v0wtQhtZBH5ObsFMPJCQlXlhgLz
Pvgdx4bT0f8A1z+xHsG4/zyo7kLfxRstRGm+fR5QKVRD63do7b569/X3/CV3ViSH
ILQD5qQPYsdYlnnGQ0w3GaFl4lfajbttYfVMHNk/zrI8iK7/i6QN81mqKi2T2Jgi
XinKKQ528SshXssmInIo
=NnqJ
-----END PGP SIGNATURE-----
