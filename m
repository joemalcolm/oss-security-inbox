X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2573" "Tuesday" "11" "April" "2017" "10:57:03" "+0300" "Aki Tuomi" "aki.tuomi@dovecot.fi" "<7001b5d5-ff27-8d91-a284-2c37f35e9bf6@dovecot.fi>" "69" "[oss-security] CVE-2017-2669: Dovecot DoS when passdb dict was used for authentication" nil nil nil "4" "2017041107:57:03" "[oss-security] CVE-2017-2669: Dovecot DoS when passdb dict was used for authentication" (number mark "U       aki.tuomi@do Apr 11   69/2573  " thread-indent "\"[oss-security] CVE-2017-2669: Dovecot DoS when passdb dict was used for authentication\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20270 invoked by uid 550); 11 Apr 2017 13:45:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1561 invoked from network); 11 Apr 2017 07:57:18 -0000
To: oss-security@lists.openwall.com
From: Aki Tuomi <aki.tuomi@dovecot.fi>
Organization: Dovecot Oy
Message-ID: <7001b5d5-ff27-8d91-a284-2c37f35e9bf6@dovecot.fi>
Date: Tue, 11 Apr 2017 10:57:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="RPo586RQu5kkVRIcEBnlUc8xsnKXGJUCE"
Subject: [oss-security] CVE-2017-2669: Dovecot DoS when passdb dict was used for
 authentication

--RPo586RQu5kkVRIcEBnlUc8xsnKXGJUCE
Content-Type: multipart/mixed; boundary="Fb6ve06q17ShWenMUji8HWNMM6RK1EQLc";
 protected-headers="v1"
From: Aki Tuomi <aki.tuomi@dovecot.fi>
To: oss-security@lists.openwall.com
Message-ID: <7001b5d5-ff27-8d91-a284-2c37f35e9bf6@dovecot.fi>
Subject: CVE-2017-2669: Dovecot DoS when passdb dict was used for
 authentication

--Fb6ve06q17ShWenMUji8HWNMM6RK1EQLc
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVSS: 6.5 (CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:U/C:N/I:N/A:H)
Vulnerable versions: 2.2.26 - 2.2.28
Fixed version(s): 2.2.29

Broken by a3783f8a3c9cd816b51e77a922f82301512fcf22
Fixed by 000030feb7a30f193197f1aab8a7b04a26b42735

Dovecot supports "dict" passdb and
userdb: https://wiki2.dovecot.org/AuthDatabase/Dict
When these were used for user authentication, the username sent by the
IMAP/POP3 client was sent through var_expand() to perform %variable
expansion. Sending specially crafted %variable fields could result in
excessive memory usage causing the process to crash (and restart), or
excessive CPU usage causing all authentications to hang.

Excessive memory usage could be done with e.g. %09999999999u as the
username. Because by default Dovecot limits the auth process's VSZ and
exits on any memory allocation failure, the auth process typically dies
afterwards and is immediately restarted. This may result in some user
authentications getting temporary internal failures.

Excessive CPU usage could be done with %{pkcs5;rounds=3D100000000:user}
variable introduced in v2.2.27.

Please use this
https://github.com/dovecot/core/commit/000030feb7a30f193197f1aab8a7b04a26b4=
2735.patch
to fix this issue, it should be applicable to older versions too.
Please let us know if you need assistance in patching.

---
Aki Tuomi
Dovecot oy



--Fb6ve06q17ShWenMUji8HWNMM6RK1EQLc--

--RPo586RQu5kkVRIcEBnlUc8xsnKXGJUCE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJY7IxSAAoJED5IfXI2V/Dp28YH/RdIXh/hZyiGutPWVYJJ/ZhG
FuceBb9cvtpk+eogYz+/ot3Gqg/kVk+okumakK6equc9xkURCudGxRL52EP6AoK4
cu4LO8HA4rnFlK6yI796fPpZeNd6dSZPLJrOLq2tZ6W9qgFslKSYxUeVDDIHxQZC
MS7G4bM6X87GAH9CN2994Y2lVeARvmzt9Whd1AVsjtD1QbTFiyabJM+gO3D+q7Ms
623bQNHkz5rr4cCx6VBc3ekwjjErKOh/fddyzJZDBmAwMKffXBVPUkvfl7DcdVuK
aQO3F4bNT9x/2k6DGZ6Ha/ziNakD73yyJINY22dULjrkHxBRpla2gVadDCY1sSc=
=7L8I
-----END PGP SIGNATURE-----

--RPo586RQu5kkVRIcEBnlUc8xsnKXGJUCE--
