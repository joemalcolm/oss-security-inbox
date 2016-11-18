X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1652" "Friday" "18" "November" "2016" "18:57:21" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<5fba1477d08e4f3481f6f65080897a24@imshyb02.MITRE.ORG>" "36" "[oss-security] Re: CVE-2016-9297 LibTIFF regression" nil nil nil "11" "2016111823:57:21" "[oss-security] Re: CVE-2016-9297 LibTIFF regression" (number mark "U       cve-assign@m Nov 18   36/1652  " thread-indent "\"[oss-security] Re: CVE-2016-9297 LibTIFF regression\"\n") "<20161118150524.GA16744@tunkki>" ("<20161118150524.GA16744@tunkki>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24069 invoked by uid 550); 18 Nov 2016 23:57:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24029 invoked from network); 18 Nov 2016 23:57:32 -0000
From: <cve-assign@mitre.org>
To: <henri@nerv.fi>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161118150524.GA16744@tunkki>
Message-ID: <5fba1477d08e4f3481f6f65080897a24@imshyb02.MITRE.ORG>
Date: Fri, 18 Nov 2016 18:57:21 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE-2016-9297 LibTIFF regression

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> CVE-2016-9297 vulnerability reported in http://bugzilla.maptools.org/show_bug.cgi?id=2590 had a
> regression, which is fixed in http://bugzilla.maptools.org/show_bug.cgi?id=2593
> 
>         * libtiff/tif_dirread.c: in TIFFFetchNormalTag(), do not dereference
>         NULL pointer when values of tags with TIFF_SETGET_C16_ASCII /
>         TIFF_SETGET_C32_ASCII access are 0-byte arrays.
>         Fixes http://bugzilla.maptools.org/show_bug.cgi?id=2593 (regression
>         introduced by previous fix done on 2016-11-11 for CVE-2016-9297).

Use CVE-2016-9448 for the vulnerability fixed in 2593.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYL5SIAAoJEHb/MwWLVhi2AzYP/2SarSYSo50EUpN0P21HbPSO
IEulwCp/UJ8S4Uu+0SlXs3vhBzi9OMJGjAAT73dqekzmvuWzXwwmXdTVdPhXYRQN
YrqK3K1QIn/gbFzAAbV6uzntktABhReJi0Rx57/kkfWbRHsIclD+nAJfY+yQWmkK
h1NS3DgBPcIffswM2EtbRU6hWWkdEHoxeiezIrk5o/hSHFt9AFP5yVNmcid63Hgp
rSgFfGIghkOrWQ3YSh9+bqCGC0dxHoBpvGR+yu0VEFFaLsh/EIjcy7kj1RBBAZWT
MpiSu0gTq2UMn8r/6H6Citxq79Iva+pafL8afCTsaAl8fMJ5aNsTj5JKEzcm83Hr
6riZMZv3AjizN+8x1lDFWcL1uN7Z+wilUU22/n7Qi1RGjzq74Vrs9Dabj0YoRZFV
9ukCOGqhpfGGwUrsVkwva26LvFei8nbP+P7f46AN8752HEugxt+uQhKixgco/ijf
25AYLDdBR3gIVMjJ44bSxKdHPBrFPMLMhU21huPD0w0upWTj220Sz7phvlF5oE8R
eogTOcNdDjMODtO8LHgSNviHQxc2Am03G0B6H/xm2NV7V2UQgvYHUOyQGU6jmJyY
BMwT6zaSALNs+g2WbKY6a/AuPnpUoKaabRtWNabAdd36o+lHsw7bliMyfDr9K4Lr
J6Cf8vBaL2h6W4whAQR7
=Jmyq
-----END PGP SIGNATURE-----
