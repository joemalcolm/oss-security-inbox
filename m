X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1542" "Sunday" "10" "April" "2016" "10:21:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160410142159.7B3713AE074@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: CVE request: imlib2 integer overflow" nil nil nil "4" "2016041014:21:59" "[oss-security] Re: CVE request: imlib2 integer overflow" (number mark "U       cve-assign@m Apr 10   42/1542  " thread-indent "\"[oss-security] Re: CVE request: imlib2 integer overflow\"\n") "<5709825C.8090807@vorlons.info>" ("<5709825C.8090807@vorlons.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24071 invoked by uid 550); 10 Apr 2016 14:22:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24053 invoked from network); 10 Apr 2016 14:22:11 -0000
From: cve-assign@mitre.org
To: matthias@vorlons.info
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <5709825C.8090807@vorlons.info>
Message-Id: <20160410142159.7B3713AE074@smtpvbsrv1.mitre.org>
Date: Sun, 10 Apr 2016 10:21:59 -0400 (EDT)
Subject: [oss-security] Re: CVE request: imlib2 integer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://git.enlightenment.org/legacy/imlib2.git/commit/?id=143f2993d7ccb73b26bb83abac6fa86f443981f9
> 
> Make IMAGE_DIMENSIONS_OK() more restrictive
> Prevents invalid reads and unreasonably large memory allocations

> Invalid read of size 1


> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=820206
> imlib2: potentially exploitable integer overflows


> https://bugzilla.redhat.com/show_bug.cgi?id=1324774
> imlib2: exploitable integer overflow in _imlib_SaveImage

Use CVE-2014-9771.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXCl65AAoJEL54rhJi8gl5jHAP/18fovC2vayH3h8K29nxAn2c
yA320vfDlnq9l7zdHYT0paBlU8cInmCX1YS0E+1gkaPtwPWfcbKzMtl73MIddWc9
6ADdSyQYs6hRMiPGy8D4VI2o2M3wxCIRRprjZrMx1mOl61qu9DIdmIkdDFTUuvuv
wsir9F6i+ENgfNvW0YHgmFcJrJ1YfOr7tfRKnm1xRi+5PkSukqqrKmc26UX94i7/
o5d227DsX77cUP6seN2XZnvHL1UZhCvLT1O2NS5h6q1z5L/BnFLOwnOz7psaPlv/
nFy7QKp6hWfAzPjaMuS52+DUdl9Py2nE9m/+lMArW5akilLoQ2P1O7BVnBCsiSQy
X2JO8n9iwHe/gF4Md6y7Xty1y1QcOqPzzK4yGosUeOhsL+1rgt6CrqgoniddGkfX
BKlbrhgOsS7apWnT3BHGLDz1HAIh1hr10a8o7dDnicC1iFYJxf3UZmGl9lmR6NPY
AZM5+zi4L1mVmwdQK95dIkKH9gcbt2Q3Lkc4Js4hftmFyU9BgiYO2Z/jrSkfsgiY
K79ysPGxjqav/1anOoJgQc9ygNBKeirDa5dnz8Op6ncvAjxGq8twgZF7vgDQ0NTT
wf5v/KalMsT5hsDmWEUMi8KD/feKuSprMdK9zbCw+bzN6jjYriQzoCHLeoMUbaKI
7e4XGMXRnZFMN08WUd6Z
=AZsh
-----END PGP SIGNATURE-----
