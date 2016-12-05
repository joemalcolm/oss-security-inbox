X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1247" "Sunday" "4" "December" "2016" "22:16:15" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<fdc137ebd36d405496f7ef135146d86b@imshyb02.MITRE.ORG>" "32" "[oss-security] Re: libming: listswf: heap-based buffer overflow in parseSWF_DEFINEFONT (parser.c)" nil nil nil "12" "2016120503:16:15" "[oss-security] Re: libming: listswf: heap-based buffer overflow in parseSWF_DEFINEFONT (parser.c)" (number mark "U       cve-assign@m Dec  4   32/1247  " thread-indent "\"[oss-security] Re: libming: listswf: heap-based buffer overflow in parseSWF_DEFINEFONT (parser.c)\"\n") "<1862568.R95AFAyhIW@arcadia>" ("<1862568.R95AFAyhIW@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11844 invoked by uid 550); 5 Dec 2016 03:16:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11821 invoked from network); 5 Dec 2016 03:16:27 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <1862568.R95AFAyhIW@arcadia>
Message-ID: <fdc137ebd36d405496f7ef135146d86b@imshyb02.MITRE.ORG>
Date: Sun, 4 Dec 2016 22:16:15 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libming: listswf: heap-based buffer overflow in parseSWF_DEFINEFONT (parser.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/12/01/libming-listswf-heap-based-buffer-overflow-in-parseswf_definefont-parser-c

> AddressSanitizer: heap-buffer-overflow
> WRITE of size 2

Use CVE-2016-9829.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYRNjVAAoJEHb/MwWLVhi2d0YP+wcOS+S9vSCcY76UvnIOJkAo
vIyF0ZwUuYqNT0iWRgTlBNVVwFylyT45t+NX7kIOrrMh1gZ5OitoeQLv0aTte2nG
fhkcMJGAQLAlq+3zeT+Zb6Gm5KIW2hZjZPrJLfhltMmYq5VQ9JO6mRYitvn4xqeW
nUUy/upc/4fE5LoxnA9PnVwoeV2R3e5huS5FcFQUe2ZvKcYfm5itd8QmSu60t0Jg
gcEH038p71InHVXOEwcGBpfq1lk+uoLJct+Ipj4uEsQQ924pfOml2+P9UQ/KNtKn
deQrCfL3qepypJVrD1BO2I6EEsUkI1csJFqHLKR3V1CVKZ5/oLisl56/+wwletv0
3pnoJ7G6bUb027BgTAn4TJYoFTcDDvyZstOagEqlYi2gpbdjlpgzXd+2IJhe2q4C
v/3/hefJN7OwoGs0outsCexxbFX31TlzhW4IT0XYnx4kPbdXsNiqJCZUWxU+VMWk
qAGSZSdq3Ok1F6mTyuMwTSRw0bbk9u+Hb74s7Q0RyqJWjFqFRmpsC70Qlpj2QzGR
0SCecFC4RMGhDqBqAdCO7phloHqvcFHFcJuzhWxtSHDyLlSaNldy9ucw3a5UdVnQ
op2wZ5J0uPDfys7h+1Ld5pTYazNQiZZPHPDf3YBbJ4+ru45pyIVsjfcZ/XGNejDA
ACXv1ZczHVgTagzYE+c6
=+k3D
-----END PGP SIGNATURE-----
