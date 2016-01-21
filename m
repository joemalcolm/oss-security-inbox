X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1981" "Thursday" "21" "January" "2016" "15:46:50" "+0100" "Fabian Keil" "fk@fabiankeil.de" "<20160121154650.41c0e854@fabiankeil.de>" "51" "[oss-security] CVE request for Privoxy 3.0.24" nil nil nil "1" "2016012114:46:50" "[oss-security] CVE request for Privoxy 3.0.24" (number mark "U       fk@fabiankei Jan 21   51/1981  " thread-indent "\"[oss-security] CVE request for Privoxy 3.0.24\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18105 invoked by uid 550); 21 Jan 2016 14:48:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18087 invoked from network); 21 Jan 2016 14:48:06 -0000
Date: Thu, 21 Jan 2016 15:46:50 +0100
From: Fabian Keil <fk@fabiankeil.de>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160121154650.41c0e854@fabiankeil.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/auq2CFBD7Shm_HJiZkBaAC="; protocol="application/pgp-signature"
X-Df-Sender: MTgwOTA5
Subject: [oss-security] CVE request for Privoxy 3.0.24

--Sig_/auq2CFBD7Shm_HJiZkBaAC=
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Privoxy is a non-caching web proxy with advanced filtering capabilities
for enhancing privacy, modifying web page data and HTTP headers, controlling
access, and removing ads and other obnoxious Internet junk. For details see:
http://www.privoxy.org/ or http://jvauzb4sb3bwlsnc.onion/

A couple of invalid reads were fixed in Privoxy 3.0.24 whose
release is scheduled for this weekend.

Two of them are security issues (remote DoS when built with ASAN),
please assign CVEs:

- Prevent invalid reads in case of corrupt chunk-encoded content.
  http://ijbswa.cvs.sourceforge.net/viewvc/ijbswa/current/filters.c?r1=3D1.=
196&r2=3D1.197

- Remove empty Host headers in client requests.
  Previously they would result in invalid reads.
  http://ijbswa.cvs.sourceforge.net/viewvc/ijbswa/current/parsers.c?r1=3D1.=
302&r2=3D1.303

The issues were found with afl-fuzz and AddressSanitizer.

Fabian

--Sig_/auq2CFBD7Shm_HJiZkBaAC=
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWoO9aAAoJEGkYIpGLojcct2wP/20jOM3foumMQ97OhAec7hIY
KaTF5kaXSlP1t97cOAUFq2zHHDNI+FacZomBKKhJkV5CSYs35kl7bmjrPw1VnENH
iLzhisuHr1PilF5Nz+h+0JI7vH7zB0RmGAuXhSi6g/gLJyANv9RDFwQ1d8ulTf5v
nsNJD9OLK8gTgwtrtKGkHHm8bobbvQSMV4CBmmkPWOpGTLRfZDZibIBnIOny0JFB
L7rOaTExh1F+Ugacvt/xfDMVj5MkEu36aQmcMSnmUudo7e8zk46uuTxA0RQaxzNR
6VMHp2/ciwprgJS+rZm4UIvvZBEq3cw5yoXEJSyWw7j0pBp8bq1O0EByeAZhRCLw
H2D8o7uVABvMnKag2pyh0MkYRWUUxFoiSJ6rrmUBqTM83Ssd9ytD8nw/CjT7YzU2
B5CNCjb/YTnhSw7kBALHiHvyBo0DGG8QfsVh3kRtJx/7/hfwzD6wZLUpG2DrGPfi
Lax/yGv191gtrxhT8YC34SD8Dk5fXhroQaVeqjegoDo8zV0/G+FdLJjuN85TtVB/
BFpGKfw3udxVAqZ0otJhe62aOTLHBz/yYziPclvJEI1SGYRhZEXfqVLmaYQSEuyD
+LlstJJKuTwBFZwuIURXCHonEoCcZbV7D2CJa0sIwdDS7cwuece3wALjIe8NmPTC
4gVGtWSmkzw93yOmzSMF
=H+z4
-----END PGP SIGNATURE-----

--Sig_/auq2CFBD7Shm_HJiZkBaAC=--
