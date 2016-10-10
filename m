X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1602" "Monday" "10" "October" "2016" "13:50:12" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161010175012.4CD3AB2E051@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE request Qemu: usb: xHCI: infinite loop vulnerability in xhci_ring_fetch" nil nil nil "10" "2016101017:50:12" "[oss-security] Re: CVE request Qemu: usb: xHCI: infinite loop vulnerability in xhci_ring_fetch" (number mark "U       cve-assign@m Oct 10   40/1602  " thread-indent "\"[oss-security] Re: CVE request Qemu: usb: xHCI: infinite loop vulnerability in xhci_ring_fetch\"\n") "<alpine.LFD.2.20.1610101456570.25689@wniryva>" ("<alpine.LFD.2.20.1610101456570.25689@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22090 invoked by uid 550); 10 Oct 2016 17:50:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22072 invoked from network); 10 Oct 2016 17:50:24 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1610101456570.25689@wniryva>
Message-Id: <20161010175012.4CD3AB2E051@smtpvbsrv1.mitre.org>
Date: Mon, 10 Oct 2016 13:50:12 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: usb: xHCI: infinite loop vulnerability in xhci_ring_fetch

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the USB xHCI controller emulation support is
> vulnerable to an infinite loop issue. It could occur while processing USB
> command ring in 'xhci_ring_fetch'.
> 
> A privileged user/process inside guest could use this issue to crash the Qemu
> process on the host leading to DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg01265.html

Use CVE-2016-8576.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/usb/hcd-xhci.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX+9QuAAoJEHb/MwWLVhi227sP/j2SzIXfALbHnYVcFBjeESHT
cpjqznKkdukL1ETxQrO7VTi+BHkIbWB49Ey0PdvxXCR3cg/oRTE6WozOIefxNEtP
O6rinOZTu8Fwubv3h9VDEi7g/qRPkkvaxKDUjyUNLerz5fvBMPubAPlxjgDOJeuu
cplrkPTehzHIarXH0GViJ1V0I7f1As1T+PrQvfjP55ZOawefWwj1fJRDjzAuddhZ
ggO0hSxk2pz+YjC2NAYcKCQ2uPUNVkJa7CqqwQBvQUMCdmESGUSYrWAnpBd3V5rX
rRfvF7w7vHWmgU4XoKxJDHm6nr+l6HECS1uEi5+4N/NDLUhsE6MRKH9/zdJMsMCe
jkAydq0lnOTBrB/lyVVBeTbAz5jtZNvIQWPwGVHH5bZjiCb8jJbn8vc8+E5OWSFx
UA04ab3p2GjiY4QQIz8jNSlF/JAQzorkmRi3ZTR5jVeMr+Ca/OgkMRvurBI2LZFh
HM61RVhU3Ix/ed/24SXQ30yTscNbX1iampTRYZKjVPzgIM2x+sfe+O8AtgVYPwPn
iqnoHRp8sFYHalP0xcda9kQjmgUadcx7cCC6yzDF+6OKbA8vS2rmviJad12IpozE
IEcmXHVxenxSjop9unjmEEc2NlQ11ygHxuDEldrKUFibmtEDFQs9k0cJzFckH4Qq
qNTrXolM1XmhrzPru8jl
=WSUH
-----END PGP SIGNATURE-----
