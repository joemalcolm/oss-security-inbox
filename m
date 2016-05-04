X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1452" "Wednesday" "4" "May" "2016" "01:28:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160504052840.69F508BC11E@smtpvmsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: information leak in devio of Linux kernel" nil nil nil "5" "2016050405:28:40" "[oss-security] Re: CVE Request: information leak in devio of Linux kernel" (number mark "U       cve-assign@m May  4   38/1452  " thread-indent "\"[oss-security] Re: CVE Request: information leak in devio of Linux kernel\"\n") "<CABEk9YwFJU6942BNgFfao4pU+zzT_5-CYPa0N_=aSVzoFmVHwQ@mail.gmail.com>" ("<CABEk9YwFJU6942BNgFfao4pU+zzT_5-CYPa0N_=aSVzoFmVHwQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12227 invoked by uid 550); 4 May 2016 05:28:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12209 invoked from network); 4 May 2016 05:28:52 -0000
From: cve-assign@mitre.org
To: kangjielu@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, taesoo@gatech.edu, csong84@gatech.edu, insu@gatech.edu
In-Reply-To: <CABEk9YwFJU6942BNgFfao4pU+zzT_5-CYPa0N_=aSVzoFmVHwQ@mail.gmail.com>
Message-Id: <20160504052840.69F508BC11E@smtpvmsrv1.mitre.org>
Date: Wed,  4 May 2016 01:28:40 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: information leak in devio of Linux kernel

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> In the USB module (drivers/usb/core/devio.c), The stack object "ci" has a
> total
> size of 8 bytes. Its last 3 bytes are padding bytes which are not
> initialized and
> leaked to userland
> 
> http://www.spinics.net/lists/linux-usb/msg140243.html
> 
> https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/log/drivers/usb/core/devio.c
> (not yet there; probably soon)

Use CVE-2016-4482.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXKYeVAAoJEHb/MwWLVhi2HVgP/1PZ63KIkqDmy/qRT0FjYG13
L5SvXGvwD/uo9GEf5Ml27JTEnJ3GAGno0Rvo8x44739X4KJijhoJYiqhxg2gmakM
aXtuCjLVry5RBak+VZbclmKIIei+WNuPIhzBJ9PGIP0hxmMJtXgGxq41HZGJbQYj
RzrQlJcmu7TixXCpPwxPFP+APMQaiB7i8M4x+lNfBSDs42eeqBlJJdCP7OCk3Bw/
ROHI9+UaUko5tbvL/sFQoiA/53BKW2/iGT+X9belfRc93guZibKmlBxtgw3TKnKH
MTSGnHiPmkGGcQU8R3QEiBdFvUuPeJvlkSjP3sLW4oYm+MC+HcJX2u90uYzzb0xJ
EW/9jq4gt9X8UNRRGZEAaJTw/lSYocDWB7pF7DVEu1Gxuv7pQlUNtwvu3PAFRJfF
ulVqU8Cp9S/rOEoAIxSoaUbH8mHSVFwo9sASn1KIeMZzHkjZs2wvLu8MMW2g8R2j
Oj+lgNmGAqw4AUXY9GlqG0Z6CUMxZRWUoGyeLKceDK2dlQv390YgZOoeWvbONU1N
DC6qV9F/i+EYwWgS8LN1m6Kly0nPRsH0COPfZA8+APoVvtetBMMgDCG93sGbE12j
SEI/tu19i118D3Nq1kQWhXQh1xpsgKy+X9gMxWJAbHuzdYX5Jwn0wJqctEXjNVaz
Plv7PbXJ7DAoP8bNb/Ry
=3AUJ
-----END PGP SIGNATURE-----
