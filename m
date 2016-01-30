X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1794" "Friday" "29" "January" "2016" "20:15:01" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160130011501.F2C0B3AE00B@smtpvbsrv1.mitre.org>" "46" "[oss-security] Re: CVE request Qemu: usb: ehci null pointer dereference in ehci_caps_write" nil nil nil "1" "2016013001:15:01" "[oss-security] Re: CVE request Qemu: usb: ehci null pointer dereference in ehci_caps_write" (number mark "U       cve-assign@m Jan 29   46/1794  " thread-indent "\"[oss-security] Re: CVE request Qemu: usb: ehci null pointer dereference in ehci_caps_write\"\n") "<alpine.LFD.2.20.1601292141150.18369@wniryva>" ("<alpine.LFD.2.20.1601292141150.18369@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23763 invoked by uid 550); 30 Jan 2016 01:15:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23742 invoked from network); 30 Jan 2016 01:15:13 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, zuozhi.fzz@alibaba-inc.com
In-Reply-To: <alpine.LFD.2.20.1601292141150.18369@wniryva>
Message-Id: <20160130011501.F2C0B3AE00B@smtpvbsrv1.mitre.org>
Date: Fri, 29 Jan 2016 20:15:01 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: usb: ehci null pointer dereference in ehci_caps_write

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the USB EHCI emulation support is vulnerable to a
> null pointer dereference flaw. It could occur when an application attempts to
> write to EHCI capabilities registers.
> 
> A privileged user inside quest could use this flaw to crash the Qemu process
> instance resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg05899.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1301643

>> usb: ehci: add capability mmio write function

>> its mmio '.write' function was missing, which lead to a null
>> pointer dereference issue

Use CVE-2016-2198.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/usb/hcd-ehci.c but
that may be an expected place for a later update.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWrA0IAAoJEL54rhJi8gl58PcP/2F+tp54ZD2CLMjKWW4D9W5G
YoICQDA5qfy7VkJDEOwOnZ4clI+F2KFaUh34p0BQ2IVNHsvc+wMMofOfO9enlkIY
s7hKhWNvBeaSR4UPSej14hxtY32uqoD2jEHBo+XCQ8DLH1CFJcMvC6sqEhuOGS0I
1Ayl0xKBQTnl+5lFR2ayNMRbDac7lCvgVQx1jmptuydpuJW6h8CKzVt6hUyvZcL0
qPwA7Q/bqkz4KFFzFb1JvW81fHZ95pBxbfgNn+RNey+BAEm46hLtBZOjOf70qgto
iRGWEuAEyAcHdAE9HwvKHFXNaNVACNftvoEnzeR5krvxQke2JujtQWU8gZRQ/DYP
vzdhAWEmmXl1d708zywYasVHRQka62H1ou7RhcIvEKw542gUTvoTUL0wefnHKb6X
2fTzt3oQeE3OKqNYCXvcc6LxYqwCz9efcf4DX+e7VW2CbbDSvWghRgPwhZIj9+rr
FEMQGtnN/NY7FnFBOlkUTRspk6sIsn3MeILU2hsNBuxzGs0vczM1fbYsdSEBR+2N
KUlz5fMtC3bdl0/2xnb/ptdLxGEclbjWv8xnyT/McEFevIm2EqPi/iRz3YWgsJf0
O31vnHuf4WZMqT+thvERuzm6gNrR1IvL6KxQvWDnTRxes2HQk2Vs2wmKv5ccIFBV
Ew8JiuDju097TPIRuhuT
=EwFk
-----END PGP SIGNATURE-----
