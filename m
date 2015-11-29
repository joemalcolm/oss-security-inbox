X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1570" "Sunday" "29" "November" "2015" "09:55:29" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151129145529.D2C3242E128@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: CVE request: XSS to RCE in PHP-Fusion 9" nil nil nil "11" "2015112914:55:29" "[oss-security] Re: CVE request: XSS to RCE in PHP-Fusion 9" (number mark "U       cve-assign@m Nov 29   39/1570  " thread-indent "\"[oss-security] Re: CVE request: XSS to RCE in PHP-Fusion 9\"\n") "<CAOJmqsBY+1OxEOE5Z4FCqb+5DPfgxGbAk97XCPoyQFdrgfqaNg@mail.gmail.com>" ("<CAOJmqsBY+1OxEOE5Z4FCqb+5DPfgxGbAk97XCPoyQFdrgfqaNg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21510 invoked by uid 550); 29 Nov 2015 14:55:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20465 invoked from network); 29 Nov 2015 14:55:41 -0000
From: cve-assign@mitre.org
To: bscarvell@iix.net
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAOJmqsBY+1OxEOE5Z4FCqb+5DPfgxGbAk97XCPoyQFdrgfqaNg@mail.gmail.com>
Message-Id: <20151129145529.D2C3242E128@smtpvbsrv1.mitre.org>
Date: Sun, 29 Nov 2015 09:55:29 -0500 (EST)
Subject: [oss-security] Re: CVE request: XSS to RCE in PHP-Fusion 9

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I discovered a stored XSS vulnerability in PHP-Fusion 9

> This breaks a trust boundary as a user with access to only the robots.txt
> editor can use this to escalate their privileges, read files or gain a
> reverse TCP shell on the server.

> The robots.txt editor fails to sanitize the robots.txt file content as it
> loads the <textarea> content.

> https://gist.github.com/bscarvell/57f82000bf823071404e
> https://github.com/php-fusion/PHP-Fusion/commit/f1a5fce791e2392d5a23a6d62ab65c481cdd6a66

Use CVE-2015-8375.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWWxF1AAoJEL54rhJi8gl52OgP/03FYNypbRsa/2VSs+EM0AYn
2aQEPy+BXrmWiIs9Vcuj/ezzlifJaq7KyneXL+KptCvtYsUDFhIzsKgoJOmsitHR
l1rJlBeLd97RLjYydIBRgPN7jciP8Y1yMy92NFj+BtuCVVmShWSDm4aMsT5Tu6qD
PmDiaKublDrNeMrVKUKVel7PNLlqbBTVq9aDK+yWc1GW/q9mf9k2m9wOJibM0uOX
KaOXk7t5sJA74rq0xjagL4QMOgaTS5maGHXepaUNDUlJwU2+WH8cJgxgaeRnJkjI
6/vqZieX7/d+/8Yhcsxuuc8wCFA1lmMyqvna6HUobhEI1QD25FGKa7lgaCqD7uzF
042IAkOYSAgV0YLQgqudH/wK55iBHOCZqhvwW635kz6nEba2aYJuD34ejDytr9qj
lKrqjtB0dIM3fjwEfD+gdiTsOjUc8S/obde2LHZf1b4LjwVXfhXTcBLh8zR9yVWS
334Lc+qXdtBuHrkQ03e549jAhDTO5RzU47vvPLaPhyRNf7A9V1MtBvYhdR5/nGTr
2mYKZl+maFFgXuqaoDS2hbvLGC3ZRK54a+vrpvCk226rhyRYRLTLTFPwGBtO0+1a
37fA62qEhD5xlx6zhwvdCHoocQws2iJoPPvSbJJL2XjasR+lDcsrvavnemUgC3ty
KQd5Jont7rwsrdGid64B
=GKmD
-----END PGP SIGNATURE-----
