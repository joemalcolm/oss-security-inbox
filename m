X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1464" "Saturday" "10" "October" "2015" "11:30:20" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151010153020.1CEF31BE955@smtpvbsrv1.mitre.org>" "41" "[oss-security] Re: CVE Request: Use-after-free in optipng 0.6.4" nil nil nil "10" "2015101015:30:20" "[oss-security] Re: CVE Request: Use-after-free in optipng 0.6.4" (number mark "U       cve-assign@m Oct 10   41/1464  " thread-indent "\"[oss-security] Re: CVE Request: Use-after-free in optipng 0.6.4\"\n") "<CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>" ("<CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32514 invoked by uid 550); 10 Oct 2015 15:30:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32493 invoked from network); 10 Oct 2015 15:30:32 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>
Message-Id: <20151010153020.1CEF31BE955@smtpvbsrv1.mitre.org>
Date: Sat, 10 Oct 2015 11:30:20 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Use-after-free in optipng 0.6.4

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We found a use-after-free causing an invalid/double free in optipng 0.6.4.

> Processing: boom.png

> ==24844== Invalid read of size 4

> ==24844==  Address 0x4281a08 is 0 bytes inside a block of size 8 free'd
> ==24844==    at 0x402B3D8: free

> ==24844== Invalid free() / delete / delete[] / realloc()
> ==24844==    at 0x402B3D8: free

> https://bugzilla.redhat.com/show_bug.cgi?id=1264015

Use CVE-2015-7801.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWGS5BAAoJEL54rhJi8gl5atQP/0tVEMehVFLEX2ji/0kJbSWA
oTJjeHq8Qsuh5n/bbsqbdeu+GBJHiWLviwsa0xZe0QFRmNBJC+6T+sJxO1Krk4We
3J1xZrkEh3M9dbw5MgNA06ULf826AelNS41z2+m4MMMmoGFGHyLYNIDk+WXJovtD
Wa4FvdE5Pv1E59TwGrT1WV+oaiX20MjW5ULjsDMo/cgBXi72IAYfkooJunIWRA+5
I6hq7C4n9IV00qTcFdWPfRG4dViEEH/FkZHdIKve5jb1Cb3rb9WtxoJsgizK1Lkw
oRloE41BhYC/PZ14xLVAj+TuIBEZm3s3XgySy5asMCchecFBSAiAo6on4pi+hWku
Jyb6aXu8Yzmwy3Y06VlgFTU9E9uvDsVfTLq0rGxW/6txMjqy2KGDezJ+3MOQ0JuK
Fkq9pMY7qzkTgefbm3CC/K4KdZnjJqIjyWCZLWwnsV+vcXT3SiG34qzVZnAm/KDC
H9Iwb9f/cnP27HEjJMtyrcV6DQa5sLNwItNLJrKKrg7TC901Gvijrw9YPv2s4EKi
qvxDZLuIKsYOzztPZcFIZVGKldW7ROuZiRyl16UH0GZaxOUJdXfK66SUiDhnNvo0
92abDO4M8RC7W9JLUpkCcYl8FxyBU0nT5jpwNCzF+h1NEtU36tIzntQ4IbxHPdao
o/lBuiM5KF7Ahzglj5Jc
=j9wt
-----END PGP SIGNATURE-----
