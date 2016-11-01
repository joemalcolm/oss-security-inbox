X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2021" "Tuesday" "1" "November" "2016" "15:06:29" "-0500" "ISC Security Officer" "security-officer@isc.org" "<e441740a-f96e-6034-f0d4-bf0bcd72ad19@isc.org>" "60" "[oss-security] BIND9 CVE-2016-8864: A problem handling responses containing a DNAME,answer can lead to an assertion failure" nil nil nil "11" "2016110120:06:29" "[oss-security] BIND9 CVE-2016-8864: A problem handling responses containing a DNAME,answer can lead to an assertion failure" (number mark "U       security-off Nov  1   60/2021  " thread-indent "\"[oss-security] BIND9 CVE-2016-8864: A problem handling responses containing a DNAME,answer can lead to an assertion failure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22054 invoked by uid 550); 1 Nov 2016 20:08:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21701 invoked from network); 1 Nov 2016 20:06:53 -0000
From: ISC Security Officer <security-officer@isc.org>
To: oss-security@lists.openwall.com
Cc: ISC Security Officer <security-officer@isc.org>
Message-ID: <e441740a-f96e-6034-f0d4-bf0bcd72ad19@isc.org>
Date: Tue, 1 Nov 2016 15:06:29 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:45.0)
 Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="2sTmjiap3uQTjgq2tAaeVe0dBXFovtp2j"
Subject: [oss-security] BIND9 CVE-2016-8864: A problem handling responses containing a
 DNAME,answer can lead to an assertion failure

--2sTmjiap3uQTjgq2tAaeVe0dBXFovtp2j
Content-Type: multipart/mixed; boundary="bkm5WI1OS9T8vadgkDi3c2Ts0xT4hOMFQ";
 protected-headers="v1"
From: ISC Security Officer <security-officer@isc.org>
Reply-To: security-officer@isc.org
To: oss-security@lists.openwall.com
Cc: ISC Security Officer <security-officer@isc.org>
Message-ID: <e441740a-f96e-6034-f0d4-bf0bcd72ad19@isc.org>
Subject: BIND9 CVE-2016-8864: A problem handling responses containing a
 DNAME,answer can lead to an assertion failure

--bkm5WI1OS9T8vadgkDi3c2Ts0xT4hOMFQ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Please be advised that ISC publicly announced a vulnerability in the
BIND 9 software.

CVE-2016-8864 is a denial-of-service vector which can potentially be
exploited against BIND 9 servers.  All versions prior to the current
releases are vulnerable.

Our full CVE text can be found at https://kb.isc.org/article/AA-01434/0

New releases of BIND, including security fixes for this vulnerability,
are available at: www.isc.org/downloads/

Release notes can be obtained using the following links:

ftp://ftp.isc.org/isc/bind9/9.9.9-P4/
ftp://ftp.isc.org/isc/bind9/9.10.4-P4/
ftp://ftp.isc.org/isc/bind9/9.11.0-P1/

--=20
Brian Conry
ISC Support
Acting Security Officer




--bkm5WI1OS9T8vadgkDi3c2Ts0xT4hOMFQ--

--2sTmjiap3uQTjgq2tAaeVe0dBXFovtp2j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJYGPXNAAoJEL2X3GOe6MR7PWkH/jEl39WfP6ZREXiUc3YzC0Pf
1LA37DZZPjTAzIZIUP5spjWD15QQacO6bMawwpt0o3Z7ZU3M5vkd2o3uz2gu04Nz
jJOChEzSpF2jEK4jr4ASQaVFwNOMZX3LE+M6oXTSyvLVM8RaBEsRjdeuvha+v+yW
a9UmjPboArjTcxgZFQBQvukzkDBPyIU56cdQEt3dNLNLU8FAU7G13wknr9hm8wji
eALxchVlcjtl4QSqyLrJO1mSx5iIfFQAkPqC5ysUKgi24EJuQdlmjU+AcB6dg5Jd
7SPln6CVLvLVWIEKIMC6YyV46+I+TtTf3gTK+DUYnXIO7T/41+KNpSCmSdeyLI0=
=uxWm
-----END PGP SIGNATURE-----

--2sTmjiap3uQTjgq2tAaeVe0dBXFovtp2j--
