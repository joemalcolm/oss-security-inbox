X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1470" "Thursday" "8" "December" "2016" "01:35:37" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<7d122efe56014dc0a9bda220bf3bda62@imshyb02.MITRE.ORG>" "38" "[oss-security] Re: CVE request: Qemu: usb: ehci: memory leakage in ehci_init_transfer" nil nil nil "12" "2016120806:35:37" "[oss-security] Re: CVE request: Qemu: usb: ehci: memory leakage in ehci_init_transfer" (number mark "U       cve-assign@m Dec  8   38/1470  " thread-indent "\"[oss-security] Re: CVE request: Qemu: usb: ehci: memory leakage in ehci_init_transfer\"\n") "<alpine.LFD.2.20.1612070035380.7820@wniryva>" ("<alpine.LFD.2.20.1612070035380.7820@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7276 invoked by uid 550); 8 Dec 2016 06:35:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7255 invoked from network); 8 Dec 2016 06:35:49 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liq3ea@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1612070035380.7820@wniryva>
Message-ID: <7d122efe56014dc0a9bda220bf3bda62@imshyb02.MITRE.ORG>
Date: Thu, 8 Dec 2016 01:35:37 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: Qemu: usb: ehci: memory leakage in ehci_init_transfer

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the USB EHCI Emulation support is vulnerable
> to a memory leakage issue. It could occur while processing packet data in
> 'ehci_init_transfer'.
> 
> A guest user/process could use this issue to leak host memory, resulting in
> DoS for a host.
> 
> http://git.qemu.org/?p=qemu.git;a=commit;h=791f97758e223de3290592d169f8e6339c281714

>> it doesn't free the 'p->sgl'

Use CVE-2016-9911.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYSPv+AAoJEHb/MwWLVhi2zvsP/3xTTHAxpT0SXnVo/5KFX/lC
ANh7j1y2R9GVOBkwczTqD0MFwNDEM1FVVzhE9XVu4TLaJ7PYgsQzPpT6K+nI+Vhs
fWq7rHIgclE9X4MP94N/sMYyE4oZZ35uJm0qLnXxItiGoeFKTNkWHtw1SPSzRRIK
UfJ+PaA14SSts9XJquaxNf/kEYpKFhtGfrU5rsQc1XxSxMHhlBRdwOFLbMqopFhN
oes/HFAwqmXpdmqxvUmvBhvcH4HR5+8RB4W9wM5wU+EAirYTSA8g2LQQiiFna2B7
ES0ef9tZ/2PelYnExPj51Xl6xe5xbSML1z4MpxDX7GLyo/3oqM7/bLzFU7vnzsL1
tA0UM5ipwb0An6TQDX285nGToTQU2KYbVYghz81F9Sro+GkVFPov5rq0s8bH54m0
4GruXSeGGL7YKlOYPCq03p+stCXjUZS2d53qwPKMBBLmtomuGMK6LaUZnQQSn44V
h7tphm8Hvapb86rBkixCA5xXBvwSGdX5QZy23Ppr2FBrfkGT4VEpWBdCEkn9Y3q2
UUs8MdH9XRTlmqdfLf5EJPI53eIhxFVdBQV9VPb+qzuLtDt6ei24p5EPUZACUte7
69cwfYegHyJnSXfL/FNuWDcdf2qsc0P1vh5Ka2QwUDVyRSl9Ef8qCt899aFRNsy5
xUILseRrS8HSXuXKTtrR
=yc/x
-----END PGP SIGNATURE-----
