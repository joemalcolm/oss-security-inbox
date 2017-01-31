X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1748" "Tuesday" "31" "January" "2017" "10:20:47" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<ca93bd9008234863a8d3c5733fb36a02@imshyb01.MITRE.ORG>" "42" "[oss-security] Re: CVE request Qemu: sd: sdhci OOB access during multi block SDMA transfer" nil nil nil "1" "2017013115:20:47" "[oss-security] Re: CVE request Qemu: sd: sdhci OOB access during multi block SDMA transfer" (number mark "U       cve-assign@m Jan 31   42/1748  " thread-indent "\"[oss-security] Re: CVE request Qemu: sd: sdhci OOB access during multi block SDMA transfer\"\n") "<alpine.LFD.2.20.1701301524160.12782@wniryva>" ("<alpine.LFD.2.20.1701301524160.12782@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32703 invoked by uid 550); 31 Jan 2017 15:21:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32682 invoked from network); 31 Jan 2017 15:20:59 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<jiangxin1@huawei.com>
In-Reply-To: <alpine.LFD.2.20.1701301524160.12782@wniryva>
Message-ID: <ca93bd9008234863a8d3c5733fb36a02@imshyb01.MITRE.ORG>
Date: Tue, 31 Jan 2017 10:20:47 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: sd: sdhci OOB access during multi block SDMA transfer

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick emulator(Qemu) built with the SDHCI device emulation support is
> vulnerable to an OOB heap access issue. It could occur while doing a multi
> block SDMA transfer via 'sdhci_sdma_transfer_multi_blocks' routine.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> resulting in DoS or potentially execute arbitrary code with privileges of the
> Qemu process on the host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2017-01/msg06191.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1417559

Use CVE-2017-5667.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/sd/sdhci.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYkKkGAAoJEHb/MwWLVhi2+ugQAJBaikvxAT2i0CTdFelKnLXJ
XI2FCrbCLqVuJ2k4SnRhj6mw+TqDmd+rc620wUrAzOSLWIrHXQ995qEpVLHmUVUJ
puR03yJAJnk9/+EmTYTTilJX1gmfvTbT2HirBv/HFRQBTcMaVHLcnnsLhDJlmiJv
W6KTvYdcWoFzwV+5nsTnrg99S5MturKOnh/lTNo91o77NXS/ha92iay3UzHUPZP8
OmlePV3t1xaClrZZhMjP3zFShSGJEnp8pT5/ItTpIN+mn376C3CstKcM013rfrv9
J7g6P5tTmdjJahg5PoJrEo/mkNBUucfvMVR8n7Y4hLKvSvut/+vqAcCH4NkFhnv7
yJzIAnDstsePk0VburOYHFRA//pAk4H3kMaAgtH9onoDoLxSLK1YZLXNvP3iwW+o
y6DzfOriTWa3GH+DNoEqSlo29tDatofGgSvUmcK2maxWOu0d2J5p2FMXA3Vf/6yk
iWNmBYLDgtpf5QI14acbJT1PMr6YZ1UhS0j7BImrx/21UJ9tmeMAtDhGM7n7vBwa
SUhWuJaWrTpXRxaeS3RmV04xdYjj1uVZ9OOZ11T88zulEcRNJw4z0wKP+FJRtNQ8
AarpeNWlz4J1cYP+82shegPZluo6HlNjz8BfCfvidUzs3TXfQWDUuQwjLVWww1IJ
9obnnQn7sju5xf7e+k7Z
=B54L
-----END PGP SIGNATURE-----
