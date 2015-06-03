X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1750" "Tuesday" "2" "June" "2015" "22:35:02" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150603023502.B967F72E055@smtpvbsrv1.mitre.org>" "41" "[oss-security] Re: Stack out of bounds read access in uudecode / sharutils" nil nil nil "6" "2015060302:35:02" "[oss-security] Re: Stack out of bounds read access in uudecode / sharutils" (number mark "        cve-assign@m Jun  2   41/1750  " thread-indent "\"[oss-security] Re: Stack out of bounds read access in uudecode / sharutils\"\n") "<20150603010028.2c166570@pc1>" ("<20150603010028.2c166570@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7383 invoked by uid 550); 3 Jun 2015 02:35:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7335 invoked from network); 3 Jun 2015 02:35:14 -0000
In-Reply-To: <20150603010028.2c166570@pc1>
Message-Id: <20150603023502.B967F72E055@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue,  2 Jun 2015 22:35:02 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Stack out of bounds read access in uudecode / sharutils
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://blog.fuzzing-project.org/13-Stack-out-of-bounds-read-access-in-uudecode-sharutils.html

What are the realistic scenarios in which this has a security impact?

For example, can any of these occur on actual systems?

1. The attacker e-mails a uuencoded file to their own mailbox on a
web-based mail service. This service has a feature in which decoded
data is presented to the recipient. (The server operates on the data
with the uudecode program, not with any other implementation of the
uudecode algorithm. The attacker gains read access to unintended parts
of the server's memory.)

2. A web site allows users to do HTTP uploads of data in uuencoded
format, and supports requests for decoded versions of the data. Same
parenthesized description as above.

3. The attacker composes a news article with crafted uuencoded data
and posts it to the alt.sources Usenet newsgroup. The attacker is
subscribed to this newsgroup in their own account on a web-based
Usenet news reading service. Same parenthesized description as above.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVbmbWAAoJEKllVAevmvms0BQIAIEpR/65912H2dyOkptzXc3a
yvCUShXy4vInB4X4Y7qdRqNDnEw1omG6gzEauNU545Tnxd3iy0Mx1QmzCHQZIHCl
OH6Y26y+daHICe70uxSzbjXmnGQeeT6JOTV4kPlEuU/GNcRbVsq0CxH2hlIXmweo
D7YYUEH4tcGQQfJrh/sG4w/PiujlimQBynRONJyGOz5yVA5LTp1yl6Vw1hz6GpoS
BazzQP/d+O5thgL0pXkenkwRGbbKP1N2vT9SNCCB04nTM1djY6DQ+2OenaEHSidq
NyKSkxLYNUmP170gXMZvJwS0ruaXpKz4GUYFFwd+Tk1Cy92jyOFyW9IYOv3TF1E=
=xMZZ
-----END PGP SIGNATURE-----
