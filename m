X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1621" "Monday" "3" "October" "2016" "10:22:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161003142203.3996C33203F@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE request Qemu: net: inifinte loop in imx_fec_do_tx() function" nil nil nil "10" "2016100314:22:03" "[oss-security] Re: CVE request Qemu: net: inifinte loop in imx_fec_do_tx() function" (number mark "U       cve-assign@m Oct  3   40/1621  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: inifinte loop in imx_fec_do_tx() function\"\n") "<alpine.LFD.2.20.1610031633160.29684@wniryva>" ("<alpine.LFD.2.20.1610031633160.29684@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30048 invoked by uid 550); 3 Oct 2016 14:22:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30028 invoked from network); 3 Oct 2016 14:22:15 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1610031633160.29684@wniryva>
Message-Id: <20161003142203.3996C33203F@smtpvbsrv1.mitre.org>
Date: Mon,  3 Oct 2016 10:22:03 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: net: inifinte loop in imx_fec_do_tx() function

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the i.MX Fast Ethernet Controller emulator
> support is vulnerable to an infinite loop issue. It could occur while
> processing packets on the transmit queue in 'imx_fec_do_tx'.
> 
> A privileged user/process inside guest could use this issue to crash the Qemu
> process on the host leading to DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg05556.html

Use CVE-2016-7907.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/imx_fec.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX8mkDAAoJEHb/MwWLVhi23/EP/0buNmOOgcuX1048FYUcg5Rx
yjhprmvkt95spa/gu5V2FqB8b8b+kWBg4LjPkSW18EIMtHC2lIVH4ZJUgUMrNaWG
+G/MoAiDwmBFkSIfbc33KFDeUUDjHt8JVhctsFbDGmW5KYt3O6AYb2uppvKJflTs
YWCbiyqCqh3cKEspos5faD2cXHd0eH1qioDCFNGZVv82a+6ODloSpIv/qu4Ksv6X
zGvseCSLQm00PobWfmGfV14Vhm4h3oERMtlVLPkbv09vRT8KK+XCzyEYpeB7sXT5
aBzngcs9iLhkhK+tgdub56GvSg40Dq6CyaMFX8jtxI4hphLdm8dzFjNPNIOAdBlS
69nAQbtlEql+J1lP1abGGLni/3ElkGQwvAAGBE3WQV5RAggR4/dOzbnAZto8oWOD
r6wyW5WRqMGfv1OgasTXWEy3+u+k5sNh2NfiwzwIBS/tIFcefUZJwhSyEZuEikzk
9fZnYIT9yUbGlKMepFXrmCz8W1xOnm9qPcINw9R2meROh0ue1O2+vz9z3cHV5CcL
xToZYNxm6YUIfEShOQ4ZatREOZwd1YFVwcRf2TvnGlUa/EHabZlgVQmYRAZ4wr/y
kNuiLTUhAwbpxFe9/ygTgdZfdV4U7mgkmbM7rTD5PyG4N3VI22kpTwvUkshYDHPA
aRWpeT4tzbzu4ezNdSBN
=qRTR
-----END PGP SIGNATURE-----
