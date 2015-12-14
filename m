X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1343" "Monday" "14" "December" "2015" "16:39:16" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151214213916.E045EB2E0A1@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: CVE Request: Local Privilege Escalation in QEMU virtfs-proxy-helper" nil nil nil "12" "2015121421:39:16" "[oss-security] Re: CVE Request: Local Privilege Escalation in QEMU virtfs-proxy-helper" (number mark "U       cve-assign@m Dec 14   34/1343  " thread-indent "\"[oss-security] Re: CVE Request: Local Privilege Escalation in QEMU virtfs-proxy-helper\"\n") "<CAHmME9rjqikpOLkw50Ug0a2gYNkRbB_z9gY7LXmvnjQ=0h2edw@mail.gmail.com>" ("<CAHmME9rjqikpOLkw50Ug0a2gYNkRbB_z9gY7LXmvnjQ=0h2edw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13649 invoked by uid 550); 14 Dec 2015 21:39:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13627 invoked from network); 14 Dec 2015 21:39:28 -0000
From: cve-assign@mitre.org
To: Jason@zx2c4.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAHmME9rjqikpOLkw50Ug0a2gYNkRbB_z9gY7LXmvnjQ=0h2edw@mail.gmail.com>
Message-Id: <20151214213916.E045EB2E0A1@smtpvbsrv1.mitre.org>
Date: Mon, 14 Dec 2015 16:39:16 -0500 (EST)
Subject: [oss-security] Re: CVE Request: Local Privilege Escalation in QEMU virtfs-proxy-helper

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=183dd7394703b49c7af441a9c4227b4b91453510

Use CVE-2015-8556 for this issue only in Gentoo.

> I have no idea if QEMU upstream recommends suid/fscaps in some
> documentation, or something similar

We didn't find any related recommendation.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWbzMvAAoJEL54rhJi8gl5BAEP/AlC+o90/2XVr9kloGoul5y+
18hSeoZZNNTH3kBDodD9Cg/ugIpfnUE+oWxNi/7XCwr/mNSMHusoGCXfZEVpH7m7
QrnYUlZ3vIuSHzwWrbJZJVDLW7cIChkiXPeMUJcWhAHHMYXZt+HV18hdbcyd6I9B
2r3ehxuoxM5aMQePh1wdGeDCKbuRJQeAV4+Ccr51Q6Rx7bLa3EjwVM8mTdcFqw+Y
4SXC8nwkhMvWyRDjlbVlXqM6HDBF53v3wNnnH9Pd7zZJKhOxPIwIO88aKJ6J4SA9
7boKIO2xFP/J0ceFvdg5zAyRoIfH61XKWF9qdcRyEDmqc5Kr1Mbn3n99ZEBk0q74
WBfWqipZCNOmlty2piDH9gNRHH2CAlN2kpSUTQR/vR3uMyvsrJAzEs03Wfp9hhve
RiUIo5ZIJuZdfUJKSvaTrt1qpBzPREfA4r+ZKd+SOF17cjLXicbgG57rHOSO7ecC
EDeOJqdOLj6DaSC0QQRty5davufOBTcIK6GuPZXTGGsrVwmLQcfl+9rSd44mux3L
ClNyblsyLQ+qKHmrotWVZWvQhmZ15ZbiO3tJIELC1sz1bpTbrG+TZ1O6aR65cnye
UTgjw5W3CB0ZtJr6UspxmUmH087t6KG6nDjtomu7pVIaMiS/yb8olhyy9rlDJu/8
AOW73NnXp4LdPitgpZAB
=E5ZP
-----END PGP SIGNATURE-----
