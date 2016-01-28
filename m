X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1391" "Thursday" "28" "January" "2016" "01:37:29" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160128063729.1D3D26C0056@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: Heap buffer overflow in fgetwln function of libbsd" "^Cc:" nil nil "1" "2016012806:37:29" "[oss-security] Re: Heap buffer overflow in fgetwln function of libbsd" (number mark "        cve-assign@m Jan 28   35/1391  " thread-indent "\"[oss-security] Re: Heap buffer overflow in fgetwln function of libbsd\"\n") "<20160127220326.5a8828a2@pc1>" ("<20160127220326.5a8828a2@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9368 invoked by uid 550); 28 Jan 2016 06:37:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9350 invoked from network); 28 Jan 2016 06:37:40 -0000
In-Reply-To: <20160127220326.5a8828a2@pc1>
Message-Id: <20160128063729.1D3D26C0056@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 28 Jan 2016 01:37:29 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Heap buffer overflow in fgetwln function of libbsd
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> this check is off by one, therefore an out of bounds write happens.
> 
> https://blog.fuzzing-project.org/36-Heap-buffer-overflow-in-fgetwln-function-of-libbsd.html
> https://bugs.freedesktop.org/show_bug.cgi?id=93881
> http://cgit.freedesktop.org/libbsd/commit/?id=c8f0723d2b4520bdd6b9eb7c3e7976de726d7ff7

> fgetwln.c

Use CVE-2016-2090.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWqbaKAAoJEL54rhJi8gl59xkP/04TTXdnPf8d7KiSwvOPJ3qO
coK4/oALkMFfzC8qgYjtZeZMXj1EEDJJdTdiZXF2EKCMVQc3U0qmpsTFYHZHw7tJ
Goa5m9byhMUV3w16uaFLcf+tSsPQzePWmAVP/oSIfHweiN11Zz4h/Zvn7JLd2b/I
lTn3ThjC1HlS7LwGcqmj9QAUq2vrWBs34afIOmUd166vdZdZPNTZ4sKAOitWmMo6
IPV0BEv/EBO0RolGd/A/GdCXGcqrcTSKAJVHsUoiaPUSPJFzG4XavgqOf/i9Ky+b
cal2LDTQQrIwSXw3eqCFtpLfhAkAnHQhUIW/3wysUmEq52b+tko8+4A6EF9/dw6g
xpPRhBHO+iP5qQ0PfkGO6QxGtFL+S9su6IU+UE9kCIgCvqQLeKTpD/ZrH9BEw+zX
SbxkdqW+Oa57+2kzvBEO3NfxqhcPavrZnPQ9uf00biPa3rO7z9D1IRLAZPqb3mx2
xQGN39/RglFaPWKpvMFqV6ZxaM5oRZqkWag8wSOSkImAfsE1KujqmtCw182Jnpwh
Z7gjSxfAjuN5RlSez5WTRfOKT6JpOoh4LduX+uhw8hdXj3tCj9ibmxf63NQ7t2nU
+tPSZ/7k2NChu2i2lfPrSQTP/F6rEABjq/7osfNQlaWTonIA1Q+G794j7ioveVCf
HiAK2pUK75NFHSOvy+qT
=qJqt
-----END PGP SIGNATURE-----
