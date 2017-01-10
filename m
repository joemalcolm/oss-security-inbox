X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3157" "Tuesday" "10" "January" "2017" "11:31:37" "+0100" "Andreas Stieger" "astieger@suse.com" "<8c1cd983-c3ec-c821-0e11-b8dd6bed1387@suse.com>" "91" "[oss-security] CVE Request: two security fixes in libgit2 0.25.1, 0.24.6" "^Cc:" nil nil "1" "2017011010:31:37" "[oss-security] CVE Request: two security fixes in libgit2 0.25.1, 0.24.6" (number mark "        astieger@sus Jan 10   91/3157  " thread-indent "\"[oss-security] CVE Request: two security fixes in libgit2 0.25.1, 0.24.6\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7989 invoked by uid 550); 10 Jan 2017 10:32:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7968 invoked from network); 10 Jan 2017 10:32:05 -0000
Organization: SUSE Linux GmbH
Message-ID: <8c1cd983-c3ec-c821-0e11-b8dd6bed1387@suse.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="V5w0gkfbsRimurw8ONjs4hD7XTbhw6NDH"
Cc: cve-assign@mitre.org, cmn@dwim.me
Date: Tue, 10 Jan 2017 11:31:37 +0100
From: Andreas Stieger <astieger@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: two security fixes in libgit2 0.25.1, 0.24.6
To: oss-security@lists.openwall.com

--V5w0gkfbsRimurw8ONjs4hD7XTbhw6NDH
Content-Type: multipart/mixed; boundary="qTRIXUNabgkwJ6DCKPkF8cI32QeLCJKfP";
 protected-headers="v1"
From: Andreas Stieger <astieger@suse.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org, cmn@dwim.me
Message-ID: <8c1cd983-c3ec-c821-0e11-b8dd6bed1387@suse.com>
Subject: CVE Request: two security fixes in libgit2 0.25.1, 0.24.6

--qTRIXUNabgkwJ6DCKPkF8cI32QeLCJKfP
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

libgit2 released:

https://github.com/libgit2/libgit2/releases/tag/v0.25.1
https://github.com/libgit2/libgit2/releases/tag/v0.24.6

with the following two fixes:

[...] performs extra sanitization for some edge cases in the Git Smart
Protocol which can lead to attempting to parse outside of the buffer.

https://github.com/libgit2/libgit2/commit/66e3774d279672ee51c3b54545a79d20d=
1ada834
https://github.com/libgit2/libgit2/commit/2fdef641fd0dd2828bd948234ae86de75=
221a11a


[...] fix affects the certificate check callback. It provides a valid
parameter to indicate whether the native cryptographic library
considered the certificate to be correct. This parameter is always
1/true before this fix leading to a possible MITM.

This does not affect you if you do not use the custom certificate
callback or if you do not take this value into account. This does affect
you if you use pygit2 or git2go regardless of whether you specify a
certificate check callback.

https://github.com/libgit2/libgit2/commit/9a64e62f0f20c9cf9b2e1609f037060eb=
2d8eb22
https://github.com/libgit2/libgit2/commit/98d66240ecb7765e191da19b535c75c92=
ccc90fe
https://github.com/libgit2/libgit2/commit/3829ba2e710553893faf6336cc6b2f3fc=
17a293e
https://github.com/libgit2/libgit2/commit/2ac57aa89bde788173b54bd153430369d=
eec64c0


Could CVEs please be assigned?

Thanks,

Andreas

--=20

Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=C3=BCrnberg)



--qTRIXUNabgkwJ6DCKPkF8cI32QeLCJKfP--

--V5w0gkfbsRimurw8ONjs4hD7XTbhw6NDH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEELRFTXKGyY4WwZ7oiLNapVeFZRUYFAlh0uBAACgkQLNapVeFZ
RUZPfQ//cNc+nLc4ezw3okWqE2g7seoaOwYN2iXEJNVt9Cu/6lGKQOVdqDkHvC0M
zxnsKIZ5M0p8AYnYZx7xuodUGxSbBRkPrJOXgz4dFpIYDuDY4Jf6QwXPm08CL2IM
mIuZmlK6ug5b36g6jAsiWF8Qk6v8fmn0W+NZnT1Yhxi1jffXj+iQEW2Cb9T6SXWv
mL1Q1LogXrOEX2SP0702m93olsKupD7ZViL6183YUgHoyIsDu6Mn3ZAvb2rHpiob
Jl3WTPph4J+i2YNX+tODaynDSO12mStDw2lZezcQBzES4QSwVJnyjv0Wqv+AszFf
nOgSbS3Z123GtXFlu6wiXCmPLOfUPqrntiZQeMIr+AiDVvOYRo08QUOJGc1/W0as
DxJ+Bx7kTpw9bL93nsacVlk+DQEICjpawPU6zFtG9eX7DdTkLP0TzwMO8xyIJlv0
KO9en9imUDpZoaO9DWldfJJH8CoP47WW3NO7CorOJ2yokLvTM4od394fCWcoTJhc
55fugvEUEfpkdrC4BOMBLAlj70+FFyrtxf+JAAu+hSW/e4GBawHFtBiJcnDDJ1hO
dtwA8alz5OIoWiC7yWF6197Bp/C3K8AXkd3Ikro52F2UBwBgvi3axi+Di8nSGzLR
cV5bmVoNiZrKU+QV+rml+La/OHgLW6nP0fv6Iy+BI1DVKiAMuWs=
=kNmY
-----END PGP SIGNATURE-----

--V5w0gkfbsRimurw8ONjs4hD7XTbhw6NDH--
