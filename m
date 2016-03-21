X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1496" "Monday" "21" "March" "2016" "10:58:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160321145841.81C8F332081@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE request: Stack exhaustion in libxml2 parsing xml files in recover mode" "^Cc:" nil nil "3" "2016032114:58:41" "[oss-security] Re: CVE request: Stack exhaustion in libxml2 parsing xml files in recover mode" (number mark "        cve-assign@m Mar 21   38/1496  " thread-indent "\"[oss-security] Re: CVE request: Stack exhaustion in libxml2 parsing xml files in recover mode\"\n") "<CACn5sdSPZ7+z-LGK1PBrmv6ozCVHhNA6XCrQpJc-YR09ickhAA@mail.gmail.com>" ("<CACn5sdSPZ7+z-LGK1PBrmv6ozCVHhNA6XCrQpJc-YR09ickhAA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3246 invoked by uid 550); 21 Mar 2016 14:58:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3222 invoked from network); 21 Mar 2016 14:58:53 -0000
In-Reply-To: <CACn5sdSPZ7+z-LGK1PBrmv6ozCVHhNA6XCrQpJc-YR09ickhAA@mail.gmail.com>
Message-Id: <20160321145841.81C8F332081@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 21 Mar 2016 10:58:41 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Stack exhaustion in libxml2 parsing xml files in recover mode
To: gustavo.grieco@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> gdb --args xmllint --recover no-recover.xml

> Program received signal SIGSEGV, Segmentation fault.
> _int_malloc (av=0x7ffff7826760 <main_arena>, bytes=2) at malloc.c:3302

Use CVE-2016-3627.

> It was reported to the libxml2 bug tracker some
> time ago but the maintainers are quite busy, so they haven't fixed it.

It's typically useful to mention the bug number even if it isn't
currently a public bug, in case correlation is needed later.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW8AsWAAoJEL54rhJi8gl58g4P/i/POnAJzcVBHPdk0svtHKl+
+510uhal1JlA6r3y3AiDnqsaRM5TMzuzYs+0l9EA8ydM9nx0UMAOkA/1tHVl48P1
cJcMMoHj/dv/pBBsAaSuJEr2VttXOn4gCuhhVOJQBc1g4sMYUNEdsn3dJ9HbyI6W
sL2fkuGxXCMTl5at94lLJI+Hij8t+VrDSmS+0e+W7AvL4uDuyYH6b4Bcp4BmlX8l
m52hCy9Y72MoSHeituWXLZZ75EIWdwy8ftTmjxpO08ZPR2YjUIiwDYBZKvfWCpFt
aQc/FJrvygTbXtfvT6WUli8qrz1Q2EzYV5c1/jGSfh+0YaNJkvDdLsRlCE0qMm4L
TnoZmD2boumgRmCLAwmqQrkCZeSh6I8ET/I6NHhor8f0LXEuVGOjjN1IJCJ2wRT7
QGp7iejweiDoL1EioQg2pZij4BmG8jxy4XtJRZUBtJzt8yYfIP//z5Lm+3MwO7Uq
UCscXaI0xpLAP4WW/kQTij9wVBnByu61USK7z96dytNcxYqmQhFhaBbUcT3phqwe
JhwGxCONz1wDJG028cXD/r1DX/s/3dHLKWbSrg6zjETaBNTkuIgQBO6SJ9tPcRht
/7T/LPgsNvuqydPksZWan1ytstfOhEDrl2pexJBgnwpt6QlsZnKtIScHDn3PNBND
rpeM6ZE03EVFPNQRk0sK
=1y/J
-----END PGP SIGNATURE-----
