X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1528" "Tuesday" "12" "January" "2016" "16:09:21" "-0600" "ISC Security Officer" "security-officer@isc.org" "<56957991.40706@isc.org>" "44" "[oss-security] ISC DHCP CVE-2015-8605: UDP payload length not properly checked" nil nil nil "1" "2016011222:09:21" "[oss-security] ISC DHCP CVE-2015-8605: UDP payload length not properly checked" (number mark "U       security-off Jan 12   44/1528  " thread-indent "\"[oss-security] ISC DHCP CVE-2015-8605: UDP payload length not properly checked\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21752 invoked by uid 550); 12 Jan 2016 22:09:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21731 invoked from network); 12 Jan 2016 22:09:44 -0000
From: ISC Security Officer <security-officer@isc.org>
To: oss-security@lists.openwall.com
Cc: ISC Security Officer <security-officer@isc.org>
X-Enigmail-Draft-Status: N2110
Message-ID: <56957991.40706@isc.org>
Date: Tue, 12 Jan 2016 16:09:21 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
 Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="VPsbiauLRgHcvpxe51lM2f7p9O3gaHdbv"
Subject: [oss-security] ISC DHCP CVE-2015-8605: UDP payload length not properly checked

--VPsbiauLRgHcvpxe51lM2f7p9O3gaHdbv
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Please be advised that ISC publicly announced a vulnerability in the
DHCP software.

CVE-2015-8605 is a denial-of-service vector which can potentially be
exploited against ISC DHCP servers, clients, and relays.  All prior 4.x
releases of ISC DHCP are vulnerable.  Additionally, ISC DHCP 3.x may
also be vulnerable, but no testing has been done.

New releases of ISC DHCP, including security fixes for this
vulnerability, are available at: www.isc.org/downloads/

Release notes can be obtained using the following links:

ftp://ftp.isc.org/isc/dhcp/4.3.3-P1/dhcp-4.3.3-P1-RELNOTES
ftp://ftp.isc.org/isc/dhcp/4.1-ESV-R12-P1/dhcp-4.1-ESV-R12-P1-RELNOTES

--=20
Brian Conry
ISC Support
Acting Security Officer



--VPsbiauLRgHcvpxe51lM2f7p9O3gaHdbv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJWlXmZAAoJEL2X3GOe6MR7cFYH/ji6jsnfcPF82fckFV1uP1wS
8OYQ0BrLJQgYWcoeWoAxwKipC7OSHPfSAP9afqWzFU2OEnY4gF5Rny7cXm3nMxBg
Yri4pOee3NyMmG4DyLP5/Jadq3neFbttFqJGv42nsh/gMsgB9OwivYx5seHjXE39
WnaPz4j8Ha8Gje8QBn2Z6XgnSPBvWfyUXv5zLtURFcVFj4crGTMrbbHnJ04IvNSQ
hdq5KwBzJKr/WzZJ93wh/1hfx1wt3dmSN6bURhybHBOLDKtrEXZaDUzKMSxUaXbS
O0YoHde/q/mTkNYCnDhDMEEVIKyZ9261EBj1Ij2K+DDHxKMudLhoe9oYfCvRP+o=
=UH3t
-----END PGP SIGNATURE-----

--VPsbiauLRgHcvpxe51lM2f7p9O3gaHdbv--
