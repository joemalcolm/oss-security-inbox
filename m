X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1704" "Tuesday" "17" "November" "2015" "22:00:57" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<564BA399.8000800@redhat.com>" "49" "[oss-security] CVE request for vulnerability in OpenStack Glance" "^Cc:" nil nil "11" "2015111722:00:57" "[oss-security] CVE request for vulnerability in OpenStack Glance" (number mark "        tdecacqu@red Nov 17   49/1704  " thread-indent "\"[oss-security] CVE request for vulnerability in OpenStack Glance\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16234 invoked by uid 550); 17 Nov 2015 22:00:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16216 invoked from network); 17 Nov 2015 22:00:37 -0000
Message-ID: <564BA399.8000800@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="NcgBb1t7aBcKUOQ08fmc9jcJA581DL1dd"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Cc: cve-assign@mitre.org
Date: Tue, 17 Nov 2015 22:00:57 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for vulnerability in OpenStack Glance
To: oss-security@lists.openwall.com

--NcgBb1t7aBcKUOQ08fmc9jcJA581DL1dd
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

A vulnerability was discovered in OpenStack (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public, although
an advisory was not sent yet.

Title: Use of MD5 in OpenStack Glance image signature
Reporter: Daniel P. Berrange (Red Hat)
Products: Glance
Affects: =3D11.0.0

Description:
Daniel P. Berrange from Red Hat reported a vulnerability in Glance image
signature. Glance computes cryptographic signature using MD5 hash of the
image. By crafting a malicious image that produces a MD5 collision, a
Glance backend operator may subvert the signature verification process,
resulting in a corrupted image. All Glance setups are affected.

References:
https://launchpad.net/bugs/1516031

Thanks in advance,

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--NcgBb1t7aBcKUOQ08fmc9jcJA581DL1dd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWS6OdAAoJECK5oFySXMXYh+YH/jpBZZQjP5kT5/v2wzRb85Rb
mrOjvbgBNGB7piYYEbKYhijxl7eNr75k5I/+I60rwCm6tvVuyMsi950/BjImD5OE
2m23m8/Cswn8L1lWRftMFBRJ9/8qxqDXrUpe1tbmHp9e9PRKj/6MVoLJjiiIiGd3
OP8b1/r6qEn+/qya7qrSBrl/P8TkerRSCSg6c7Fd1Vp2PpOZG/I06lqiK70xPxHz
ShEwYxKkNdvsa2xbdqtZnN24PFNnBePMpiNEwV75PutdQi3zUb4tNpM++Tweu7vd
e4JTTp9/p12FH9eoQ+HhkdA3rC1j11zV+vt/skfdVfXSbjvJzBi6qhCD10ZRnZs=
=kJi/
-----END PGP SIGNATURE-----

--NcgBb1t7aBcKUOQ08fmc9jcJA581DL1dd--
