X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1596" "Thursday" "28" "July" "2016" "12:20:22" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160728162022.A49C58BC3D3@smtpvmsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request Qemu: virtio: infinite loop in virtqueue_pop" "^Cc:" nil nil "7" "2016072816:20:22" "[oss-security] Re: CVE Request Qemu: virtio: infinite loop in virtqueue_pop" (number mark "        cve-assign@m Jul 28   38/1596  " thread-indent "\"[oss-security] Re: CVE Request Qemu: virtio: infinite loop in virtqueue_pop\"\n") "<alpine.LFD.2.20.1607281725190.28945@wniryva>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19853 invoked by uid 550); 28 Jul 2016 16:20:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19835 invoked from network); 28 Jul 2016 16:20:35 -0000
In-Reply-To: <alpine.LFD.2.20.1607281725190.28945@wniryva>
Message-Id: <20160728162022.A49C58BC3D3@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
Date: Thu, 28 Jul 2016 12:20:22 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request Qemu: virtio: infinite loop in virtqueue_pop
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick emulator(Qemu) built with the virtio framework is vulnerable to an
> infinite loop issue. It could occur if the guest was to set the I/O descriptor
> buffer length to be zero. A privileged user inside guest could use this flaw
> to potentially crash the Qemu instance on the host resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-07/msg06246.html

Use CVE-2016-6490.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/virtio/virtio.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXmjADAAoJEHb/MwWLVhi2KZ8P/jkyKrIQY2ryaoptTvhMn41U
D1TgFaTnQwZAfCLeF4r45Uy1h2G4TmsE+XHnk2gOaqFkBFiYRKBEOKqv7pEszohC
MvKyQC2WPIuQnM8Y/KIy4Xgpw/UVjQfnWtg2dW6Hb4kg/H7WL602vIlE0yxa2BGz
ZpBRQViB/qOn9MI4+5lHdc5jSGlVBLJUEK7Ckm83AejMwF7VVeFfnxM/jGreBH1/
SejweRYV2c9nKsYH41wBvTD482Ee+hLY5cC2CDMKsG/NB015KGY66yzh41vUDLXI
Rc3nxjD9PSxaPvzXyl8ha6cnYZy4H5qWmEUhC96hoPPEOgtiatE8Ekcf8q7reUVM
MI9LXjSaZy7MZOTuS75Ha2lKPqPaBHuCpe/SxpS3vD4BjG7ZpZrTthyZYO1eJz49
f7FxXVb1TLc0GjkWLlWh31EuABldZzwBFXqOIfyYrCsoPngfSgViq1i2GjKgz+XB
5D8mz8jXTcklV2P7EE8nj72aT6YHbwi089oR5oNQzWDAsz86oTYqXghSHHs6MRRx
NweiubIUxDvDVYuGtHlJbVLAUIKeV5O1zIfqAs4YxkC0ADqaz29KWEL5+IBd84nJ
Gg4NJYg1VhztrGCwUmMeqflT1OaduIZkSGgGnzv24oYpoSxF2ZZB3KhSIu/atT50
lmUdCpS6w6UUlT6LMSLd
=7n+b
-----END PGP SIGNATURE-----
