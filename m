X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1074" "Tuesday" "21" "April" "2020" "10:29:05" "+0300" "Henri Salo" "henri@nerv.fi" "<20200421072905.GA210610@ryzen.bugs.fi>" "26" "Re: [oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)" nil nil nil "4" "2020042107:29:05" "[oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)" (number mark "U       henri@nerv.f Apr 21   26/1074  " thread-indent "\"Re: [oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)\"\n") "<1842330.usQuhbGJ8B@spectre>" ("<1842330.usQuhbGJ8B@spectre>") nil nil nil nil nil nil nil "Re: [oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7659 invoked by uid 550); 21 Apr 2020 07:29:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7638 invoked from network); 21 Apr 2020 07:29:22 -0000
X-Virus-Scanned: Debian amavisd-new at nerv.fi
Date: Tue, 21 Apr 2020 10:29:05 +0300
From: Henri Salo <henri@nerv.fi>
To: Agostino Sarubbo <ago@gentoo.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20200421072905.GA210610@ryzen.bugs.fi>
References: <1842330.usQuhbGJ8B@spectre>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; x-action=pgp-signed
In-Reply-To: <1842330.usQuhbGJ8B@spectre>
Subject: Re: [oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

On Sun, Apr 19, 2020 at 04:59:48PM +0200, Agostino Sarubbo wrote:
> http://blogs.gentoo.org/ago/2020/04/19/re2c-heap-overflow-in-scannerfill-scanner-cc/

Use CVE-2020-11958.

- -- 
Henri Salo
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/aVSDznAZReWTkxKJ633pE6qdXQFAl6eoL8ACgkQJ633pE6q
dXQjNxAArR8FasEqoCZe3REbzgztybaAqsagPsZ8hFGJMOM3Lfug5D8VeMVKGPO/
yI5ADpOjEZyJsRhM/E7vxyd7inLq5IJuUSvux36SNzCAW3i0gFJqHjHEkX0Z63rO
4hL81wZ+jc0K61C2s583vyfZSuuJksb1rtn8rTNbyfDVWETnXGC3YVTgu+AvKZqH
a3y/OF4jyhw9ho0bf/onRTmk3/0tPEJxs7x5ZfwE7TSTJLaNJEcKt1CPIs8fo0KC
QMGsUURJxuaMKJCU7owESzojlEZn3XEjingC5E5MOpQmeTocYH5JSB0q4vJk2UTp
jolwX8eR9O5GbDob8xbtqMVc7JEwsnelxd8ChPRBrmulgjdW77yDu70GBL9weHdv
+a3NcqwJ7LGOVwQyE/tYkh7OYV7PSMCPsb0Qs0Dwdrd8yrVybTq8sh1AsjvaYrgy
J6Xg2vNX9VOlRjhEER0Saf2ChoaAZEDuhClRJKdcFOCHptc2bB1tIACEGdSvG+5R
CD0FyOZb/bpQGd0NwtAPajdZs7aXw2aaFIo0f91r55e7tk7bBZ2jYvXcMVQp3DXF
FwvPit1JqLHgECPxT2aAtSWXwDv57pZjbh1OB0vFz+x0O3BNkGYGZbBLqTwcEPQC
VpTH6uKcOIAG7JyN2cdAH+7cDjlxrdeDO82VmAZLLLW1iFGaL9I=
=/3xD
-----END PGP SIGNATURE-----
