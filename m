X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1214" "Sunday" "29" "January" "2017" "07:08:58" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<a01c4fba9f0e467688e24a4738d21f6f@imshyb01.MITRE.ORG>" "32" "[oss-security] Re: SSRF issue in the svgsalamander library" nil nil nil "1" "2017012912:08:58" "[oss-security] Re: SSRF issue in the svgsalamander library" (number mark "U       cve-assign@m Jan 29   32/1214  " thread-indent "\"[oss-security] Re: SSRF issue in the svgsalamander library\"\n") "<60bcff1f-fa22-502f-8b1e-95a662a52f0d@yandex.ru>" ("<60bcff1f-fa22-502f-8b1e-95a662a52f0d@yandex.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32490 invoked by uid 550); 29 Jan 2017 12:09:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32443 invoked from network); 29 Jan 2017 12:09:10 -0000
From: <cve-assign@mitre.org>
To: <luc.lynx@yandex.ru>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <60bcff1f-fa22-502f-8b1e-95a662a52f0d@yandex.ru>
Message-ID: <a01c4fba9f0e467688e24a4738d21f6f@imshyb01.MITRE.ORG>
Date: Sun, 29 Jan 2017 07:08:58 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: SSRF issue in the svgsalamander library

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/blackears/svgSalamander/issues/11
> 
> <svg ...
> <image xlink:href="https://host-in-the-trusted-network.com/test.jpg" ...

Use CVE-2017-5617.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYjdlWAAoJEHb/MwWLVhi2lBAP/AmEC5U0G/8Cy1a6By1nTYMC
wdzp7WTuV3rAoSoK7+xkaucNG8zw/clt35a4ngYhN8DQ4IzGRyg078c/UaLt8r/S
flc5I7rR+x9Mdje2M6Z/G8mIh8vnyhFzIIA9s3QFjUu3x5jNSynnLoPfKg/AcJaX
7ZEdeG+30o/6qHQcbCLN/cA4UaShsxwcleuyfe6/O/aSOHPyvEf2arv+N5VmFKyZ
V0MHek+5tqJN+U+mwIk7dj27Vn4kpa1874FwH41+pmE9cfM4oxnLngVlhNUgacgh
oNJY6nGQwp4pudTUfu+i3xRBROYqqhGT6a+e/d/GeTUBqKn36WyFLIZQS4Sltsc0
85TeQgCd2MvkdMGbD7yXV1qu+KssLRBBRmyje3XboF492hzUlFkWy222ZFFKTyrH
nF01Xr9PrzfZh9MYP0ajxJcvdUZq6YmVuso+Y4tiOvuqckJTBDbuMuvM6uW7yl6Q
5nP+ab8tq4EPGjWSy42apEz/h6aQLYXhKlCsdS20RIDbr8XOODPIfcqFC719aG3P
+2TatG980NtI7zYngUYbMy1hNiC5uo9Qx4oRsS1Gp8Z8MxzAgqQsrjbG1vKRzYwn
VtGZrQKV15TyeFPnZJFMQFYnJ1gOW2JjRbe3NXCxpAXYHJMNJvXOohG1onbsNo2C
tmyxTVXIiWa3ptHBeaI6
=UYBx
-----END PGP SIGNATURE-----
