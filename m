X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2025" "Tuesday" "27" "September" "2016" "12:38:33" "-0500" "ISC Security Officer" "security-officer@isc.org" "<a2f2721f-41e3-ee84-589f-e74bda03810a@isc.org>" "59" "[oss-security] BIND9 CVE-2016-2776: Assertion Failure in buffer.c While Building Responses to a Specifically Constructed Request" "^Cc:" nil nil "9" "2016092717:38:33" "[oss-security] BIND9 CVE-2016-2776: Assertion Failure in buffer.c While Building Responses to a Specifically Constructed Request" (number mark "U       security-off Sep 27   59/2025  " thread-indent "\"[oss-security] BIND9 CVE-2016-2776: Assertion Failure in buffer.c While Building Responses to a Specifically Constructed Request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19860 invoked by uid 550); 27 Sep 2016 17:50:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14065 invoked from network); 27 Sep 2016 17:38:55 -0000
Message-ID: <a2f2721f-41e3-ee84-589f-e74bda03810a@isc.org>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:45.0)
 Gecko/20100101 Thunderbird/45.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="HqRtAqXxAIUjjQcTxawsCjBF1157q8WCg"
Cc: ISC Security Officer <security-officer@isc.org>
Date: Tue, 27 Sep 2016 12:38:33 -0500
From: ISC Security Officer <security-officer@isc.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] BIND9 CVE-2016-2776: Assertion Failure in buffer.c While Building
 Responses to a Specifically Constructed Request
To: oss-security@lists.openwall.com

--HqRtAqXxAIUjjQcTxawsCjBF1157q8WCg
Content-Type: multipart/mixed; boundary="1dif1wXt88Kx0ebi6tslOuQP2potpbr2N";
 protected-headers="v1"
From: ISC Security Officer <security-officer@isc.org>
Reply-To: security-officer@isc.org
To: oss-security@lists.openwall.com
Cc: ISC Security Officer <security-officer@isc.org>
Message-ID: <a2f2721f-41e3-ee84-589f-e74bda03810a@isc.org>
Subject: BIND9 CVE-2016-2776: Assertion Failure in buffer.c While Building
 Responses to a Specifically Constructed Request

--1dif1wXt88Kx0ebi6tslOuQP2potpbr2N
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Please be advised that ISC publicly announced a vulnerability in the
BIND 9 software.

CVE-2016-2776 is a denial-of-service vector which can potentially be
exploited against BIND 9 servers.  All versions prior to the current
releases are vulnerable.

Our full CVE text can be found at https://kb.isc.org/article/AA-01419/0

New releases of BIND, including security fixes for this vulnerability,
are available at: www.isc.org/downloads/

Release notes can be obtained using the following links:

ftp://ftp.isc.org/isc/bind9/9.9.9-P3/
ftp://ftp.isc.org/isc/bind9/9.10.4-P3/
ftp://ftp.isc.org/isc/bind9/9.11.0rc3/

--=20
Brian Conry
ISC Support
Acting Security Officer



--1dif1wXt88Kx0ebi6tslOuQP2potpbr2N--

--HqRtAqXxAIUjjQcTxawsCjBF1157q8WCg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJX6q6fAAoJEL2X3GOe6MR78L8H/2vLFvQ2Gdi/RUQKnUErp9+2
/5bZL1LuqS0F/t1SIW3F61oqRgbMzlFsJiyqodOD9oH2alDee4m8/FDH6pcDtgFN
cExWWjLzpn++P7ksCOJLuNzE3lCzaTbSpYAMZmzV5QJOaauVvMCTzDOkUB7oY0hP
XNdPVEjbmkC/KdzjcRHci+y0D2ImRjVQkC66R3c591hkJtqq5ty4HU33qn3L3PgF
57nHEc2C3mpb/CnnvYdsLJT35qrr1ZVRIdfp+vYFZbVxsECpBIzliiI8VRUOV8TJ
aPBKfsvvs44lQwLh3t1X/PV0L5HJ4wQ7xFJ8oongdbNQbDfmuUuVvhTilMDCPlw=
=osiN
-----END PGP SIGNATURE-----

--HqRtAqXxAIUjjQcTxawsCjBF1157q8WCg--
