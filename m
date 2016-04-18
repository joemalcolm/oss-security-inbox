X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1890" "Monday" "18" "April" "2016" "11:45:05" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160418154505.3B1773320BD@smtpvbsrv1.mitre.org>" "45" "[oss-security] Re: Qemu: usb: Infinite loop vulnerability in usb_ehci using siTD process" nil nil nil "4" "2016041815:45:05" "[oss-security] Re: Qemu: usb: Infinite loop vulnerability in usb_ehci using siTD process" (number mark "U       cve-assign@m Apr 18   45/1890  " thread-indent "\"[oss-security] Re: Qemu: usb: Infinite loop vulnerability in usb_ehci using siTD process\"\n") "<alpine.LFD.2.20.1604181740160.24870@wniryva>" ("<alpine.LFD.2.20.1604181740160.24870@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17624 invoked by uid 550); 18 Apr 2016 15:45:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17599 invoked from network); 18 Apr 2016 15:45:16 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, dushaobo@360.cn
In-Reply-To: <alpine.LFD.2.20.1604181740160.24870@wniryva>
Message-Id: <20160418154505.3B1773320BD@smtpvbsrv1.mitre.org>
Date: Mon, 18 Apr 2016 11:45:05 -0400 (EDT)
Subject: [oss-security] Re: Qemu: usb: Infinite loop vulnerability in usb_ehci using siTD process

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the USB EHCI emulation support is vulnerable to an
> infinite loop issue. It occurs during communication between host controller
> interface(EHCI) and a respective device driver. These two communicate via a
> split isochronous transfer descriptor list(siTD) and an infinite loop unfolds
> if there is a closed loop in this list.
> 
> A privileged user inside guest could use this flaw to consume excessive CPU
> cycles & resources on the host.
> 
> This issue is similar to CVE-2015-8558, but using siTD instead of iTD.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1325129
> https://lists.gnu.org/archive/html/qemu-devel/2016-04/msg02691.html

Use CVE-2016-4037.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/usb/hcd-ehci.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXFQCaAAoJEHb/MwWLVhi2nh0P/iCA8MRdrSfpTjtl3f3Y33KQ
dS2Kl9K4SeLoSTlo2AsO2+SfW72MW8fvKqOocfsOjIyGfh4rTvU+SxVMM2j4VnmL
/JQtfsrbyuHXjFrnwUdrd8OjMVsjbJVJkjE1kk+DZrI9xaQZjA0VlAvypYJi05Sd
uu1k5rN/jjFFvPx7ZgfVDVra+OgqGmrdxgpWpdcwdA+TTXXn9yPwTZBkFbDYB+cn
v4jlQPnd2aofX6TK0BCl1y3QGHMMwTJfjy5PGicmTFd1a3zmGbV64dnRKvyqZrr3
HqXrXAwVMonStMvTjCi4L4QegP0t/Z86b9MbVCpt0Uk7dpwu/cAl3OoPxFB5hogY
q0Na34hkDSbtWMmcCUKCJqatnRsC7C30FwzXVfA7+hWWs05mFHWVzgt5qqaIigr0
KelHweWIwPUONmlSDTjY9+bqZhvkmtSqjradkKcEJ79llf64Ztl9GR9vV5fg8HXy
rnxxVufTMXNAUeygbbul9zGv1bmUJiGGUAAxZVpjJZxKgr7ASSG9P0QOQ+BKWjAg
j/uy5cTYVoso+9hsq40DNvDUxSYGm1S/FWuLzSxYveT00PyoMEQZMsTw8TpNY4ua
/qBrIIVgUccZY9MSWHGB/0gGM1Fxz+LLsOEEX1LhRQk76z7u2gPSthoEh7AzMTYY
cCsXHG7ryKLkktIUUu6i
=NDYf
-----END PGP SIGNATURE-----
