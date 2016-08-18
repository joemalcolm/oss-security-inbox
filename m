X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1649" "Wednesday" "17" "August" "2016" "23:33:56" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160818033356.CBAF3ABC95B@smtpvmsrv1.mitre.org>" "40" "[oss-security] Re: CVE request Qemu: buffer overflow in vmxnet_tx_pkt_parse_headers() in vmxnet3 device emulation" nil nil nil "8" "2016081803:33:56" "[oss-security] Re: CVE request Qemu: buffer overflow in vmxnet_tx_pkt_parse_headers() in vmxnet3 device emulation" (number mark "U       cve-assign@m Aug 17   40/1649  " thread-indent "\"[oss-security] Re: CVE request Qemu: buffer overflow in vmxnet_tx_pkt_parse_headers() in vmxnet3 device emulation\"\n") "<alpine.LFD.2.20.1608120103530.6399@wniryva>" ("<alpine.LFD.2.20.1608120103530.6399@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27943 invoked by uid 550); 18 Aug 2016 03:34:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27925 invoked from network); 18 Aug 2016 03:34:08 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1608120103530.6399@wniryva>
Message-Id: <20160818033356.CBAF3ABC95B@smtpvmsrv1.mitre.org>
Date: Wed, 17 Aug 2016 23:33:56 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: buffer overflow in vmxnet_tx_pkt_parse_headers() in vmxnet3 device emulation

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VMWARE VMXNET3 NIC device support is
> vulnerable to an OOB read access. In that it does not check if packet headers
> does not check for IP header length. It could lead to a OOB access when
> reading further packet data.
> 
> https://lists.gnu.org/archive/html/qemu-stable/2016-08/msg00077.html

>> I should have had marked it as "PATCH for v2.6.0"

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/vmxnet_tx_pkt.c;hb=stable-2.6
but that may be an expected place for a later update.

Use CVE-2016-6835 for this buffer over-read.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtSYeAAoJEHb/MwWLVhi2nswP/Aw5kTs5PCe1z0fnBCxhLtGI
38WLRfiQ3DlWCAun8FQDCKojRo9jOyLv7CCVzPSYR1i8AQ9ZQrtVy85i3i/up+rT
nnvCqMqKK41W0YNUimyNItwbCVOKgmXwYVGSNn06twQsPuFY7xRlscxyO0NHw7zF
3gX2aFNwmUZqGrndazp/afF9y4H1cebkcpqPtKWyv/VEfc/oyiC4MXA9NY/OuFQG
oAce36Q9rz3RBtIn17RboZti0ADTPYLsGbeswKzNFY41CRP2hR2qDRUV5sDdXBqz
EfcNbujQaJqsZ+OeMzAjKHwolyryjgme6mQHQwEiWithXjHFZ85DMuVTx/+lJNYr
7xQoaQbDFqfHcRvxTZtbusTRanCCTMcz8dBFPpWL7XmDOS3ZHo9aOsfQM3+xXjXA
INc6UO1qPtJPNlFCL0BA5NBKA2FL60OM4bP62zIDYieok6en6eijAjuk+muJVv2H
ypDB1EEDhBqv3cPl2+Jo/4rwDGtrB5dOO5Troo3vxgCwrDGCloe1mkSL8TU3LP6W
Egst/gUWMadzJBXz2M4rGEZCEzjdo1TB8M8c+kKWVhTZ+7xUbkX3zR8RZDcEsk7E
zCjH/Dg/cM0UidQOAOu7ikJSlFlBUYDemsTR4a+3K+4UxKaec6LBnGJGeZZqFwv+
Fs0fF7b7B7/9HhPKPunW
=/MUT
-----END PGP SIGNATURE-----
