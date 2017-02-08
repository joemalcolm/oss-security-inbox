X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2161" "Wednesday" "8" "February" "2017" "17:13:08" "-0600" "ISC Security Officer" "security-officer@isc.org" "<dbd58642-9905-4cb8-9540-0c4817265215@isc.org>" "62" "[oss-security] BIND9 CVE-2017-3135: Combination of DNS64 and RPZ Can Lead to Crash" nil nil nil "2" "2017020823:13:08" "[oss-security] BIND9 CVE-2017-3135: Combination of DNS64 and RPZ Can Lead to Crash" (number mark "U       security-off Feb  8   62/2161  " thread-indent "\"[oss-security] BIND9 CVE-2017-3135: Combination of DNS64 and RPZ Can Lead to Crash\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24312 invoked by uid 550); 8 Feb 2017 23:15:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23654 invoked from network); 8 Feb 2017 23:13:31 -0000
From: ISC Security Officer <security-officer@isc.org>
To: oss-security@lists.openwall.com
Cc: ISC Security Officer <security-officer@isc.org>
Message-ID: <dbd58642-9905-4cb8-9540-0c4817265215@isc.org>
Date: Wed, 8 Feb 2017 17:13:08 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
 Gecko/20100101 Thunderbird/45.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="qQ7i9g9j2Kk7MrpcrkFJjHKqhnB4WFxEE"
Subject: [oss-security] BIND9 CVE-2017-3135: Combination of DNS64 and RPZ Can Lead to Crash

--qQ7i9g9j2Kk7MrpcrkFJjHKqhnB4WFxEE
Content-Type: multipart/mixed; boundary="Gbs5CB9ve4I0fKcag8mgLuNCTJm5Rw2C2";
 protected-headers="v1"
From: ISC Security Officer <security-officer@isc.org>
Reply-To: security-officer@isc.org
To: oss-security@lists.openwall.com
Cc: ISC Security Officer <security-officer@isc.org>
Message-ID: <dbd58642-9905-4cb8-9540-0c4817265215@isc.org>
Subject: BIND9 CVE-2017-3135: Combination of DNS64 and RPZ Can Lead to Crash

--Gbs5CB9ve4I0fKcag8mgLuNCTJm5Rw2C2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Today ISC announced CVE-2017-3135, a denial-of-service vulnerability
that can affect resolvers using both DNS64 and RPZ to rewrite responses
for the same view.

This affects all BIND 9.9 releases since 9.9.3, all BIND 9.10 releases,
and all BIND 9.11 releases, including the 9.9.10b1, 9.10.5b1, and
9.11.1b1 releases.

Our full CVE text can be found at https://kb.isc.org/article/AA-01453

New releases of BIND, including security fixes for this vulnerability,
are available at: www.isc.org/downloads/

Release notes can be obtained using the following links:

ftp://ftp.isc.org/isc/bind9/9.9.9-P6/
ftp://ftp.isc.org/isc/bind9/9.10.4-P6/
ftp://ftp.isc.org/isc/bind9/9.11.0-P3/
ftp://ftp.isc.org/isc/bind9/9.9.10rc1/
ftp://ftp.isc.org/isc/bind9/9.10.5rc1/
ftp://ftp.isc.org/isc/bind9/9.11.1rc1/

--=20
Brian Conry
ISC Support
Acting Security Officer



--Gbs5CB9ve4I0fKcag8mgLuNCTJm5Rw2C2--

--qQ7i9g9j2Kk7MrpcrkFJjHKqhnB4WFxEE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJYm6YMAAoJEL2X3GOe6MR74qMIAK4J2w8VvsyCLRE23F/3pafd
QMZHKky3myq1HjafU6ueB78IKweGhXP38QPSCUxlCwJ5jyjli1n0LFfX3118Z34p
ZfnBGRblusZLuWDWhPyj7eMr7JG/5iedieusH0bkS1AQFxgWW1t38+hlkd/HlgwU
2Qp7eIE01fjsy8Zlm+WpYCQC0wo8MtWh1SlG3OHAU+F2fRrBDuks+93QXZSRefQC
/vKD8akCEZesZ0GHLvPMXfvYpjGVXxmPWm+JxNl/fHAxhTfQhUNMS4mAmNcJrnPv
G2CbR/3zNH+c6ytRN8QEvFy3bVAhcHfK/aUkYYo4AtE4q5O4Vn8XYM1GnVL6Sak=
=0U0x
-----END PGP SIGNATURE-----

--qQ7i9g9j2Kk7MrpcrkFJjHKqhnB4WFxEE--
