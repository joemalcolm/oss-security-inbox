X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1202" "Tuesday" "22" "September" "2015" "16:52:45" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150922205245.7C7C76C00B1@smtpvmsrv1.mitre.org>" "31" "[oss-security] Re: DoS in libtiff" nil nil nil "9" "2015092220:52:45" "[oss-security] Re: DoS in libtiff" (number mark "        cve-assign@m Sep 22   31/1202  " thread-indent "\"[oss-security] Re: DoS in libtiff\"\n") "<CACn5sdSySyCbjCxTqsVzO8o5CVebYf3YixbwR5rR0XB1i5pT8g@mail.gmail.com>" ("<CACn5sdSySyCbjCxTqsVzO8o5CVebYf3YixbwR5rR0XB1i5pT8g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13635 invoked by uid 550); 22 Sep 2015 20:53:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13596 invoked from network); 22 Sep 2015 20:52:57 -0000
In-Reply-To: <CACn5sdSySyCbjCxTqsVzO8o5CVebYf3YixbwR5rR0XB1i5pT8g@mail.gmail.com>
Message-Id: <20150922205245.7C7C76C00B1@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 22 Sep 2015 16:52:45 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: DoS in libtiff
To: gustavo.grieco@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We found a DoS using a crafted tiff file that causes a OOM kill

> If you run it with ltrace, you can see some very large reallocs

Use CVE-2015-7313.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWAbzpAAoJEL54rhJi8gl5+bQP/i/xWz22LGpaKlwEHRLLUbml
8wIlyokkQMyxF5JfmND/2bvr7P0RisaYCr93C0Mdmvob/l2ht8FVHdruGwy+nHq2
aLFO/q4odopAGjT/UdIaI4j+M9AbHWKuuielfxX87RalCLbz8Lv2Ny7hoTnyVlAK
th0Vvz8bdVeEn6EXU2iEtXjtmh+tV+e8NL+Csvkp7A/FLAJneadgVhR0m+qlVNBA
YT/PP0SeQ9e3Zlyv8UVKazGvV4LgqjrrS/kg9mk8FRmm/oCgpkNM3/VuS2Xn5CSM
fmWju1e5iJur+lIRD7NCWexipzelM/9BxYi07uxH2ZmC1zwCckblUqlJDHVIpLrU
DHbVhGsBzBk3n49TiQgh3G8q5Df9CpPqiMozANCnI13tA8IU+nE6et6toQOtiX0b
UyAuNEG7m/1HqbG4f6sSXfJXAujDZXJRAERU7VPVBxMlwvh8fIwR4d+rsrMyuC7w
6RusT0Gv2yYetBJgbzCcktqu7DcBKKG9NN2Cndhc7v9yV4utdZ+bxhOi77no3BFt
OdlOtrx0Y8wd/c8bG5JNvzSOHZhGmZD1hU5aUQJtu0izBbKG598jW0BdtBmG8ZQH
fSn+Wuw49iC9VyJ6Cs9t4pRX6kGh4CW3EkiOnyKjFF+UQdcdAAV+hWVvAcJfEtAY
qiVsVTUHJxNOaBsqJvlp
=o1Fp
-----END PGP SIGNATURE-----
