X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1703" "Tuesday" "23" "February" "2016" "11:42:42" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160223164242.E296172E035@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: CVE request Qemu: usb: integer overflow in remote NDIS control message handling" "^Cc:" nil nil "2" "2016022316:42:42" "[oss-security] Re: CVE request Qemu: usb: integer overflow in remote NDIS control message handling" (number mark "        cve-assign@m Feb 23   39/1703  " thread-indent "\"[oss-security] Re: CVE request Qemu: usb: integer overflow in remote NDIS control message handling\"\n") "<alpine.LFD.2.20.1602222116400.26144@wniryva>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11847 invoked by uid 550); 23 Feb 2016 16:42:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11789 invoked from network); 23 Feb 2016 16:42:55 -0000
In-Reply-To: <alpine.LFD.2.20.1602222116400.26144@wniryva>
Message-Id: <20160223164242.E296172E035@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, luodalongde@gmail.com
Date: Tue, 23 Feb 2016 11:42:42 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Qemu: usb: integer overflow in remote NDIS control message handling
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the USB Net device emulation support is vulnerable to
> an integer overflow issue. It could occur while processing remote NDIS control
> message packets. As the incoming informationBufferOffset & Length combination
> could cross the integer range.
> 
> A privileged user inside guest could use this flaw to leak host memory bytes
> to guest or crash the Qemu process instance resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-02/msg03658.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1303120
> http://git.qemu.org/?p=qemu.git;a=commit;h=fe3c546c5ff2a6210f9a4d8561cc64051ca8603e

Use CVE-2016-2538.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWzIuYAAoJEL54rhJi8gl5DgIP/0fv8AMSd2UpPw15iW5ZHpMW
Zf3Jhk66jJthy3CWUcZmdnjX9JWCOcVsbSbRbuGcVnuh4neNV1hQrWJk5VO/IuSl
fLD6OiiMk/3vgjfJwjkDLEXgFZdobTh/kM5pGKeNz24g/9erPImMyQrvx6jDIMkH
4+k7qm/fQrOaC7jYgNkF3ftulD7cTyDe1rJkuCGnxG0I0kOLzxsqWUEoCYZn3GJC
HBgv+mT0O+Z1Q6YkBV4a75mTnq4/sj+bpz+KCqX2cNXnddn4KvNPDufb75FVuBEa
EiQjnBpp1O2LukBs4Z39d9+EFYIlUQgrtjeN2m1jeWZmtGBpwa7N51NGUp1ybIKQ
6wQ+AlB3HIAMKXXMXK94jw6zj+KQwioT7PR6D0hKMY/8VbVvm8Q4Wwx7da9jzP/l
rjJzBQUw6BZf67z/0HAS0R/150Kw6KTzH4k5a2Qf5aY0V4KUAEEKCZisfEEiCZ/4
LwAMcoZmu/8SMGdVPZPsZ+K2BUEdWF8j5o2y9Ki9I8kTEGMffE81uj88TZte9R/j
VrQQ4Rtg+A2NQHcpg1cf37vEKP+uEFWnRH42LKkffsrfK9ULsPe+4hc93f6M9Ggo
ja8lzqaio5iMPcU6AHY7CsW3TR66P73809RdjiIqOh5Izg19qdZxvk6OvYqDZ3Bq
e4YbRFlNvht23xUA1jnD
=at9D
-----END PGP SIGNATURE-----
