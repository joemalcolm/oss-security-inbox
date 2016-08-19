X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1552" "Friday" "19" "August" "2016" "10:14:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160819141419.659526C1CE1@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request: Qemu: net: vmxnet: integer overflow in packet initialisation" nil nil nil "8" "2016081914:14:19" "[oss-security] Re: CVE Request: Qemu: net: vmxnet: integer overflow in packet initialisation" (number mark "U       cve-assign@m Aug 19   37/1552  " thread-indent "\"[oss-security] Re: CVE Request: Qemu: net: vmxnet: integer overflow in packet initialisation\"\n") "<alpine.LFD.2.20.1608191655520.5616@wniryva>" ("<alpine.LFD.2.20.1608191655520.5616@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25604 invoked by uid 550); 19 Aug 2016 14:14:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24562 invoked from network); 19 Aug 2016 14:14:30 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1608191655520.5616@wniryva>
Message-Id: <20160819141419.659526C1CE1@smtpvmsrv1.mitre.org>
Date: Fri, 19 Aug 2016 10:14:19 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Qemu: net: vmxnet: integer overflow in packet initialisation

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VMWARE VMXNET3 NIC device support, with
> network abstraction layer is vulnerable to an integer overflow issue. It could
> occur while initialisation of a new packets in the device.
> 
> A privileged user inside guest could use this flaw to crash the Qemu instance
> resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg03176.html
> http://git.qemu.org/?p=qemu.git;a=commit;h=47882fa4975bf0b58dd74474329fdd7154e8f04c

Use CVE-2016-6888.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtxPMAAoJEHb/MwWLVhi2qbAQALDW9gWAfIs1puoNmVxiPEJa
gEP2H+cvJ7x28K4IY1o6F2AFK+W0rLFrnemsD3UhD48Nd0SqsRkZu9zkdlnO/i/l
bbQ3N4h1Cnim+6EW5W59mTVCN+mKyC+UOFDXCqB+YYd2YcBJ1V0oLkxKF7sMWN91
fxchTWC+cK8I9UAoHVRIerCds9QA/K1BUGimhkBBuijZ2PCt4InPi8wMSSxyfGh5
Jy7V4tqNHZ2i+s6vR0CQtoIf6D4wUyHY2sombCx5yGiUz9bcPuYlRhQyGNaU2jbq
QKcA5Wqvby5Gf4z4BsfrS2AbIjhEiy15oE0YNEuLjUaTHJlZ3vbpziio3YOyX7qZ
0aj8xKcKlVJ9AIJytwSMkmoCiv0J9gMgDoTRxxtgSnVzvLMuZXoBavsiD5+8oDZU
j2NEBioYRz+EOYit6eUhh3GRgKY1gIMVHAsWeH6+t8VXEaioQiL2gQEK5+bwitLi
W1417UWUfEI0c7XMvLdVVLWtFPPyF5JfWj/c5irpc5SZYwcpyKQ7xJS+kVFSHvlC
1j/BNWhZhsR4gBB/Etw/SwBSia7Y5zJoHlZuFeUUxAV5ijvS4sGfFWEO4QBRE37m
97XWGYUA0wl3j2BqneI66hQzBt9E3yvKQ/5VFoWwRXDdQMy2I5j887OD4sOFbp2h
l/dyBnupm8bwaOhskqL+
=n7LW
-----END PGP SIGNATURE-----
