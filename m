X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1803" "Friday" "27" "March" "2015" "14:39:27" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150327143927.60a73799@pc1.fritz.box>" "53" "[oss-security] CVE request: Erlang POODLE TLS vulnerability" nil nil nil "3" "2015032713:39:27" "[oss-security] CVE request: Erlang POODLE TLS vulnerability" (number mark "        hanno@hboeck Mar 27   53/1803  " thread-indent "\"[oss-security] CVE request: Erlang POODLE TLS vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5311 invoked by uid 550); 27 Mar 2015 13:39:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5286 invoked from network); 27 Mar 2015 13:39:30 -0000
Message-ID: <20150327143927.60a73799@pc1.fritz.box>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-16407-1427463558-0001-2"
Cc: cve-assign@mitre.org
Date: Fri, 27 Mar 2015 14:39:27 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Erlang POODLE TLS vulnerability
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-16407-1427463558-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

=46rom the release notes of Erlang 18.0-rc1:
http://www.erlang.org/news/85
"ssl: Remove default support for SSL-3.0 and added padding check for
TLS-1.0 due to the Poodle vulnerability."

This indicates that Erlang was vulnerable to the TLS-variant of the
poodle vulnerability due to missing padding checks (see [1]).

While disabling old protocols is maybe not something covered by CVEs,
this clearly is an implementation error and thus should be considered a
vuln.


[1] https://www.imperialviolet.org/2014/12/08/poodleagain.html

cu,
--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-16407-1427463558-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVFV2PAAoJEKWIAHK7tR5CTZUP/0BTndZpaw4/wG4eaiQ3+724
5j8ruQ2bmhKnvlG3nXL8rUBKKqKAltGGw8XkvyLJ9BWF4QDlvf8IRLTS/nNh1e51
0Qd/cGqI6hy90PNtq4cPVJIZ0sW/vsPwlAUmxcVrOgIlV1V6SEnu1n9mNnmwqEdv
yHuh/PWx9f5LbLJfs+EHQD8UzGThQCz33a0bQeaHfpSOxc6lJwWqqxUdp3hjPg08
K4fmRQ3544gT7miWvtNObWIOMIUkUzytlkjuUJVHeDoi7CbJ4VqZJlIFrnUjKV7M
jLdfP5xTpSiTCVA4Xxd49h+47rniC2lbrPgCRHl8EJcdDmgmMbpXoWPxUOpq1lYu
+MbZaO/98eN9De/Sj/dW/x95xzTM8796dKRFnXPBFkWoS1sC5n/BNLhJK2NVL3xq
1zCfuJp7RamsPJpfM276/KAKsx2kX2JbG+truY+Ga3ifz9jMegJAikuTS5UO1LfU
pBLUc9mRIyJTMgQ8+Ii0mYTFjPvdbBUOGbyHb/yucpoXdGWMFI8DqtRXudpUrnG5
NP7fVnWVghEmJQcNqreUmGdFhEGBj655otxhitfoLldPQfI30cdcTnv+TAMuibJd
ZndE+O4wjOi7mQS7cOP1GT3q6sjNrbIDoRv1ieMo0wTT2E946oyX41KJtMoSDIO0
2O+aS9kGCu0c0W61GVI1
=eQfh
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-16407-1427463558-0001-2--
