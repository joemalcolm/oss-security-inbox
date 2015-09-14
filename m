X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1633" "Monday" "14" "September" "2015" "15:32:25" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150914193225.CC35FB2E03B@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE Request : CSRF in IPython/Jupyter notebook Tree." nil nil nil "9" "2015091419:32:25" "[oss-security] Re: CVE Request : CSRF in IPython/Jupyter notebook Tree." (number mark "U       cve-assign@m Sep 14   40/1633  " thread-indent "\"[oss-security] Re: CVE Request : CSRF in IPython/Jupyter notebook Tree.\"\n") "<A8A4C292-C37B-425F-88C1-F7955DA039A9@gmail.com>" ("<A8A4C292-C37B-425F-88C1-F7955DA039A9@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22396 invoked by uid 550); 14 Sep 2015 19:32:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22360 invoked from network); 14 Sep 2015 19:32:47 -0000
In-Reply-To: <A8A4C292-C37B-425F-88C1-F7955DA039A9@gmail.com>
Message-Id: <20150914193225.CC35FB2E03B@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@ipython.org, rgbkrk@gmail.com, jkamens@quantopian.com, thebrowfc@gmail.com
Date: Mon, 14 Sep 2015 15:32:25 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request : CSRF in IPython/Jupyter notebook Tree.
To: bussonniermatthias@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Type of vulnerability: XSS
[ changed from "Type of vulnerability: CSRF" based on later mailing-list discussion ]

>   3.x:   https://github.com/ipython/ipython/commit/3ab41641cf6fce3860c73d5cf4645aa12e1e5892
>   4.0.x: https://github.com/jupyter/notebook/commit/dd9876381f0ef09873d8c5f6f2063269172331e3
>   4.x:   https://github.com/jupyter/notebook/commit/35f32dd2da804d108a3a3585b69ec3295b2677ed

> Affected versions: 0.12 <= version <= 4.0
> 
> (Note, software change name between 3.x and 4.0)

> Local folder name was used in HTML templates without escaping

Use CVE-2015-6938.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV9x9XAAoJEL54rhJi8gl5mvoP/jcWhyQGreaVGfLXTCTlCMNc
6+gt25dmNxLJQa3/yiPhsrcY6BhG6vUcJyM3peTNkWOzYTW1+tz0YiReU2E0lybe
/8vQo3JEsD5JCcOtCR32/qMMFl1W5sdfAcflPnXxNPHFq369QE4obw0lIx3DaqVG
+UJEwzLj1Da8PjrXRkd0RaeX92HhGcjG9ktfpOIKgWuWx24FTRScrq+ZgNPU/44k
YKSYegOu+FzWKuWFVElnmioJIUvzfPYajYBx96CrH7p5ASunfxT/oJ8MyA9Ml2dD
2Q85Sq0nAPrUZcSfErhjFSIORu+eX/FW+sw+kUmaK+hL9u7i/dhUUSagAW9DRoLt
VB/YkmiXIlX13Y6WP9ENnKizG/XjbeHhhXAHgz0vFmpCS4xdsnX2qad6LMryhaAT
Ep51amBRliHsKzoIpoelFl+bTSdPHJ+1AF9PvJ3Tx+4CTltApi5Rp3fnvb9RvCm5
f5zh87WqGt2D1yMWg9zJ7ru265RSoFc5ks9Cuygz3y3wqQgb6eg2ldQ6X36ygMlB
8IvPtca+rSJJ9hslWVcNdVzBM/PLytJRSC+t4obSjzoMg2MtXMWZZFiapTEWWVLF
TCPzZWhqVvmzFTHochArFPFyDcmPW83VIIZx8wAFVI51u8GI2oksYjjIrw+fd1/l
5OItpMs1hdnp1e0t08Cu
=KBuL
-----END PGP SIGNATURE-----
