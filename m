X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1648" "Tuesday" "12" "April" "2016" "07:37:33" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160412113733.EA7506C0082@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE request: Qemu: net: buffer overflow in stellaris_enet emulator" "^Cc:" nil nil "4" "2016041211:37:33" "[oss-security] Re: CVE request: Qemu: net: buffer overflow in stellaris_enet emulator" (number mark "        cve-assign@m Apr 12   39/1648  " thread-indent "\"[oss-security] Re: CVE request: Qemu: net: buffer overflow in stellaris_enet emulator\"\n") "<alpine.LFD.2.20.1604111754560.8367@wniryva>" ("<alpine.LFD.2.20.1604111754560.8367@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30245 invoked by uid 550); 12 Apr 2016 11:37:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30227 invoked from network); 12 Apr 2016 11:37:45 -0000
In-Reply-To: <alpine.LFD.2.20.1604111754560.8367@wniryva>
Message-Id: <20160412113733.EA7506C0082@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, oleksandr.bazhaniuk@intel.com
Date: Tue, 12 Apr 2016 07:37:33 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Qemu: net: buffer overflow in stellaris_enet emulator
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the Luminary Micro Stellaris Ethernet Controller is
> vulnerable to a buffer overflow issue. It could occur while receiving network
> packets in stellaris_enet_receive(), if the guest NIC is configured to accept
> large(MTU) packets.
> 
> A remote user/process could use this flaw to crash the Qemu process on a host,
> resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-04/msg01334.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1325884
> http://git.qemu.org/?p=qemu.git;a=commit;h=3a15cc0e1ee7168db0782133d2607a6bfa422d66

Use CVE-2016-4001.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXDN1qAAoJEL54rhJi8gl5hf8P/A+5Vn01oCk1xlc8z4he/gN6
4LJ95B1hUQKaIestlMoKghcO/xbOhiYb84Yb47+iBbQopHVL5PsW5/aGSM6dwlPS
Kw+VMM0EJjveTDy/cY47IEBCrghcKeoE1PPmgzMBGI9lzMgYRI8atQkyBxG1dHSb
I1UxOursYDnVN+xdn/qYRYrOVzqgfb8pvEQ4TBXemrCvHCdYJndEBSFoePWVIN3m
C4d/nRmncflKdm61P+q/7R1NrYcvunky1xR4rIKsTfZbnNVcdvDmQ7EDqdFyF3VL
OWtiOFfwgn+cp2047RgRGecsdYSs7oCsdS9xmoAFLYYyBKHN1Z0Eh8I/+FY6Deby
lyyfPPkS+ruJMAmuBIySGNhj+leyFM1JQ8mCgpQt29Hx20/uPmjtb2bwlUiO4WPC
qfgqLE5QKwycMsvHgenG3v7BxXsBrlxEd6e3w44Vegl2rNHJLZxRvaYFNy0pKG4J
RXYglpULTs8n9whj9ULWiS5hCyXrHMpz9HNtMGomUnQT1YB2EYvVJZDc54/Ff8nZ
m06EPebckrb+696feEqTDBCoNPyj//AvII5kJyFuJyN1ZjsmHmN5mr2ycHUXmvrm
dAYUM2wGxiERaeKFGEs2AF7vQU78UNB5CoE+TJT/Ge1dAs3zwSY0HaciwQ30Np2A
R82cpClaOw8Zl6bghbmF
=1M6c
-----END PGP SIGNATURE-----
