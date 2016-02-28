X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1295" "Sunday" "28" "February" "2016" "09:44:34" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160228144434.560A96C05CF@smtpvmsrv1.mitre.org>" "33" "[oss-security] Re: CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl -- chroot" nil nil nil "2" "2016022814:44:34" "[oss-security] Re: CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl -- chroot" (number mark "U       cve-assign@m Feb 28   33/1295  " thread-indent "\"[oss-security] Re: CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl -- chroot\"\n") "<56D2E491.1000505@gmail.com>" ("<56D2E491.1000505@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31999 invoked by uid 550); 28 Feb 2016 14:44:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31976 invoked from network); 28 Feb 2016 14:44:46 -0000
From: cve-assign@mitre.org
To: patrakov@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <56D2E491.1000505@gmail.com>
Message-Id: <20160228144434.560A96C05CF@smtpvmsrv1.mitre.org>
Date: Sun, 28 Feb 2016 09:44:34 -0500 (EST)
Subject: [oss-security] Re: CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl -- chroot

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> When executing a program via "chroot --userspec=someuser:somegroup / /path/to/test" the
> nonpriv session can
> escape to the parent session by using the TIOCSTI ioctl to push
> characters into the
> terminal's input buffer

Use CVE-2016-2781.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW0wd3AAoJEL54rhJi8gl5cBYP/1WlCfCDNUNstoYutxRFNeWv
wifaesCbmqteWa0W1z50I+VMZW4mZ4LSIk3s2t0981iuQzWuzGY1CHFO1O9YCG4z
yBBtMBSLEp5Erdlga/e0gCStvH/TW7cXKNbWEd/nrQPYzmBKd+ZoVODHzH/01rSj
7wMbk48GAe1Kp2JM6FTh738gRfP7dsM+uuEbN5QO6k54dNM0K5zPEd0CJuwomGJO
ilOsuMoPjBIDhZ/3n6E+g3qIk/1ztJhoVi9E6Xm7+41+PqPSL4HMl1mLjLp/iG55
zORhghkOUGsHxqho8SBM/uKT/n4O4+6Ep/kr55gzInTi17FfAlzhmbLz4Nv9TAT3
XsN933yToX78F1gWgw4Xy/go7iK920rCfGHeP0GTGWLm9Zm3yqS4raQcl+qwJ4kE
P8fYjvyF7t3meeipCqwzgW+hSCX4z6QVuiIv+E752sB5r6D+VRKApvf8+qI6Okly
6v4+Gq6OCACPN1TulMWZ+0TzI1baiOZ70KJM9FjGSCjA9q21xUhpVcLRJvJk6NwM
ie0AC/SH8AVedX+ld0zVlSn5WCOM1+mFH7SV268pcpUgKwgkfNUMicdRR6UvBM8U
8F5wM6lQiKfyixoRCaWDD5ERdQRxqErPJB1o721tg0865LN2LZaieXWsKAE5R/v6
mxir1GW4UEKpLSCT1jd8
=ckDP
-----END PGP SIGNATURE-----
