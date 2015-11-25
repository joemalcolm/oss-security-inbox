X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2201" "Wednesday" "25" "November" "2015" "12:57:31" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151125175731.1FBB333204D@smtpvbsrv1.mitre.org>" "51" "[oss-security] Re: CVE request Qemu: net: eepro100: infinite loop in processing command block list" nil nil nil "11" "2015112517:57:31" "[oss-security] Re: CVE request Qemu: net: eepro100: infinite loop in processing command block list" (number mark "U       cve-assign@m Nov 25   51/2201  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: eepro100: infinite loop in processing command block list\"\n") "<alpine.LFD.2.20.1511251422050.31323@wniryva>" ("<alpine.LFD.2.20.1511251422050.31323@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24196 invoked by uid 550); 25 Nov 2015 17:57:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24176 invoked from network); 25 Nov 2015 17:57:43 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, luodalongde@gmail.com
In-Reply-To: <alpine.LFD.2.20.1511251422050.31323@wniryva>
Message-Id: <20151125175731.1FBB333204D@smtpvbsrv1.mitre.org>
Date: Wed, 25 Nov 2015 12:57:31 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: net: eepro100: infinite loop in processing command block list

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the i8255x (PRO100) emulation support is vulnerable
> to an infinite loop issue. It could occur while processing a chain of commands
> located in the Command Block List(CBL). Each Command Block(CB) points to the
> next command in the list. An infinite loop unfolds if the link to the next
> CB points to the same block or there is a closed loop in the chain.
> 
> A privileged(CAP_SYS_RAWIO) user inside guest could use this flaw to crash
> the Qemu instance resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2015-10/msg03911.html
> 
> hw/net/eepro100.c
> action_command

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/eepro100.c but that
may be an expected place for a later update. eepro100.c mentions
"Portions of the code are copies from ... linux e100.c" at the top. We
have not researched this, but it appears that this QEMU vulnerability
is not present in
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/tree/drivers/net/ethernet/intel/e100.c
and thus we don't see any indication that the Linux kernel is another
affected product.

Use CVE-2015-8345.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWVfWTAAoJEL54rhJi8gl591EP/06FBlgbq3Aer+TcCq+wOM9M
2lAH/ssbE4otGXM73jUMxkOLfrFa86Fm8z59xVgFLHyFzJJhUpBRHsfi+qQxiXgn
YkriJMmr5bQOQDJxqWq+lY3AG56HgtCHps646AoO1xEPUAu0hP/n6mpwL8yj0R7x
az9lPKY5heBt7NL7RZJ83U8BSm85Wt9CICO3qawb9R0Yj7iWVk0E1OWbMaRsf5if
OoJw52/c5cTfPAsGHu003E5vREvNrEL29I0+luCVJeRusjXsr3/nldnnN8Anvp7b
BbNmKraOmpmc2qsVjnkwpkmvX3XROXKUQOBQdbqpheJ/VBSoGqT+A2rCeO3Ba8m7
KHI4CB6eccC9SeFi1DjV5ZWdCWSIiaofzw8y/4ZHUOSIFMaoaEJyKKVb68/++bA0
mZN85P24QqDGEwLoWHWVit0WQ/aWBcJrSP7yKlvdtQQ65pIn5GEmp2rvmLID0RlS
JssEis9JgDZ98/sEjVuWufK4c5w2S7kGi0Ebiy83N7HIbbG51Ix2+1UrPYq15vtV
WiLdLaILOkeu4jOnmz+gaeBFVy6TFTIZhIeV7Az3QCCY1xDv7Woxvw4UM+w5OXiG
m/S82BI+qOvyfs7Bsdn1RIWJtFga4aefs0CKsPwlwC+sLduslxdUcN9ecivKqBzb
//6yZbXJRI/ZzPCaHKIx
=c5ap
-----END PGP SIGNATURE-----
