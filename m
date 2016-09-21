X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1448" "Wednesday" "21" "September" "2016" "09:49:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160921134903.ED6E23AE00B@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: libav: NULL pointer dereference in ff_put_pixels8_xy2_mmx (rnd_template.c)" nil nil nil "9" "2016092113:49:03" "[oss-security] Re: libav: NULL pointer dereference in ff_put_pixels8_xy2_mmx (rnd_template.c)" (number mark "U       cve-assign@m Sep 21   38/1448  " thread-indent "\"[oss-security] Re: libav: NULL pointer dereference in ff_put_pixels8_xy2_mmx (rnd_template.c)\"\n") "<1623280.0e6yKCzhd8@willoughby>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5743 invoked by uid 550); 21 Sep 2016 13:49:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5710 invoked from network); 21 Sep 2016 13:49:16 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1623280.0e6yKCzhd8@willoughby>
Message-Id: <20160921134903.ED6E23AE00B@smtpvbsrv1.mitre.org>
Date: Wed, 21 Sep 2016 09:49:03 -0400 (EDT)
Subject: [oss-security] Re: libav: NULL pointer dereference in ff_put_pixels8_xy2_mmx (rnd_template.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/09/20/libav-null-pointer-dereference-in-ff_put_pixels8_xy2_mmx-rnd_template-c
> 
> A fuzzing with an mp3 file as input discovered a null pointer access in
> ff_put_pixels8_xy2_mmx.
> 
> Input #0, h263, from '70.crashes':
> 
> AddressSanitizer: SEGV on unknown address
> 
> ff_put_pixels8_xy2_mmx libav-11.7/libavcodec/x86/rnd_template.c:37:5

Use CVE-2016-7477.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX4o9eAAoJEHb/MwWLVhi2CuIP/jzcaY8iY1lPRtz5CJxLaohL
pHTRPAeU2XQOLZfZiQWFX/eUSMT/n7e+hCeqpOkCSsF11zw7sy+DNBFLcVPKYllx
76H/rEMi/MtBuWqRZlL1Qnd6v7zAA6pGWU7gQ4GkCuc9fhxc6RNHvG+YDcGDo/yq
kNb7IhJo0lpA5085OkpfVc1JPq5JTCXGt6u1bJrj6HcV9xwbzoE4WQcamcDAdlPA
xsUocCtcYwymWcZE4yybw64r4A+v9epsQ+ogJVwHmbdWYZIp7h9j8Po71O44Iu2h
20GZYnHC0XKF+IV0kevBbvzHAC61bSWfRXAnRpwlJFeyf2YBjxjXnBqoG+N8mOUJ
4VYm5JUvOp41sYaTSMlTwnZz9YnZRXKWPmk9EsuN0KGqo6b7sSqPEi/tz528Xx8Z
t1A4eObAW4Rdl0xFpgYyf4Av/njeDpBmXFKSMi12WxH0YdLdoFDNxzuydmc9Uvht
Hsy6sll58btw4TKGhu+6nJXTUUL9fo/0rQy45aWfEvIHqjROJujbKD5WCFfZ1TnO
siayvHWExhP/4STeJH2ieaK8ILvO+9KVyxAnmkq7D7r8pgLVpYLRA/lWxuO0z11c
99Ut3P6fPoZy879rIZYDepmClHnlMxu+vFKZMOKPTyeCe/L14/dTokjhSY4Tn0Le
oCjpCbIiqywaUOZu+8qZ
=FID6
-----END PGP SIGNATURE-----
