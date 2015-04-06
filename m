X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2033" "Monday" "6" "April" "2015" "18:57:56" "+0200" "Gerhard Rieger" "gerhard@dest-unreach.org" "<5522BB14.2020608@dest-unreach.org>" "69" "[oss-security] Socat security advisory 6 - Possible DoS with fork (update: CVE-Id: CVE-2015-1379; fix for version 2)" nil nil nil "4" "2015040616:57:56" "[oss-security] Socat security advisory 6 - Possible DoS with fork (update: CVE-Id: CVE-2015-1379; fix for version 2)" (number mark "        gerhard@dest Apr  6   69/2033  " thread-indent "\"[oss-security] Socat security advisory 6 - Possible DoS with fork (update: CVE-Id: CVE-2015-1379; fix for version 2)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3364 invoked by uid 550); 6 Apr 2015 16:58:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3294 invoked from network); 6 Apr 2015 16:58:13 -0000
X-Virus-Scanned: Debian amavisd-new at clausfischer.com
Message-ID: <5522BB14.2020608@dest-unreach.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="5RgrIHJUhiesQ2BUwoPUSu43MGAK98JUC"
Date: Mon, 06 Apr 2015 18:57:56 +0200
From: Gerhard Rieger <gerhard@dest-unreach.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Socat security advisory 6 - Possible DoS with fork (update: CVE-Id:
 CVE-2015-1379; fix for version 2)
To: oss-security@lists.openwall.com

--5RgrIHJUhiesQ2BUwoPUSu43MGAK98JUC
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Socat security advisory 6 - Possible DoS with fork

Overview
  socats signal handler implementations are not async-signal-safe and
  can cause crash or freeze of socat processes

Vulnerability Id: CVE-2015-1379.

Severity: Low

Details
  Socats signal handler implementations are not asnyc-signal-safe. When
  a signal is triggered while the process is within a non
  async-signal-safe function the signal handler will call a non
  sync-signal-safe function too. POSIX specifies the behaviour in this
  situation as undefined. Dependend on involved functions, libraries,
  and operating system, the process can continue, freeze, or crash.
  Mostly this issue occurs when socat is in listening mode with fork
  option and a couple of child processes terminate at the same time.

Testcase
  none

Affected versions
  1.0.0.0 - 1.7.2.4
  2.0.0-b1 - 2.0.0-b7

Not affected or corrected versions
  1.7.3.0 and later
  2.0.0-b8 and later

Workaround
  none

Download
  The updated sources can be downloaded from:

    http://www.dest-unreach.org/socat/download/socat-1.7.3.0.tar.gz
    http://www.dest-unreach.org/socat/download/socat-2.0.0-b8.tar.gz

Credits
   Credits to Peter Lobsinger





--5RgrIHJUhiesQ2BUwoPUSu43MGAK98JUC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJVIrsUAAoJEBszgb37UeYgAEwH/iQHT+Zlu1lflWFVSkl0hq5f
hKCAY4AXFhJXMaHM8sM0/bTX2uvODL7sf8W8gw0Ub3INxlw9dlm6FEtdY7ioBvD5
nZJtUrz5QVOsnvSyVYrBCRgya+BIIBPYJZ3pyMtmvVFZSrTMp4seqO1sVnmT7QNV
D1oN4e/ZXH1ElGK4fEdC1npLlP52FyYyuT7K/c/XhG6BETrfavhrGMRTiKAcZxr5
3FfGRT7aV6PP3i+dO/mfMZClGQxkDoG35iRTGKmPKWCeSfMQR7zHfZYJjETR7Kxp
TSe+hCZmMM7ngunNG8qBlsGJcokG+AxG4SFiXaGQnWfbZxV8oYfjBTR9EgIwuhw=
=OukO
-----END PGP SIGNATURE-----

--5RgrIHJUhiesQ2BUwoPUSu43MGAK98JUC--
