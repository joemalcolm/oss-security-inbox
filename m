X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1865" "Sunday" "19" "April" "2020" "22:09:28" "+0300" "Henri Salo" "henri@nerv.fi" "<20200419190928.GA145297@ryzen.bugs.fi>" "52" "Re: [oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)" nil nil nil "4" "2020041919:09:28" "[oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)" (number mark "U       henri@nerv.f Apr 19   52/1865  " thread-indent "\"Re: [oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)\"\n") "<1842330.usQuhbGJ8B@spectre>" ("<1842330.usQuhbGJ8B@spectre>") nil nil nil nil nil nil nil "Re: [oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18412 invoked by uid 550); 19 Apr 2020 19:09:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18394 invoked from network); 19 Apr 2020 19:09:43 -0000
X-Virus-Scanned: Debian amavisd-new at nerv.fi
Date: Sun, 19 Apr 2020 22:09:28 +0300
From: Henri Salo <henri@nerv.fi>
To: Agostino Sarubbo <ago@gentoo.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20200419190928.GA145297@ryzen.bugs.fi>
References: <1842330.usQuhbGJ8B@spectre>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; x-action=pgp-signed
Content-Transfer-Encoding: 8bit
In-Reply-To: <1842330.usQuhbGJ8B@spectre>
Subject: Re: [oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

On Sun, Apr 19, 2020 at 04:59:48PM +0200, Agostino Sarubbo wrote:
> Affected version:
> 1.3
>
> Fixed version:
> Will be 2.0
>
> Commit fix:
> https://github.com/skvadrik/re2c/commit/
> c4603ba5ce229db83a2a4fb93e6d4b4e3ec3776a
>
> Credit:
> This bug was discovered by Agostino Sarubbo.
>
> CVE:
> I don’t care anymore about a CVE. If you will obtain one about this issue, 
> feel free to reach me. I will update this as well.
>
> Note:
> This bug was found with American Fuzzy Lop.
> This bug was identified with bare metal servers donated by Packet. This work 
> is also supported by the Core Infrastructure Initiative.
>
> Permalink:
> http://blogs.gentoo.org/ago/2020/04/19/re2c-heap-overflow-in-scannerfill-scanner-cc/

Good job again ago! I created CVE request for you. I don't think that you
should stop fuzzing as mentioned in blog. Instead you should pick responsive
and important targets (e.g. re2c) and add a donation button to your web page,
thanks :)

- -- 
Henri Salo
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/aVSDznAZReWTkxKJ633pE6qdXQFAl6coeUACgkQJ633pE6q
dXR+Sg//T9YuxN+Ef49RaPpChhWuZqsS6/gTimhdr6A5Obncl7LHqYj/IViHX23W
Ck+/wpLTNVt3vZGKB5607XkwoeJkfHgtKxdWcIMNSBevDpvKX4fJd01csD8FTqGR
6tmTmS6EgFRRevfGTut2mmwMkQDOTZ9EbedcxqanmCVZ6IDUVSlvdRrwtFXPcgHG
qTafrAyaYNbrbJLHPlnliTY+k7HdXPsT8j2Oe97+u/as3E8+B21xssUkerVRwQ6S
MPey0/7bMh7IV4x+u5NFbIwl7W6OlksDcemR41ZSiwlyd7SfMcU9kBHHdC1LVYgh
pyeWGys4CUjj/b7fYf5lJEYLdsGTEcYgtWpLisE2rd+2vyMkzx/NWYDgqHsMzK90
zHyNYVLq/qowu8h5V+tRW/VhgYl9m/U1zxFllhVYVOEu87+fdk0FfhT2AFq5HtX8
7+l3EnInfu4TUAMATerInYR6wsjOOj7vjNjbYbpStRC8IZavsGMlwneaNr1QkQtf
5gu+85yU8VmwYUrYftaGdsvbjUR6xz+LNkiF2Y72r0/kKDi29/oi3gekYYumcBB3
zaRXGsoliVV7eTeFF7N/HGeGheIkHaCGo1yB+GQ2BZt/723EBg10WRpZYbCaweQQ
LuTyN2OBwdCDyPF+T+E1oOF6CtkkHa6cYcdG9s6NZ7Ij9v2ky2w=
=N3U9
-----END PGP SIGNATURE-----
