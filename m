X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1422" "Tuesday" "10" "January" "2017" "15:50:28" "+0000" "Cesar Pereida Garcia" "cesar.pereidagarcia@tut.fi" "<D159A2841943CE409CC23D3F12A4633A516569@mb2010-3.intra.tut.fi>" "46" "[oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)" "^Date:" nil nil "1" "2017011015:50:28" "[oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)" (number mark "        cesar.pereid Jan 10   46/1422  " thread-indent "\"[oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22112 invoked by uid 550); 10 Jan 2017 16:11:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11929 invoked from network); 10 Jan 2017 15:50:49 -0000
X-AuditID: 82e6a020-ef9ff70000000b98-ce-587502c5b682
Thread-Topic: CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL,
 LibreSSL, BoringSSL)
Thread-Index: AdJrWOHH397J7xyESKi3+6UWjiUGtw==
Message-ID: <D159A2841943CE409CC23D3F12A4633A516569@mb2010-3.intra.tut.fi>
Accept-Language: en-US, fi-FI
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [130.230.76.200]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgleLIzCtJLcpLzFFi42JperZIWPcEU2mEwd0rWhbL/rs5MHqs7HzM
	FsAYxWWTkpqTWZZapG+XwJXxfr5XwR7uilkTn7A1MJ7k7GLk5JAQMJFo7P3IAmILCexllJjY
	ydjFyAVkn2GU+PXmCDuEs5pRou/CE2aQKjYBc4kLc5vBOkQE3CXe/ZnC1sXIwSEsECfR3eYB
	EU6WuPCthxnC1pOY9e8KE4jNIqAqcfTKFzYQm1fAS6L/1x5GEJtRQFZiefdusHpmAXGJW0/m
	M0EcJyCxZM95ZghbVOLl43+sELaSxJH789gh6vUkbkydwgZha0ssW/iaGWK+oMTJmU9YJjAK
	z0IydhaSlllIWmYhaVnAyLKKUSw3MTNHN71cN7+0xFAvOVmvpLRELy1zEyM4wBco7GB8OU3/
	EKMAB6MSD++DFyURQqyJZcWVuYcYJTmYlER5l30GCvEl5adUZiQWZ8QXleakFh9ilOBgVhLh
	XfELKMebklhZlVqUD5OS5mBREuct9dcMERJITyxJzU5NLUgtgsnKcHAoSfCe+QfUKFiUmp5a
	kZaZU4KQZuLgBBnOAzR81jeQ4cUFibnFmekQ+VOMilLivCm/gRICIImM0jy4XkgC8jF+xSgO
	9Iow75YfQFU8wOQF1/0KaDAT0OBIu2KQwSWJCCmpBsbue6HxK05PfFh2josh6+1mA3+rn3NO
	mcccmJen+tQ61moqk7VSvaSv0F6v/XeU9Fk4Er8Z1FczvrvDUbrm5cV4/+2Pw1OrbK3Sf9i8
	Eguf5nCr5oPXt19FeSebozW+fd9pYVrocOPFzQjN/8nBh1Kyjier6tlPftLgc3Fp6xWWhpSz
	Lew/HJRYijMSDbWYi4oTAdeo+lobAwAA
Date: Tue, 10 Jan 2017 15:50:28 +0000
From: Cesar Pereida Garcia <cesar.pereidagarcia@tut.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL,
 LibreSSL, BoringSSL)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

Attack Vector: Local

Vendor: OpenSSL, LibreSSL, BoringSSL

Versions Affected:
OpenSSL 1.0.1u and previous versions
LibreSSL (pre 6.0 errata 16, pre 5.9 errata 33)
BoringSSL pre November 2015

Description:
The signing function in crypto/ecdsa/ecdsa_ossl.c in certain OpenSSL versio=
ns and forks
is vulnerable to timing attacks when signing with the standardized elliptic
curve P-256 despite featuring constant-time curve operations and modular in=
version.
A software defect omits setting the BN_FLG_CONSTTIME flag for nonces, faili=
ng
to take a secure code path in the BN_mod_inverse method and therefore resul=
ting
in a cache-timing attack vulnerability.
A malicious user with local access can recover ECDSA P-256 private keys.

Mitigation:
Users of OpenSSL with the affected versions should apply
the patch available in the manuscript at [1].

Users of LibreSSL should apply the official patch from OpenBSD [2,3].

Users of BoringSSL should upgrade to a more recent version.

Credit:
This issue was reported by Cesar Pereida Garc=EDa and Billy Brumley
(Tampere University of Technology).

Timeline:
19 Dec 2016 Disclosure to OpenSSL, LibreSSL, BoringSSL security teams
29 Dec 2016 Embargo lifted

References:
[1] http://ia.cr/2016/1195
[2] https://ftp.openbsd.org/pub/OpenBSD/patches/5.9/common/033_libcrypto.pa=
tch.sig
[3] https://ftp.openbsd.org/pub/OpenBSD/patches/6.0/common/016_libcrypto.pa=
tch.sig

- Cesar=
