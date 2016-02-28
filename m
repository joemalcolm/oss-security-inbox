X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1921" "Sunday" "28" "February" "2016" "10:56:14" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160228155614.9D9FC6C05FA@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way" "^Cc:" nil nil "2" "2016022815:56:14" "[oss-security] Re: AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way" (number mark "        cve-assign@m Feb 28   44/1921  " thread-indent "\"[oss-security] Re: AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way\"\n") "<CAP145pjL_=W0C_3NvHxkJ2girfx3wS-7i-epRxwcmDmd7J3E1Q@mail.gmail.com>" ("<CAP145pjL_=W0C_3NvHxkJ2girfx3wS-7i-epRxwcmDmd7J3E1Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5290 invoked by uid 550); 28 Feb 2016 15:56:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5202 invoked from network); 28 Feb 2016 15:56:26 -0000
In-Reply-To: <CAP145pjL_=W0C_3NvHxkJ2girfx3wS-7i-epRxwcmDmd7J3E1Q@mail.gmail.com>
Message-Id: <20160228155614.9D9FC6C05FA@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Sun, 28 Feb 2016 10:56:14 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> ... leads to CPU execution flow
> of the host kernel (the one running on bare metal) to be changed.

[ see also
https://www.reddit.com/r/linux/comments/47s8a8/new_amd_microcode_vulnerability_from_unprivileged/ ]

We don't think we can send any related AMD CVE ID or IDs here because
this microcode isn't an open-source product:

  https://git.kernel.org/cgit/linux/kernel/git/firmware/linux-firmware.git/tree/LICENSE.amd-ucode
  "You may not reverse engineer, decompile, or disassemble this Software
  or any portion thereof."

CVE IDs for AMD products are available from cve-assign@mitre.org (we
understand that the 0x06000832 information is directly relevant to use
of open-source products; also, it's at least conceivable that someone
will announce a security update to an open-source product with a
workaround for the behavior, or for the existence, of 0x06000832).

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW0xgeAAoJEL54rhJi8gl5KEwP/iy02HVY+3QifTREEpq93md0
9hN9WwBItTU48PH0bYOHe7POBC0K5hmxhC9CE5iA53h+d9OiLnXxfQRjQUnrmylx
78ZvZ0r7kmUoB6KcOgYXKXeEWleIpD3ca9eUAhEuIZjYbE7fxL3OJXW+cQ4IYL7P
hGdpOajzckWRemiN3ELjQc2Lnitj6ef8suHbrHnQLaMHPjufaowJ/mPa3gtZgtC8
0gAw2MGiyxHQ4GFDOWNmBICbTwiJWwRtMOJdSHX63zn518038MeLal/9UcQlcxPC
Fi1oVTteJC2oh7iYhTjRXy8hYcGC7Wdefyg0rqQ4WgCkysYvOeYbpiREmG71e0mG
9QsDCSKvnyolDBC+9aSsFFtC022kRzmdRCGBokPAaiXduXRYxcDJPUd07YBtIw5y
5zfe/Z7wmKDiM+tDmVsUFqbW0Q0jccbBM/WsHJfAV2feYIDMC/gO1moPASeKbLrm
ZYD+jc6k2CDq7NQZNTsCzOhUAM1rr2BQmuG1ZOxwkP5Tnv7Iku1X559vIdVZ3n7c
ZxegRoUXMmCJalpzRCrRYtwL0ipvNvPAbwZ04hxiqQhlENLyBL/bAWRK90wYjlsS
pUBjlSxsrJ21hm9CnoPonhkdMNCv+aFS5LTY+0WQ6uRXbjrRJ3cluS0ZGJ86HR22
ZzYJ6UNbLzaxIdLe9qGe
=Logq
-----END PGP SIGNATURE-----
