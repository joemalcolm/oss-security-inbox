X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1518" "Sunday" "29" "March" "2015" "11:52:06" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150329115206.34058db2@pc1.fritz.box>" "46" "[oss-security] CVE request: XSS in roundcube before 1.1.0" nil nil nil "3" "2015032909:52:06" "[oss-security] CVE request: XSS in roundcube before 1.1.0" (number mark "        hanno@hboeck Mar 29   46/1518  " thread-indent "\"[oss-security] CVE request: XSS in roundcube before 1.1.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30526 invoked by uid 550); 29 Mar 2015 09:52:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30507 invoked from network); 29 Mar 2015 09:52:07 -0000
Message-ID: <20150329115206.34058db2@pc1.fritz.box>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-7329-1427622715-0001-2"
Cc: cve-assign@mitre.org
Date: Sun, 29 Mar 2015 11:52:06 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: XSS in roundcube before 1.1.0
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-7329-1427622715-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

http://trac.roundcube.net/wiki/Changelog
Fix XSS issue in style attribute handling (#1490227)

Upstream Bug:
http://trac.roundcube.net/ticket/1490227

Commit:
http://trac.roundcube.net/changeset/786aa0725/github

It was not mentioned in the release notes...

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-7329-1427622715-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVF8tGAAoJEKWIAHK7tR5CI6cQAKRSRXBfaH3uDXLwIsU127Vb
2mU8fQJoEQQSfqpp6kKDJe3U/rWU4caRoVkpFP5znZntOb24116ZsM56XRmvJjK/
UDZbHk2Uh+9vc4OnY7BTyYQm7oDD8tGSTL8ICM7NUFrKCrIo20oa67iuV97kykRm
8Jf6ThJPjfbSlROEVVDvfgO7fG4Dl8BxXgf5u9pMgHSmZcUd/oJcDsXEVg8I/xkn
QLjCJ2U4VXKwBrxfcnBg7Yxrp4jQGjoNWULrnoA7fkqIGd4vdbT2X7Ny0/O4imzH
c7ysOqHwURTxw7fPPl5vYm9Z5SjaCbr/S5eY1AgmAcW4ECv0ZgzCPbLoS89DYad3
RIoZl5GdtooYo1LZtwtGVk1C+jXXJE7xQUHUrUovzrx2EQ50IYSRnBnB85dSEJCW
6efS9Dm0jacUXxQsfucS5X+Ar16uEuedvxlU13y8KkqEK4yvjmLFHV+oskr4cICp
3hZFRHM0iP9S+dq7jrCHjQGiX1NnflWwwKVuhH8wEsEtSNzJ1OJDz3snSM5+DVlj
JnxtbwUBlRjEex77D1dvQde/5EUL3CT7zkv7FYWUiqOzFH34mxbh8L+4V/igVXFt
uJbYiMYdM1pJ0qC0VjJWqEmbnEIDIF8pQ92CKXVR8I3Mpzt5Fk5QC4jup74OeDnc
pDzwLaYQix4KKx3q8f+C
=05zt
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-7329-1427622715-0001-2--
