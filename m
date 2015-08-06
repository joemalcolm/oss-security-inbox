X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1475" "Thursday" "6" "August" "2015" "10:32:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150806143203.5F2A06C00F1@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE request: Qemu: buffer overflow in virtio-serial" nil nil nil "8" "2015080614:32:03" "[oss-security] Re: CVE request: Qemu: buffer overflow in virtio-serial" (number mark "        cve-assign@m Aug  6   41/1475  " thread-indent "\"[oss-security] Re: CVE request: Qemu: buffer overflow in virtio-serial\"\n") "<alpine.LFD.2.20.1508061545270.10066@wniryva>" ("<alpine.LFD.2.20.1508061545270.10066@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19627 invoked by uid 550); 6 Aug 2015 14:32:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19583 invoked from network); 6 Aug 2015 14:32:15 -0000
In-Reply-To: <alpine.LFD.2.20.1508061545270.10066@wniryva>
Message-Id: <20150806143203.5F2A06C00F1@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  6 Aug 2015 10:32:03 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Qemu: buffer overflow in virtio-serial
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/qemu/qemu/commit/7882080388be5088e72c425b02223c02e6cb4295
> https://lists.gnu.org/archive/html/qemu-devel/2015-07/msg05458.html

> Don't assume a specific layout for control messages.

> hw/char/virtio-serial-bus.c

> send_control_msg

> -    memcpy(elem.in_sg[0].iov_base, buf, len);
> +    /* TODO: detect a buffer that's too short, set NEEDS_RESET */
> +    iov_from_buf(elem.in_sg, elem.in_num, 0, buf, len);

> Qemu emulator built with the virtio-serial vmchannel support is vulnerable to
> a buffer overflow issue. It could occur while exchanging virtio control
> messages between guest & the host.
> 
> A malicious guest could use this flaw to corrupt few bytes of Qemu memory
> area, potentially crashing the Qemu process.

Use CVE-2015-5745.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJVw283AAoJEKllVAevmvmsfgwH/2QCbFLQJTRfcaExszbdczlX
ciSqTWOuUev2zrch+wptzCNIzmuRo+16quDQ+sNcgefTFQwZQs14XYMp9n3xv2Tg
w++oYByFgWJps1tev18UiHIRUA7YEvl7LDYL++BgHeL3McOIXowilj0+0p7kgx1b
AI6Jx566eBecMcoRQtPH4X0zKg5Hrd7k97rHGqPhza1eKjkweSVfuHVliuFTkIH9
le8+84TxOWlTAZv4xgmDDkCpPINJmATPnc3zfHNjpRyHVFB2jVahLplSDOOdrE2w
uqe59griVgciusqQnhStau5bZXh1gUzGN2yqz/XCkXua135o/vMN/NgnUxJ1GbA=
=P2BP
-----END PGP SIGNATURE-----
