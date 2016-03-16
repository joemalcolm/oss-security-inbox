X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1274" "Wednesday" "16" "March" "2016" "15:45:04" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160316194504.51EDC52E00D@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: CVE request - OpenJPEG : Heap Corruption in opj_free function" nil nil nil "3" "2016031619:45:04" "[oss-security] Re: CVE request - OpenJPEG : Heap Corruption in opj_free function" (number mark "U       cve-assign@m Mar 16   35/1274  " thread-indent "\"[oss-security] Re: CVE request - OpenJPEG : Heap Corruption in opj_free function\"\n") "<1F2D4DA31CA62740BFF46830A0E6A4F7064F6978@EXMBX-TJ002.tencent.com>" ("<1F2D4DA31CA62740BFF46830A0E6A4F7064F6978@EXMBX-TJ002.tencent.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10191 invoked by uid 550); 16 Mar 2016 19:45:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10172 invoked from network); 16 Mar 2016 19:45:15 -0000
From: cve-assign@mitre.org
To: winsonliu@tencent.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1F2D4DA31CA62740BFF46830A0E6A4F7064F6978@EXMBX-TJ002.tencent.com>
Message-Id: <20160316194504.51EDC52E00D@smtpvbsrv1.mitre.org>
Date: Wed, 16 Mar 2016 15:45:04 -0400 (EDT)
Subject: [oss-security] Re: CVE request - OpenJPEG : Heap Corruption in opj_free function

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A specially crafted JPEG2000 image file can force Heap Corruption

> opj_decompress -o image.pgm -i heap_corruption.jp2

> double free or corruption (!prev)

> Program received signal SIGABRT, Aborted.

Use CVE-2016-3182.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW6bbKAAoJEL54rhJi8gl5cT0P/1zG9ClKvDPqrs3koMEs3sHB
d6DE0+J17YePaQQEKef5n+i1vuGtgxTg9FceCbK282Wbqh4Grrm0J/5fCtowO/VT
tvibyIcAFfoDIfWFKDNgl/Qcg5aadifGXnae9vR0gl/Zq64GjwW8TsJ7vfaehXDX
X75wcxVzEWblhIXM8hkN7uC2gr4y5BV1L0TNzxpqsgqhwZIC9cOgjJYwhDsIjYgf
3uFex3fnjaQIoCfOkaRVPCT5/bSKyEzVVGLUcXHlKqV+7YNLy89Gx+Fa6EV6s6Yp
aIB9nQw9pryJeQhgMYXA0ZOytPnzoB1imRyl0yxgYV/Y1AX5Iqkp6WJDhHnwQ7Iq
GOB7/HaHxBxz56foASSrqdO0AhyqSwaSnXdzFwPkrz+tD0coeakgTY5OqHYfyCOz
61+2x2wdZrQeaWB3DtEX7LaDdYrg0MkP5itZOaCjIS2yTjOlR2g2WThPVY6rYi+h
z1ET+0XJKiXpi1c3EeC2zbtbA83mxbSOM3ByZmcd9Itix6k6sHRgW8BP5o52VcjQ
B+or7PbrqSvcbykd5KGQ73OkOqF1CF8QGXLumw/0jJJQHjH9dypnvAOLdLmXdQWJ
vO3wGHYck2MV0JHHbwPt+3WMk3+4ARTB6+VASFL7mZcr+dQkNTkCA/32n/k2hDr/
nKUX80QMch2y3XOLq3nB
=t6zO
-----END PGP SIGNATURE-----
