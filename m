X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1105" "Wednesday" "29" "July" "2015" "08:42:07" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150729124207.E97B16C00D2@smtpvmsrv1.mitre.org>" "29" "[oss-security] Re: CVE request: Linux kernel - information leak in md driver" nil nil nil "7" "2015072912:42:07" "[oss-security] Re: CVE request: Linux kernel - information leak in md driver" (number mark "U       cve-assign@m Jul 29   29/1105  " thread-indent "\"[oss-security] Re: CVE request: Linux kernel - information leak in md driver\"\n") "<F696688A-7DBF-4218-9FDB-C73194148E93@randazzo.fr>" ("<F696688A-7DBF-4218-9FDB-C73194148E93@randazzo.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1692 invoked by uid 550); 29 Jul 2015 12:42:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1665 invoked from network); 29 Jul 2015 12:42:19 -0000
From: cve-assign@mitre.org
To: benjamin@randazzo.fr
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <F696688A-7DBF-4218-9FDB-C73194148E93@randazzo.fr>
Message-Id: <20150729124207.E97B16C00D2@smtpvmsrv1.mitre.org>
Date: Wed, 29 Jul 2015 08:42:07 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Linux kernel - information leak in md driver

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/?id=77ba0569d4c8389c0a2162ab0c7c16a6f3b199e4
> 
> copy_to_user(arg, file, sizeof(*file))
> 
> But if bitmap is disabled only the first byte of "file" is initialized
> with zero, so it's possible to read some bytes (up to 4095) of kernel
> space memory from user space. This is an information leak.

Use CVE-2015-5697.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVuMluAAoJEKllVAevmvmskpAH/A1Dle9yejWQdgy/N6rIdg7h
i1no4dsolizpN4guZdu0gLpGstSJFWsc+fFD5eAuNLh0+fYNI8nCPFRBbBDShS7f
v3Fsniw+WX6J4Tqk61AS19OwX2Zo7TNctllbqyios7omfb52Jaf6aYamEZIOotfJ
v9WtiHSzOHD2d/2dY5JiBxO40lmJL6hsl1QzIYJqKF64I8IZ/cgYYcF0fVhE4Dk7
G7TEIm5kf0dx1JoGcI0rINPo3un20zFzcpnfl7PbAdDwc7qUzW/QfrpnF1K4b6gU
FeB5fswttGrehaVYd82DcSR39hJjWZlkM4lPCwyGCt58TsHb7AVYuwC8AcsHcSM=
=MXkB
-----END PGP SIGNATURE-----
