X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2117" "Friday" "15" "January" "2016" "10:26:31" "+0000" "Mike Gabriel" "mike.gabriel@das-netzwerkteam.de" "<20160115102631.Horde.lTAFZQ18vwx6AyvDNnMXTR9@mail.das-netzwerkteam.de>" "64" "[oss-security] Security issues in GOsa" "^Date:" nil nil "1" "2016011510:26:31" "[oss-security] Security issues in GOsa" (number mark "        mike.gabriel Jan 15   64/2117  " thread-indent "\"[oss-security] Security issues in GOsa\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21891 invoked by uid 550); 15 Jan 2016 10:27:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21777 invoked from network); 15 Jan 2016 10:26:43 -0000
X-Virus-Scanned: Debian amavisd-new at grimnir.das-netzwerkteam.de
Message-ID: <20160115102631.Horde.lTAFZQ18vwx6AyvDNnMXTR9@mail.das-netzwerkteam.de>
User-Agent: Horde Application Framework 5
Accept-Language: de,en
Organization: DAS-NETZWERKTEAM
X-Originating-IP: 178.62.101.154
X-Remote-Browser: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Firefox/38.0 Iceweasel/38.5.0
Content-Type: multipart/signed; boundary="=_g1XF4gyvthG4vXWujvPxoUf";
 protocol="application/pgp-signature"; micalg=pgp-sha256
MIME-Version: 1.0
Date: Fri, 15 Jan 2016 10:26:31 +0000
From: Mike Gabriel <mike.gabriel@das-netzwerkteam.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Security issues in GOsa
To: oss-security@lists.openwall.com

--=_g1XF4gyvthG4vXWujvPxoUf
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

GOsa is a framework written in PHP for LDAP-based management of=20=20
intranet infrastructures.

As part of upstream (I joined the team recently) I would like to make=20=20
you aware of (at least) two security issues +/- recently discovered:

(1) Possibility of code injection when setting passwords for Samba.=20=20
Solved upstream:
https://github.com/gosa-project/gosa-core/commit/a67a047cba2cdae8bccb0f0e2b=
c6d3eb45cfcbc8

(2) XSS vulnerability during session log on. Solved upstream:
https://github.com/gosa-project/gosa-core/commit/e35b990464a2c2cf64d6833a21=
7ed944876e7732

Please assign individual CVE Ids for both issues, if appropriate.

Thanks,
Mike
--=20

DAS-NETZWERKTEAM
mike gabriel, herweg 7, 24357 fleckeby
fon: +49 (1520) 1976 148

GnuPG Key ID 0x25771B31
mail: mike.gabriel@das-netzwerkteam.de, http://das-netzwerkteam.de

freeBusy:
https://mail.das-netzwerkteam.de/mailxchange/kronolith/fb.php?u=3Dm.gabriel=
%40das-netzwerkteam.de

--=_g1XF4gyvthG4vXWujvPxoUf
Content-Type: application/pgp-signature
Content-Description: Digitale PGP-Signatur
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWmMlXAAoJEJr0azAldxsxp5MP/164mnvxQis800WF/BRD7qdL
Ak0AVDhI5sE9WtnRn58qDb2L9+bs1thDvcqrrZf75Dr6RpRF/N5p4XOSok3vwM56
hcy5XxFJFyI4Mt8xLCeIqg00MLt6oJanUDimsQ9oKfyNE8082znSJp9BCRqO+dA6
numlcyUcTQs5BcdAl/qkhEfTZl1RTufC172BxSPhNVyDQJGXpueKB0s5tfUshjnR
egDaF7i48IYjp2/tCXEhCIehMqJUFES9jLsX2qSanqPPUvSpYkU91t7Ua0L0/JyF
I+DSTF02MZkmNy1yfT1Uq0UY458XU2/7sJDvvPphYwqZU0QK7oLt2PwZ3jVphF7p
bxuEJ82MLCnNCBiOBh71gMpTS0SZwrbsDzsmsOqoU9/AL72na+FmfejMTg0X3g4w
yhQbNfBXYXRjIKXfix/Rp+sYxq22QzGCtl9bsqI6Jamk5bdiAh+Qg7Q3gbc1Sp6g
08H+Q+yqqhyOkNOsL2Aq6W9OiTM5V0XNAVCNg8VTP7bd5+alKUUtwRpg4fqYLTOH
iXiCJx9Fo17EqydasbSbYWBSbeeL7SDFylXVnpF4y1Lp8d3EfR3m3Z0gGu9cPcNY
aCVIOabzpbe10V07ZpuwNg2ZLUCkE8VB7qf6yLqRuh4pExNCDPtH3BkPODQd5eXw
On7oI3QDFEDqwBBs5Xzf
=VaWv
-----END PGP SIGNATURE-----

--=_g1XF4gyvthG4vXWujvPxoUf--

