X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1329" "Saturday" "27" "February" "2016" "08:44:25" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160227134425.4F5F26C012D@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl" "^Cc:" nil nil "2" "2016022713:44:25" "[oss-security] Re: CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl" (number mark "U       cve-assign@m Feb 27   35/1329  " thread-indent "\"[oss-security] Re: CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl\"\n") "<20160226155416.82785yodpagwmigw@webmail.alunos.dcc.fc.up.pt>" ("<20160226155416.82785yodpagwmigw@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19480 invoked by uid 550); 27 Feb 2016 13:44:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19461 invoked from network); 27 Feb 2016 13:44:37 -0000
In-Reply-To: <20160226155416.82785yodpagwmigw@webmail.alunos.dcc.fc.up.pt>
Message-Id: <20160227134425.4F5F26C012D@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat, 27 Feb 2016 08:44:25 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl
To: up201407890@alunos.dcc.fc.up.pt

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> When executing a program via "runuser -u nonpriv program" the
> nonpriv session can
> escape to the parent session by using the TIOCSTI ioctl to push
> characters into the
> terminal's input buffer

> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=815922

Use CVE-2016-2779.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW0aedAAoJEL54rhJi8gl5pAoQAKWMwUdm+ZVBG7mMq8qqlCSQ
an4Xqnp7s8vlogDY3NDBvVYazYVtg5Ajh9fSrWtNJeRcRkfiOw856XYNyN3mXcvn
JXD2XMllsy+UsynMKzt4rlp6qlUCa26s4q60q6eDhoZRkRu/YjpitlnJwB6o2+yJ
J8rZ3gZgzBL9ydfn0e+dOTdHrrpkM6mnKl1i6XKiHAdCz9AXqEn+rWVpsp6tfg8p
Xnjr7VYQYBqELHzX4w7wuyMsc1zSSFd4X2dqT50ypNbRVh+UjZLR5bO4NNIILFB4
YJGuGIKKc6rkGgNrNa7CM7Ll0f2O+i1Bpb4Iv+39ACT5TRXuFGwh2O//ZRCeLVbl
edEhEnc60xcJAGnf47bA11thDvgxS11sc/tI++2bW3jYARRzybSS6Ym0hvGP/lGE
8VycZrUMMDKKTXWu7mXxqTnbIDh91y1jVpdfZ077Qf9maEzpTM89zXuMc2GTbylY
on8ZoRqxNto++aejWpILRvno9iA7jxXj68ex4Lb8IFNJeQNoKYaZRs/OxM62RmUV
GAK/HrGbhM/A2/6AvFbrYEdXIbEzbFJqbLuZ0p/+sQZzQuoD9p992Cm2+yjPkoC0
CJOzwgm9GSPYzvLmIOGWw/7n+H+a2HRGxKzscwc6GP2fmSfYdyfcCS76fcKlx30N
uTHZfWSO+IA9Kz9tUgc2
=L3QX
-----END PGP SIGNATURE-----
