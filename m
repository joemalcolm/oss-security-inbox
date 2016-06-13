X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3789" "Monday" "13" "June" "2016" "11:36:44" "+0200" "Jens Erat" "jens.erat@uni-konstanz.de" "<b0d573ff-aa3e-0e02-c385-9d75c43ae141@uni-konstanz.de>" "98" "[oss-security] CVE request: several SOGo issues (DOS, XSS, information leakage)" "^Date:" nil nil "6" "2016061309:36:44" "[oss-security] CVE request: several SOGo issues (DOS, XSS, information leakage)" (number mark "        jens.erat@un Jun 13   98/3789  " thread-indent "\"[oss-security] CVE request: several SOGo issues (DOS, XSS, information leakage)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24473 invoked by uid 550); 13 Jun 2016 11:43:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14244 invoked from network); 13 Jun 2016 09:36:56 -0000
Message-ID: <b0d573ff-aa3e-0e02-c385-9d75c43ae141@uni-konstanz.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Mon, 13 Jun 2016 11:36:44 +0200
From: Jens Erat <jens.erat@uni-konstanz.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: several SOGo issues (DOS, XSS, information leakage)
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

In the recent weeks, a whole bunch of DOS attack vectors, information
leakage and XSS issues have been found in the SOGo groupware, found by
several issue reporters. Most of them are fixed by now.

Would you please assign CVEs for them?


Software:    SOGo
Vendor:      Inverse


SOGo #3510:  DOS attack through uploading malicious attachments

Reporter:    Jens Erat <jens.erat@uni-konstanz.de>
Affected versions: ?? to 2.3.8, partly unresolved
Fix:         http://github.com/inverse-inc/sogo/commit/32bb1456e23a32c7f45079c3985bf732dd0d276d
Issue:       https://sogo.nu/bugs/view.php?id=3510


SOGO #3670:  Possible XSS in web interface login

Repoter:     Clay Wright <cwright@tsswcb.texas.gov>
Affected versions: ?? to 2.3.12, unresolved
Issue:       https://sogo.nu/bugs/view.php?id=3670


SOGo #3695:  Private information leakage through ics/XML feeds when restricted to "View the Date & Time" 

Reporter:    Jens Erat <jens.erat@uni-konstanz.de>
Affected versions: ?? to 2.3.11; 3.0 to 3.1.0
Fix SOGo v2: https://github.com/inverse-inc/sogo/commit/717f45f640a2866b76a8984139391fae64339225
Fix SOGo v3: https://github.com/inverse-inc/sogo/commit/875a4aca3218340fd4d3141950c82c2ff45b343d
Issue:       https://sogo.nu/bugs/view.php?id=3695


SOGo #3695:  Meta information can be derived from UID/DTSTAMP attributes though "View the Date & Time" restricted access Backend Calendar

Reporter:    Jens Erat <jens.erat@uni-konstanz.de>
Affected versions: ?? to 2.3.11; 3.0 to 3.1.0
Fix SOGo v2: https://github.com/inverse-inc/sogo/commit/717f45f640a2866b76a8984139391fae64339225
Fix SOGo v3: https://github.com/inverse-inc/sogo/commit/875a4aca3218340fd4d3141950c82c2ff45b343d
Issue:       https://sogo.nu/bugs/view.php?id=3696


SOGo #3718:  Persistent Cross-Site Scripting in calendar

Reporter:   "fgrunow"
Affected versions: 3.0 to 3.1.2
Issue:       https://sogo.nu/bugs/view.php?id=3718
Fix:         http://github.com/inverse-inc/sogo/commit/64ce3c9c22fd9a28caabf11e76216cd53d0245aa
Issue:       https://sogo.nu/bugs/view.php?id=3718



This one from 2014 is probably considered too old to be relevant for a CVE:


SOGo #2598:  Script injection in calendar title

Reporter:    Jens Erat <jens.erat@uni-konstanz.de
Affected versions: ?? to 2.1.1b
Fixes:       - https://github.com/inverse-inc/sogo/commit/1a7fc2a0e90a19dfb1fce292ae5ff53aa513ade9
             - https://github.com/inverse-inc/sogo/commit/80a09407652ec04e8c9fb6cb48e1029e69a15765
             - https://github.com/inverse-inc/sogo/commit/3a5e44e7eb8b390b67a8f8a83030b49606956501
             - https://github.com/inverse-inc/sogo/commit/c94595ea7f0f843c2d7abf25df039b2bbe707625
Issue:       https://sogo.nu/bugs/view.php?id=2598


Thanks and kind regards from Lake Constance, Germany,
Jens

- -- 
Jens Erat
Universität Konstanz
Kommunikations-, Infomations-, Medienzentrum (KIM)
Abteilung Basisdienste
D-78457 Konstanz
Mail: jens.erat@uni-konstanz.de 
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXXn6aAAoJEI545E37G1XpodAP/jEdJYeeLtxNFk6PDFBqMIV/
1e0GqrbbYXRcvPf5Z6rS154sBCF6DzTGs97nOAbyTIVEHTK03rRgTFqweZl+9Yp7
T8U2mMWTIKfuVJkGu+FtFSeK99QpORjg9OT9+yod+gIQOsffXPOAV9xaq/wxKM7z
qZrKfgRGcxA+jZDAZNLT/gGm6t2rWhH1a+OV9i1vG4kXQzCWR6Oy2tT21VSHMHy5
q3N1+SXXx6bOhwiDOFKG7LZt5Z+C634BFWmet73oc2Vej1wpkJfJQEUyt9irG3vc
gvvD9wsPCHJhyyKvWXcAqs4hBhGkw8GWit/Di3tm7DlyMMZ7c1rXVg3h9G3D/Vd5
HZi+biQFNdZkxip6jQ2QJFxWIWIohqZOA0wA0Iuo0LcJm+rri47QZCraZvo9j5OW
qcRf0iC+jyQkqHQqDJZeQ0l8B/d52wNiIvTMqbgFqr+Y3lOPh3iM9dOS7NabJ14s
ZmkgtiAH32IKFSJwiA/bVJE8nkhmqBKPkQAv0kGmu9xPvTiTPwkhRpLBbHNwSOtm
yqD5UhhYuXOx9nlp3BhwpFvcFGi54WK5eNhowY4x8KlmGgdFqNr++1yiZxBRSPvw
FeQK1GO+xSqUNHUCtvpDTrdYBe4G6srsJ3Pqo0VVphrWpylC6BQGc391iw0cYYjD
wyfyT70eBGuVY836PReT
=hag4
-----END PGP SIGNATURE-----
