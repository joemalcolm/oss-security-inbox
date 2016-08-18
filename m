X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1640" "Wednesday" "17" "August" "2016" "23:35:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160818033529.60118ABC95B@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE Request Qemu: Information leak in vmxnet3_complete_packet" nil nil nil "8" "2016081803:35:29" "[oss-security] Re: CVE Request Qemu: Information leak in vmxnet3_complete_packet" (number mark "U       cve-assign@m Aug 17   41/1640  " thread-indent "\"[oss-security] Re: CVE Request Qemu: Information leak in vmxnet3_complete_packet\"\n") "<alpine.LFD.2.20.1608120047520.6399@wniryva>" ("<alpine.LFD.2.20.1608120047520.6399@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5558 invoked by uid 550); 18 Aug 2016 03:35:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5540 invoked from network); 18 Aug 2016 03:35:40 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1608120047520.6399@wniryva>
Message-Id: <20160818033529.60118ABC95B@smtpvmsrv1.mitre.org>
Date: Wed, 17 Aug 2016 23:35:29 -0400 (EDT)
Subject: [oss-security] Re: CVE Request Qemu: Information leak in vmxnet3_complete_packet

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VMWARE VMXNET3 NIC device support is
> vulnerable to an information leakage issue. It could occur while processing
> transmit(tx) queue, when it reaches the end of packet.
> 
> A privileged user inside guest could use this leak host memory bytes to a
> guest.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg02108.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1366369

Use CVE-2016-6836.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/vmxnet3.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtSaEAAoJEHb/MwWLVhi2NPQP/jEAHJPU608e4Z/Oq5WhrH8e
DMg3XVb8R8PvNlJ5IFAB6RLIYHDxZWJrA13XUV+bSz2rYV+8wSRGYsSLqhztOU8G
NXuEO1a1bxeQI/Y/6IuZyuIJph5nvKJKx49pWZEMtLfTTk5NDvHO13GQxoHM9st8
0RhDvPQ91fHhvDIIzFJOdvpn7LwEKCebtEb97mMmUza2d7QQIfgM2nSPAZwmbbHu
kySYOO+Y0JkotjQCNRLg4ylBhr2u3P7V524HYIPvJy5Us4neNYk4876yHknOhmET
JH9lVBVT5gb8vRNu6N6yw4cLia4CJGoZUgn7GFiKldIEZ8dDVyjdJ0VpTzCyIxbb
o3w2iZbxUT34ZrUtZ7HNeX0eLwlDD/WH4SgQYl4VYr0wHffpE3w2luEBQh81xOLy
lMZmSOpvYoL1OOS9+I7jsNBd6QzOzBMRQxLSyAVktFhgZCzp1Y+PDywFmdDXJJ/I
qZ1e2kAWm+FfmOQ/ZKaqI0PEPpSKrONWJh/nEVy+HBTmCuOkGCDJMus3AKxEb5DP
EYWvcZq7wWysQ6dcv/XpBt4sueKTUGhJOSK4EUP7ruUCH05O3sNduUU7eZKmMSJQ
ZaC3drLG9yPRHQGHCwf+pL0RY05I3n34StIPRmVP4urOgUHdAOJ3yqQPOgrMwC4S
p7oeXAQw0bpbfTAVXsgl
=gIck
-----END PGP SIGNATURE-----
