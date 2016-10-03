X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1568" "Monday" "3" "October" "2016" "10:23:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161003142341.C426D42E00C@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE request Qemu: net: Infinite loop in mcf_fec_do_tx" nil nil nil "10" "2016100314:23:41" "[oss-security] Re: CVE request Qemu: net: Infinite loop in mcf_fec_do_tx" (number mark "U       cve-assign@m Oct  3   38/1568  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: Infinite loop in mcf_fec_do_tx\"\n") "<alpine.LFD.2.20.1610031659410.30046@wniryva>" ("<alpine.LFD.2.20.1610031659410.30046@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7938 invoked by uid 550); 3 Oct 2016 14:23:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7899 invoked from network); 3 Oct 2016 14:23:53 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1610031659410.30046@wniryva>
Message-Id: <20161003142341.C426D42E00C@smtpvbsrv1.mitre.org>
Date: Mon,  3 Oct 2016 10:23:41 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: net: Infinite loop in mcf_fec_do_tx

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the ColdFire Fast Ethernet Controller emulator
> support is vulnerable to an infinite loop issue. It could occur while
> processing packets on the transmit queue in 'mcf_fec_do_tx'.
> 
> A privileged user/process inside guest could use this issue to crash the Qemu
> process on the host leading to DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg05557.html

>> http://git.qemu.org/?p=qemu.git;a=commit;h=070c4b92b8cd5390889716677a0b92444d6e087a

Use CVE-2016-7908.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX8mkIAAoJEHb/MwWLVhi2JYoP/3+0IfxTkbFklvyaC8xBr/WW
LOk4tonp6F9z+camxOsWlHoIMMJgJ8J8L2qgfVGspdtSHkG+d3XSJ7r287aftPiq
raCjWOW8vpVS9YgE60K04VJTqOBwepq25okTngZenmFX4SgqdR4WdETTNoyXgssS
Qmh5PR2zVLuQ/ZJgoYvL9rjnEGWjwXtaxCi4OwFLrcvU7NmxEP9vRi4l73a81qbU
i6KkzJDzYmhGe2RRWGkTkCdsDEf85n8E6lHTN1u7JQ4j3AN1EbF9J6xZxhvwXmna
wB8QMWYx1l/TNePFvw6fIwnTApmeetAlsPrkxSJ/zp0g4vFSOP6ApG4Y962yiTdP
WuPU14aqHxY5Qqwj5rSCjuxUoKFWUaXovIpiTi3BsnGO8+4iuPOkzh1yLvdI+XIU
3Hhk/oTcfutLbsQ+Dx762D/mP5iH49PDgaqq8zsPbhUmxMycaWAQQi35T195TW2q
euMcc+MNzkLrDxwTpCqzVsJYewTmYzyE/LJXi93wxphkYmAV6qhipTw2iqiFkOrf
DiNnJwLILlr3suNbZwBfoMLwa3ynoUjbk5Zw6Qcp3U5QFOGbM0THRI3yCIB8m6u1
D4tru7IyKkjeV2p05Vv/Ollo3DvHetwN7cOo9D8mr+fRLngeNC6U0cgPX1mo9qvs
pzZ1pgv1R0dLJsp5F7yN
=1UlC
-----END PGP SIGNATURE-----
