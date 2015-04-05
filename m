X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1573" "Sunday" "5" "April" "2015" "09:07:23" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150405090723.52d6c850@pc1.lan>" "49" "[oss-security] CVE request: XSS in WP Super Cache < 1.4.3" nil nil nil "4" "2015040507:07:23" "[oss-security] CVE request: XSS in WP Super Cache < 1.4.3" (number mark "        hanno@hboeck Apr  5   49/1573  " thread-indent "\"[oss-security] CVE request: XSS in WP Super Cache < 1.4.3\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30396 invoked by uid 550); 5 Apr 2015 07:07:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30376 invoked from network); 5 Apr 2015 07:07:20 -0000
Message-ID: <20150405090723.52d6c850@pc1.lan>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-17876-1428217629-0001-2"
Date: Sun, 5 Apr 2015 09:07:23 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: XSS in WP Super Cache < 1.4.3
To: cve-assign@mitre.org, oss-security@lists.openwall.com

--=_zucker.schokokeks.org-17876-1428217629-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

https://wordpress.org/plugins/wp-super-cache/changelog/

says this:

1.4.3
Security release fixing an XSS bug in the settings page. Props Marc
Montpas from Sucuri.

They don't seem to have a git repo or anything, so I can't link to a
commit. Still as this is a pretty popular plugin can I have a CVE?

cu,
--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-17876-1428217629-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVIN8rAAoJEKWIAHK7tR5CAocP/04oqXJpWz3pRU3mXwUl0Vca
ycvE3pNa71TKkoqkybma9Ot1P4wGDdDtq9kHUb1y3lsP6neIwdbstEc3zmBXD8os
oA5XeYMbqBxY9YnRwsY5vlSCRmvPZJ7w0fSLwwSr5gUnN7jmx3mNMGKBYkP4Uipr
w7kTujNM4VhL0n15mLlGmBtpUBR6T2rrNaHuisl1mNjiTc6QaulDW3gaPjKEJrqY
9eQBUeyknYFDzCCk+vYbM2W7StHNfqlllSz88FlyB49B89noPXKwCxgazrdFt1mY
m1bTDYLaXA9UV3ym2qNgWsLNBkN9PS7lKNspRZvjsxtQYDPUVpRvcSW58QA4i81i
+UXxw0kctEO2GLmWLHhRDzol4i3ZIv3F8bLrABvQ6kVq4GXMdazA72UdviY3Qc4L
O3giwZpJqG2JnOPJot/LG6bFFKICBrlG/CrWuM02ym2SeU7lrJtUud8rcew59Spt
0T7sq2oN6w7OquQeWRfyp3zVG2hn3vt/VBw7Ygxmfb+ldd8Romc9B8LPPSKzl+rz
bMD0tYKHPQzFKzAkiMXdfX+0Jysr5W2wMtzV4GlPgqaj4F4+jZ+hXpMdkiKFDx+c
N9JAtxcZFB9dH44vfC7998MyO9T4YgSRPeMEhW21/xf0ZMKuTfa4fa//RwyIR7Jn
VOmHhIkBnsPmAl1juRsD
=pCmQ
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-17876-1428217629-0001-2--
