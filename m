X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1035" "Wednesday" "18" "March" "2015" "04:55:12" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150318085512.7366A3320BA@smtpvbsrv1.mitre.org>" "28" "[oss-security] Re: CVE Request: ZIP Integer Overflow leads to writing past heap boundary" nil nil nil "3" "2015031808:55:12" "[oss-security] Re: CVE Request: ZIP Integer Overflow leads to writing past heap boundary" (number mark "        cve-assign@m Mar 18   28/1035  " thread-indent "\"[oss-security] Re: CVE Request: ZIP Integer Overflow leads to writing past heap boundary\"\n") "<CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>" ("<CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23716 invoked by uid 550); 18 Mar 2015 08:55:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23680 invoked from network); 18 Mar 2015 08:55:24 -0000
In-Reply-To: <CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>
Message-Id: <20150318085512.7366A3320BA@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 18 Mar 2015 04:55:12 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: ZIP Integer Overflow leads to writing past heap boundary
To: emmanuel.law@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://bugs.php.net/bug.php?id=69253
> https://github.com/php/php-src/commit/ef8fc4b53d92fbfcd8ef1abbd6f2f5fe2c4a11e5

> PHP <= 5.6.6 has a Integer overflow vulnerability when opening a
> ZipArchive with a large number of entries. This results in writing
> past the heap boundary and crashing PHP.

Use CVE-2015-2331.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVCTzWAAoJEKllVAevmvmsq9AH/A8w37MaxNKhxdv+jo91GOyq
ZKuU4wDHhP7yt8QFTGiBy0PYIvfGU2xh+4486lrdski6cqfLd7N+Qqd8ZE0G1ytm
uvigoqGFyyjhqMdkIq77JGJ7qommln+al5nFHwt6nA73sW6I/hywHB0qACPFaWq3
BJ18vp2RGcyqMCxVQaBQbO7a02kJkPXSJRvLtyKjbpW8QS3uHeNmifQP/Xb4Xlv6
RTHMBhAmG9LqOS+TAmUa5QqEql+QjLvRgnXwT49O7aRaX19IFcePubjQhHtw037b
PN8/d2XkdJeVL2m1tiiLuN6vqTp9Ro3MsiHFsHTIs/iUazE/qRg9lwmMeVzV91g=
=dAFG
-----END PGP SIGNATURE-----
