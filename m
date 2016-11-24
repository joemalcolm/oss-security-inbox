X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1540" "Wednesday" "23" "November" "2016" "22:49:22" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<58bfcc2f68c14d9794d8bdd65e9d6266@imshyb02.MITRE.ORG>" "38" "[oss-security] Linux kernel net/ipv4/ip_tunnel.c issue mentioned on netdev" nil nil nil "11" "2016112403:49:22" "[oss-security] Linux kernel net/ipv4/ip_tunnel.c issue mentioned on netdev" (number mark "U       cve-assign@m Nov 23   38/1540  " thread-indent "\"[oss-security] Linux kernel net/ipv4/ip_tunnel.c issue mentioned on netdev\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9953 invoked by uid 550); 24 Nov 2016 03:49:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9900 invoked from network); 24 Nov 2016 03:49:33 -0000
From: <cve-assign@mitre.org>
To: <oss-security@lists.openwall.com>
CC: <cve-assign@mitre.org>
Message-ID: <58bfcc2f68c14d9794d8bdd65e9d6266@imshyb02.MITRE.ORG>
Date: Wed, 23 Nov 2016 22:49:22 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Linux kernel net/ipv4/ip_tunnel.c issue mentioned on netdev

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

In case anyone wants to be aware of CVE ID requests that appeared
on other public mailing lists:

  http://marc.info/?l=linux-netdev&m=147995726821221&w=2

wanted an ID for an integer overflow in this:

  https://github.com/torvalds/linux/blob/cfc7381b3002756b1dcada32979e942aa3126e31/net/ipv4/ip_tunnel.c#L396-L404

Because the report was simultaneously sent to security@kernel.org and
may have other people contributing analysis, we may be waiting a short
time before assigning a CVE ID.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYNmLPAAoJEHb/MwWLVhi2nVYQALYW1yBzHzv/hVdWIsUHKLQC
5gNQoTyazj6zw4fTiXfkg8MESzeTHPEY3IygWE0UhvdnZG6SjfS5HVBONsZtLPMu
MBzgJ8nLefUeonhqAKaMYzbi4Ntt1Cf/AWGoiA5Dd8+MTmwc4hOCvkyhQwZsKjJh
DyIIsNGgFd0glItqicNhNCEwXcdmPeeWGHqi9vN4n6ZjVkra1rEUlZ44dnPkTxNa
9Y9m0+ETP4CrufvWnPv2E4rAEuqqRzHiEX1gPWNT/Rabf/VCMVPZHXyiXxdCYlnR
vOyY9DzpO3NeI5yxGqME8/A5H0RkgvWsnrFOxqgaHOV1odTaseA8s6K3FAQY2Z9Z
tQfM3lHRq80TkfAp7SelwjWk9kH+gWOYGdcDER2vjv45WO9ETdRcrfIV4X07fWJ7
YDU1T+qc/0647OP6un/lEnVBQX2AoFfY25IhloYUpKHGxNxxUFJIurVpTIN+qksf
2gAJcMTF4MDfNmAaENi97tL4CwkJmvGswncPG4Cy3V+hsvRNqgp0VWuYFVfv/MtT
SIb80ErscC1+ltKJBUka4Pi9C3Q0fx4f51/gf0XLrjQBUhtwUwl889yr5lM1Cf4X
e1Wja9saMPGcYWZudIvTameli18G+5Z1Hh/Iu9NR5HxYUHOIEVoGWaRCt2LxkRR6
9sos50TA6UaxylJ3PdAn
=5/Wi
-----END PGP SIGNATURE-----
