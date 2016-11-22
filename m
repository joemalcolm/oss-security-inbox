X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2199" "Tuesday" "22" "November" "2016" "13:16:48" "+0800" "Kuang-che Wu" "kcwu@csie.org" "<20161122051648.GI10528@kcwu.csie.org>" "59" "[oss-security] CVE request: w3m - multiple vulnerabilities" nil nil nil "11" "2016112205:16:48" "[oss-security] CVE request: w3m - multiple vulnerabilities" (number mark "U       kcwu@csie.or Nov 22   59/2199  " thread-indent "\"[oss-security] CVE request: w3m - multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7478 invoked by uid 550); 22 Nov 2016 05:50:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23883 invoked from network); 22 Nov 2016 05:17:05 -0000
Date: Tue, 22 Nov 2016 13:16:48 +0800
From: Kuang-che Wu <kcwu@csie.org>
To: oss-security@lists.openwall.com
Message-ID: <20161122051648.GI10528@kcwu.csie.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1LKvkjL3sHcu1TtY"
Content-Disposition: inline
User-Agent: Mutt/1.6.1 (2016-04-27)
Subject: [oss-security] CVE request: w3m - multiple vulnerabilities

--1LKvkjL3sHcu1TtY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Following are security flaws that I reported to debian's w3m.
https://github.com/tats/w3m

These issues are all fixed in 0.5.3-33 (v0.5.3+git20161120) released
at Nov 20, 2016.

Please assign CVEs if you think they are suitable for identifiers.

Serious issues
- https://github.com/tats/w3m/issues/29 global-buffer-overflow write

Moderate issues
(the crash point looks not-explitable but I am not sure whether the root cause
 of them could be reused as exploit gadget)
- https://github.com/tats/w3m/issues/32 null deref
- https://github.com/tats/w3m/issues/33 null deref
- https://github.com/tats/w3m/issues/35 near-null deref
- https://github.com/tats/w3m/issues/36 stack overflow
- https://github.com/tats/w3m/issues/37 stack overflow
- https://github.com/tats/w3m/issues/38 heap overflow read + deref
- https://github.com/tats/w3m/issues/39 null deref
- https://github.com/tats/w3m/issues/40 null deref
- https://github.com/tats/w3m/issues/41 global-buffer-overflow read
- https://github.com/tats/w3m/issues/42 null deref
- https://github.com/tats/w3m/issues/43 global-buffer-overflow read

Low severity
- https://github.com/tats/w3m/issues/23 OOM

All issues are found by afl-fuzz.

Regards,
kcwu

--1LKvkjL3sHcu1TtY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJYM9TAAAoJEG1XW8ld0mmXyf8QAJFHLW4t4gpii7VDD9cgdgeu
GEGR1Oroyrv8SJS4uGbQEkclFy+1rbxRDFaFBAMhsx0IUvAyuvI8T3ONdBwiqF3w
ugSxgZQ9cuLE1cJTVhPL3VRMtFAdtH14/pI5KXd+/zGsRAiNkY41VU5MXCw1kPrI
X3MlE/hhagGH48eW6WCxTvqRE2BAFtNQuAy73FqQTaXQ+cwI+EP9Dzz6PMBkwnLJ
zYihZxkc98+ijnjd39VzCagrJ0lBY+2jk/pAC3akR0bAoDNcE4pTHhapBrZZsxRY
AOW3HQF3lwI6oR7LI8aufjwPGZfNN/HzqfF3x6SIDpT62a03JDBqJCqy+l41LwXK
+r58VrLNlKlo4DoXK/OqkepK4QythumxUaqc4yJGgEHuq9hls4hdSvFFjufsaOeT
R48uTBFIpe2ch0STt//uyQ1dpbvBjW+FPqL/Z5YBsGWAm1dMhMnMLYFP1nbk85fr
AomIj0dbsio7t1WL0EpiT9R74anFp3/M3EOSEqqxNT/2+QPbF6Oz2B1yZzpTDRZH
0DPuexJI8e3J4HMXhN267ystjkN9aEMhArcSmiNlLdQdqKU8IZQnHxyesUzpb7wZ
A5mPEBjGajCS5gwsKfQrlxioeNvAJsLwC+e0Vx159+WIKVbpbg1zHK31gtrNNPTf
L+NBBIC7ER+K5PUoKTy6
=f2Mn
-----END PGP SIGNATURE-----

--1LKvkjL3sHcu1TtY--
