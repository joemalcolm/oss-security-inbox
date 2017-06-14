X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3165" "Wednesday" "14" "June" "2017" "18:31:00" "-0500" "ISC Security Officer" "security-officer@isc.org" "<d4e8f699-30e1-59f7-47f2-d78b42066728@isc.org>" "85" "[oss-security] BIND9 CVE-2017-3140 & CVE-2017-3141" "^Cc:" nil nil "6" "2017061423:31:00" "[oss-security] BIND9 CVE-2017-3140 & CVE-2017-3141" (number mark "        security-off Jun 14   85/3165  " thread-indent "\"[oss-security] BIND9 CVE-2017-3140 & CVE-2017-3141\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3926 invoked by uid 550); 14 Jun 2017 23:53:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3243 invoked from network); 14 Jun 2017 23:31:24 -0000
Message-ID: <d4e8f699-30e1-59f7-47f2-d78b42066728@isc.org>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.1.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="vjv3lCaXK3tkrwKDxRjEJU68sfwwSScKJ"
Cc: ISC Security Officer <security-officer@isc.org>
Date: Wed, 14 Jun 2017 18:31:00 -0500
From: ISC Security Officer <security-officer@isc.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] BIND9 CVE-2017-3140 & CVE-2017-3141
To: oss-security@lists.openwall.com

--vjv3lCaXK3tkrwKDxRjEJU68sfwwSScKJ
Content-Type: multipart/mixed; boundary="eh6mfKt1Mq3mIC5NjSKG8xwfcUn2IaMjJ";
 protected-headers="v1"
From: ISC Security Officer <security-officer@isc.org>
Reply-To: security-officer@isc.org
To: oss-security@lists.openwall.com
Cc: ISC Security Officer <security-officer@isc.org>
Message-ID: <d4e8f699-30e1-59f7-47f2-d78b42066728@isc.org>
Subject: BIND9 CVE-2017-3140 & CVE-2017-3141

--eh6mfKt1Mq3mIC5NjSKG8xwfcUn2IaMjJ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Today ISC announced CVE-2017-3140, CVE-2017-3141, and an operational
notification regarding LMDB in BIND 9.11


CVE-2017-3140 is a denial-of-service vulnerability affecting 9.9.10,
9.10.5, 9.11.0->9.11.1, 9.9.10-S1, and 9.10.5-S1 when configured with
Response Policy Zones (RPZ) utilizing NSIP or NSDNAME rules.

We are aware that some subscribers to this list maintain BIND packages
which have diverged from the official ISC code branches.  While we
cannot always offer specific guidance, in the case of CVE-2017-3140
maintainers who have selectively backported BIND changes are advised to
check whether they have included change #4377, as that change has been
determined to be a cause of CVE-2017-3140.


CVE-2017-3141 is a Windows privilege escalation vector affecting
9.2.6-P2+, 9.3.2-P1+, 9.4.x, 9.5.x, 9.6.x, 9.7.x, 9.8.x, 9.9.0->9.9.10,
9.10.0->9.10.5, 9.11.0->9.11.1, 9.9.3-S1->9.9.10-S1, and 9.10.5-S1.  The
BIND Windows installer failed to properly quote the service paths,
possibly allowing a local user to achieve privilege escalation, if
allowed by file system permissions.


BIND 9.11.0 and 9.11.1 carries a number of integration problems with
LMDB (liblmdb) that will be addressed in BIND 9.11.2, planned for
release in July/August 2017.


Our full CVE text can be found at:

  https://kb.isc.org/article/AA-01495/74/CVE-2017-3140
  https://kb.isc.org/article/AA-01496/74/CVE-2017-3141

The full operational notification can be found at:

  https://kb.isc.org/article/AA-01497/169/LMDB-integration-problems.html

New releases of BIND, including security fixes for these
vulnerabilities, are available at: http://www.isc.org/downloads/

Release notes can be obtained using the following links:

  ftp://ftp.isc.org/isc/bind9/9.9.10-P1/
  ftp://ftp.isc.org/isc/bind9/9.10.5-P1/
  ftp://ftp.isc.org/isc/bind9/9.11.1-P1/

Brian Conry
Security Officer


--eh6mfKt1Mq3mIC5NjSKG8xwfcUn2IaMjJ--

--vjv3lCaXK3tkrwKDxRjEJU68sfwwSScKJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJZQcc8AAoJEL2X3GOe6MR7en8IALtif6TWhUuaMqBLICfKQCqF
1RpQigWfVVwBl9JGJ83XYTaGB5YcsNoltqT6EVeSwzG7teijmnlL3nG86+cryTVx
lJAAvIHbYfs5Cg1Hx9jWfGOtZyRNBa42QdIym/FSvrjKA4RtId47APgkYUrfDwSL
QJH3ExEN3Vo3iF8dCu+Vef4GO8DWeKoiQ60OZ0Ob6CXxRMlE2YKNKAtj0/AZ08ZY
kWEZCwo6AF7oPYxOkHwCYau1PqoLK33+0E0F0U87wWK/5tZlozM5Kqa3vaGAovUW
9Dp4++YBTzDC6EjEH+RcenCjVriWtHgQqK8Vby7TJHAEKIdCDXX92Inh/osQma4=
=yaJy
-----END PGP SIGNATURE-----

--vjv3lCaXK3tkrwKDxRjEJU68sfwwSScKJ--
