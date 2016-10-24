X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1756" "Monday" "24" "October" "2016" "11:14:35" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161024151435.03B366C55E7@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: CVE request Qemu: audio: intel-hda: infinite loop in processing dma buffer stream" nil nil nil "10" "2016102415:14:35" "[oss-security] Re: CVE request Qemu: audio: intel-hda: infinite loop in processing dma buffer stream" (number mark "U       cve-assign@m Oct 24   44/1756  " thread-indent "\"[oss-security] Re: CVE request Qemu: audio: intel-hda: infinite loop in processing dma buffer stream\"\n") "<alpine.LFD.2.20.1610241602370.6422@wniryva>" ("<alpine.LFD.2.20.1610241602370.6422@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1796 invoked by uid 550); 24 Oct 2016 15:14:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1778 invoked from network); 24 Oct 2016 15:14:46 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, psirt@huawei.com
In-Reply-To: <alpine.LFD.2.20.1610241602370.6422@wniryva>
Message-Id: <20161024151435.03B366C55E7@smtpvmsrv1.mitre.org>
Date: Mon, 24 Oct 2016 11:14:35 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: audio: intel-hda: infinite loop in processing dma buffer stream

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the Intel HDA controller emulation support is
> vulnerable to an infinite loop issue. It could occur while processing the DMA
> buffer stream while doing data transfer in 'intel_hda_xfer'.
> 
> A privileged user inside guest could use this flaw to consume excessive CPU
> cycles on the host, resulting in DoS.

> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg04717.html

>> If this
>> length and buffer pointer were to be same, 'copy' could be
>> set to zero(0), leading to an infinite loop.

Use CVE-2016-8909.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/audio/intel-hda.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYDiS2AAoJEHb/MwWLVhi2EdIP/13s4aqAkXD/OaxOK3qRouWo
ONcmv+2QlJXZfy6Jm42tkh9Piw0GdGtaPbdGi6lWdE+skngIqsQn9agnQHNh3DZg
YE0hU7meNnfXuGKJZZ2sQlKJtT5kfcoFYv0V0D9OL+EOkd5Aul+cUrw/dXHrUvag
WUO2o2VwLfCnKKC7j8Y1lEDxfuy5uN8Wf312pvDusyEPKWfJ+JYRsmF2uCOSWgTg
VxjHCDyMsvUTmqIVblfo+oVHD8u3yqONAPfX7Q/UeIk3QDo7sXT1qVCbt7dOAhJA
9ieYKuDy7XKDoyQOCZIiOnfdV4Lz9FMVjZThDnrtD4hpoe79U7lV0RJGl0cXYg2o
tWxz7QGJj3bPoxTDVFU/5CqfuD5/p00HDEhbz55FrPva2UTnddIYQ4Aqt5KZp55v
D1G7GtnLnw+YxD4KJ81cTeCvArAg3mtTij2H3skhJ2xrxsN94CgvhhjxRqjCaUHJ
1XDjVPJSuRHpV3kAApRGYuRC2oq8KzgeAMyYuRom8DbBlBIWcmoF1npwYY+Umv5+
B384U55gEqpplZspdxEoJgQQIj/x1PdmEpJ0EE8Qsx3+FhN0OtmFHhLuwPNdWir0
gKXY9Z/Jgdg+g6COXB6Tb0T7bNTVdUNfcx3+GyxamgpXfnnkTS38fSNg9QOCcv3X
56I0ORxCBj7wQTmT5UFB
=5rof
-----END PGP SIGNATURE-----
