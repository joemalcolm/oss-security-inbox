X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1437" "Monday" "22" "June" "2015" "15:37:23" "+0100" "Tim Brown" "tmb@65535.com" "<2276505.0zKI0JqSyt@sarpedon>" "42" "[oss-security] Validating OCSP response signatures" nil nil nil "6" "2015062214:37:23" "[oss-security] Validating OCSP response signatures" (number mark "        tmb@65535.co Jun 22   42/1437  " thread-indent "\"[oss-security] Validating OCSP response signatures\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3351 invoked by uid 550); 22 Jun 2015 14:38:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3298 invoked from network); 22 Jun 2015 14:37:54 -0000
Message-ID: <2276505.0zKI0JqSyt@sarpedon>
User-Agent: KMail/4.14.2 (Linux/4.0.0-1-amd64; KDE/4.14.2; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2998153.9WBui48zD9"; micalg="pgp-sha256"; protocol="application/pgp-signature"
Date: Mon, 22 Jun 2015 15:37:23 +0100
From: Tim Brown <tmb@65535.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Validating OCSP response signatures
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--nextPart2998153.9WBui48zD9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

Hi,

Do we consider failing (by policy) to validate the signature of OCSP respon=
ses=20
to be a vulnerability? I did nudge SMC on Twitter but he was reticent to gi=
ve=20
a definitive view? Affects open and closed source code bases.

Tim
--=20
Tim Brown
<mailto:tmb@65535.com>=

--nextPart2998153.9WBui48zD9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJViB2rAAoJEPJhpTVyySo7XI4QAKMZ+UQQm3FALc/0CDB9BNKt
iyby0hTmd5/z+hIcoLVrdexCQbx64syvV+TfUhvdB5ucQRsc8W7DANirF80sGabr
3KYnDmnoQ8TrEZBAsgXslLlG1jo2Lf77ndjAW+VtDXbmjgBUWhR1KWnkyCNTAQNH
b9LQE4uaC9uYsHtDD3TcABj9OW+yhehjmKQwR2CwXyGiTc+0ROhqxy8NyBy9Aqc9
ZYp+FggZV7mNk5dafc6tdwzUmi1XlH8j9Oloe+aZMrv2LD5Lk+KQ056qCQ4lkebe
Hzz/FwmL38JpWYHl8F4PSWs1lQoCTyjf28kCdXkkNny/7U2d5hk07WtRGLtFTWGW
W3G4U6dQ9685gy2w84HBfk6IJ+Ze090gEGi4iIukT22BE6psMB9Y8F+Msye6QIc+
CXscIajKMXGED6ywTQ+C1magQW3ZFVRtkQXN3qK0tPzF7kr/1oAu1rHHZ+V4WDxZ
kKImVlBpF9ctDKTtv43Ea69/4u+WDKFOYLubL0L8gK+g2GOSl2qiMMnrqtcN2dEM
SWvbApLDXSDPK4y2/MgWF6fg8UC8TNmC8FumFA9sHIg7vJKoInTuu5YN2d1gL9nG
lOMNHuKX/uavEdrtSapzlz1sB/3beFvOqAI9MbubHquzD8+YNVb76sTI3nemeYl8
+xAG+nkaiS1qcdDgAR7H
=Pz2K
-----END PGP SIGNATURE-----

--nextPart2998153.9WBui48zD9--

