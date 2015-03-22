X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1328" "Sunday" "22" "March" "2015" "18:31:12" "+0000" "mancha" "mancha1@zoho.com" "<20150322183112.GA5339@zoho.com>" "37" "[oss-security] OpenSSL DoS tester now available (CVE-2015-0291)" nil nil nil "3" "2015032218:31:12" "[oss-security] OpenSSL DoS tester now available (CVE-2015-0291)" (number mark "        mancha1@zoho Mar 22   37/1328  " thread-indent "\"[oss-security] OpenSSL DoS tester now available (CVE-2015-0291)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25825 invoked by uid 550); 22 Mar 2015 18:33:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23917 invoked from network); 22 Mar 2015 18:33:21 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:subject:message-id:mime-version:content-type; 
  b=FP6coHrqim+lM7UihoB2x/bq2zTqj+pXhNMwGlfhM6ntmN6P0dpVXg/0rGJ3AgEOUgLoadI2QazR
    slE/D/jei5Le3BDK9+66k4ts9WPaRLKfGdbsGTc9rkJ6GoiqzfCh  
Message-ID: <20150322183112.GA5339@zoho.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="huq684BweRXVnRxX"
Content-Disposition: inline
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Date: Sun, 22 Mar 2015 18:31:12 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenSSL DoS tester now available (CVE-2015-0291)
To: oss-security@lists.openwall.com

--huq684BweRXVnRxX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Vendors/organizations interested in diagnosing exposure of their
OpenSSL-based services to the recently-disclosed sigalgs Dos
vulnerability (CVE-2015-0291) can use my clientnullo tester [1] and
read my brief write-up [2].

--mancha

[1] http://sf.net/projects/mancha/files/clientnullo.c
[2] https://mancha1.github.io/clientnullo.html

--huq684BweRXVnRxX
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVDwpwAAoJEB4VYy8JqhaDEnIP/2bjMiPZ6rYraS3vvRtV1oPT
DCy8nDYk+eGEGe1ijmNngAa1rdRVWeEvESF2cBZZYuTkDZ5wOvXYQLcgUffkctZC
VywRaPqO0dKRYw3Z5qhitmGYCGTJyXHmi5Pevq9v1b8D52VopyPhVZGTD2RzCLNE
HN7GbdBiIizuuCvPPgga3B9A5pT/LSDBeCWvwM+Spmvg0kz6RtDSLbVfNOVUHBvs
W5SB5W1HSL4FzfB0COKPoHFKlbXQ18Y7OrS961R4Dv1rCP1FPapEzJUHlACgF4Se
oXVfmhXvim0gb/qQ5ZQWaphCcazykMaaxp08rU2KmaMwWL+a8yPxNlaSNAy4WxFd
seAavONDJ41WtQs6YA6ETlnMof6mFwbAcOyU3VsQ7uH/K2DXN6wFKSP+2tMbD+bt
AnCOxvcHg0Jqwy1xGOEU76+c1gqu9tq+xftZ6rxyWql7BzsCUzaj6o0bG03BAOSh
TloOr8n0neUjU2MPrcF1KPCMajCuP65NOvYFBLnbDwmvccLhNH3llfrfbsY0smDt
lTqDphVlWybf8zy5A1PU9iNw8pV67KGIH85jNJ4Scok7T02S8j7WJRPy6Icgq6+i
LX9ojA4KEftzYQqi6CcBiVWlZBfI1jaFMYj0+CChDbUt9vEYMxwZ0nmO6m/u7SKI
jxSzAOO+DbRJA7ayhpBY
=7nVJ
-----END PGP SIGNATURE-----

--huq684BweRXVnRxX--

