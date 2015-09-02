X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1876" "Wednesday" "2" "September" "2015" "22:52:30" "+0200" "ISC Security Officer" "security-officer@isc.org" "<55E7618E.1020301@isc.org>" "52" "[oss-security] Two new vulnerabilities in BIND: CVE-2015-5722 and CVE-2015-5986 are now public" nil nil nil "9" "2015090220:52:30" "[oss-security] Two new vulnerabilities in BIND: CVE-2015-5722 and CVE-2015-5986 are now public" (number mark "U       security-off Sep  2   52/1876  " thread-indent "\"[oss-security] Two new vulnerabilities in BIND: CVE-2015-5722 and CVE-2015-5986 are now public\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19844 invoked by uid 550); 3 Sep 2015 03:49:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13909 invoked from network); 2 Sep 2015 20:52:48 -0000
To: oss-security@lists.openwall.com
Cc: ISC Security Officer <security-officer@isc.org>
From: ISC Security Officer <security-officer@isc.org>
Message-ID: <55E7618E.1020301@isc.org>
Date: Wed, 2 Sep 2015 22:52:30 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
 Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="mDKHen3cOXGJONbQAKIhgM0cu97eTgET9"
Subject: [oss-security] Two new vulnerabilities in BIND: CVE-2015-5722 and CVE-2015-5986 are
 now public

--mDKHen3cOXGJONbQAKIhgM0cu97eTgET9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Please be advised that ISC publicly announced two critical
vulnerabilities in BIND:

+ CVE-2015-5722 is a denial-of-service vector which can be
  exploited remotely against a BIND server that is performing
  validation on DNSSEC-signed records. All versions of BIND since
  9.0.0 are vulnerable.
  https://kb.isc.org/article/AA-01287

+ CVE-2015-5986 is a denial-of-service vector which can be used
  against a BIND server that is performing recursion and (under
  limited conditions) an authoritative-only nameserver.
  Versions of BIND since 9.9.7 and 9.10.2 are vulnerable.
  https://kb.isc.org/article/AA-01291


New releases of BIND, including security fixes for these
vulnerabilities, are available:

ftp://ftp.isc.org/isc/bind9/9.10.3rc1/RELEASE-NOTES.bind-9.10.3rc1.html
ftp://ftp.isc.org/isc/bind9/9.9.8rc1/RELEASE-NOTES.bind-9.9.8rc1.html
ftp://ftp.isc.org/isc/bind9/9.10.2-P4/RELEASE-NOTES.bind-9.10.2-P4.html
ftp://ftp.isc.org/isc/bind9/9.9.7-P3/RELEASE-NOTES.bind-9.9.7-P3.html

Marcin Siodelski
(as ISC Security Officer)




--mDKHen3cOXGJONbQAKIhgM0cu97eTgET9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEbBAEBCAAGBQJV52GOAAoJEL2X3GOe6MR7rfkH+Lxe8AvYoSHySXGAhEzJ7cPv
dVXaqyhBM1ZLPGjj1uE4JLEx6pTty5DTu0WlHREhCi/GSGCzUVe3k+1vKDDVkxib
qFpsJQA/CCJPWt94vXGsKKcK/QPXFr9l4D4TO5lI1/AdWNTkayBSXI9xlC7fmqKB
VquROmTFGvh7M1zGR/qqhDU/dOWG2iquM+xbZ0yPW5CiUN8jyEM2E4JEftZFnDhA
hAoSxnhwA+airElSnUv7bkANoeUq41yvPggfcp8ajFpEoDSDnuq/hfX23xVBCFsD
2EzNPn/3d8pKW5smXYUXrw90bKatEycS+lSLqa3jcGUda932WJExd74nzqQEvQ==
=w7hv
-----END PGP SIGNATURE-----

--mDKHen3cOXGJONbQAKIhgM0cu97eTgET9--
