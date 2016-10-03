X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1581" "Monday" "3" "October" "2016" "10:25:26" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161003142526.0B3F933203C@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE Request Qemu: net: pcnet: infinite loop in pcnet_rdra_addr" nil nil nil "10" "2016100314:25:26" "[oss-security] Re: CVE Request Qemu: net: pcnet: infinite loop in pcnet_rdra_addr" (number mark "U       cve-assign@m Oct  3   40/1581  " thread-indent "\"[oss-security] Re: CVE Request Qemu: net: pcnet: infinite loop in pcnet_rdra_addr\"\n") "<alpine.LFD.2.20.1610031723380.30560@wniryva>" ("<alpine.LFD.2.20.1610031723380.30560@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18317 invoked by uid 550); 3 Oct 2016 14:25:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18297 invoked from network); 3 Oct 2016 14:25:37 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1610031723380.30560@wniryva>
Message-Id: <20161003142526.0B3F933203C@smtpvbsrv1.mitre.org>
Date: Mon,  3 Oct 2016 10:25:26 -0400 (EDT)
Subject: [oss-security] Re: CVE Request Qemu: net: pcnet: infinite loop in pcnet_rdra_addr

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the AMD PC-Net II emulator support is
> vulnerable to an infinite loop issue. It could occur while receiving packets
> via pcnet_receive().
> 
> A privileged user/process inside guest could use this issue to crash the Qemu
> process on the host leading to DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg07942.html

Use CVE-2016-7909.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/pcnet.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX8mkOAAoJEHb/MwWLVhi2JRgP/0R6RXhk6Rx/TmowN+McLxwo
yEuTpDJH+ne/x8E0sos7b9jllE9IKT15shKIp+IiM+djZuLO7h8aezt1FIU+2We8
OTIN1PnHm0G8eR3F26Pd3LdcwmGu7umk0EZ+rl5liYtUq8UzLA6pOwp9/YmLO3wz
6Df0CDCdctImfy5AhSUuzERLrAFIq29DRtUupsjwQyTawC3e+OfLmgCsmILGy+U5
Kb550wAuD7owYGMcGdDvaBaGg20kA73lz1XkXo1JvhxlhW41n9fcnr8IZZ/wFIEm
wNlI8otT4R0YlSbi6lREHtH4XY8t0syUzjANcXyQVmdsq8kKVLGJpCaoPtiyzBkJ
9JKkcyBQxO6DMvCVlvZnowEIRlNAS0d+lVx5Dz+BItA6PZn1g2pv7vfqVdP6uINR
b1vXcE4d1P5g89cM/YVt0f6PaCTU03N/IYnE+aSvgtgfOpDYOAr4/6k7f5vhdGvL
rhcnr5l8wFXVXW7bUcjaFYeLoGMZ6o2PFHNmx7cJY8ia8f5G24+pCWduCL/raq30
mjfkTzozorVIIuNnBCduk5rTk6YIamGRK/6Ix/jaEXrNjBDRtet5Q7nVJkDFUwAS
M1mgfUYDUmxSv87r8nUnvJtj9uVFLBHknZWpjoJ16OTpKwSn7HWrDs6fR6q22rb7
7FsvrZnifI3TIUn0t9Nz
=eytu
-----END PGP SIGNATURE-----
