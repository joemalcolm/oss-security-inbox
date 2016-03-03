X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1883" "Wednesday" "2" "March" "2016" "19:39:27" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160303003927.2F2A072E03C@smtpvbsrv1.mitre.org>" "44" "[oss-security] Re: CVE request Qemu: net: ne2000: infinite loop in ne2000_receive" "^Cc:" nil nil "3" "2016030300:39:27" "[oss-security] Re: CVE request Qemu: net: ne2000: infinite loop in ne2000_receive" (number mark "        cve-assign@m Mar  2   44/1883  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: ne2000: infinite loop in ne2000_receive\"\n") "<alpine.LFD.2.20.1603022054390.31146@wniryva>" ("<alpine.LFD.2.20.1603022054390.31146@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28516 invoked by uid 550); 3 Mar 2016 00:39:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28485 invoked from network); 3 Mar 2016 00:39:39 -0000
In-Reply-To: <alpine.LFD.2.20.1603022054390.31146@wniryva>
Message-Id: <20160303003927.2F2A072E03C@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, yanghongke@huawei.com
Date: Wed,  2 Mar 2016 19:39:27 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Qemu: net: ne2000: infinite loop in ne2000_receive
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the NE2000 NIC emulation support is vulnerable to an
> infinite loop issue. It could occur when receiving packets over the network. A
> privileged user inside guest could use this flaw to crash the Qemu instance
> resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-02/msg06126.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1303106

>> Ne2000 NIC uses ring buffer of NE2000_MEM_SIZE(49152) bytes to process 
>> network packets. Registers PSTART & PSTOP define ring buffer size & 
>> location. Setting these registers to invalid values could lead to 
>> infinite loop or OOB r/w access issues. Add check to avoid it.

Use CVE-2016-2841.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/ne2000.c but
that may be an expected place for a later update.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW14dFAAoJEL54rhJi8gl5IDMP/2U7nLNi4eNJn3ybPDVTjNWn
ge3Y7dcPNs+PwEFNWXbyREH+uyflE1Af3SB03lVsrGcBEhFW/RsfpkAUYqfeYtku
XtAzLVmO/qvhNdxtfN2GJVlPhIekaWZxxR9kk0nRN5S/fDQg6Mw1LADahoGL5pMx
eOXnN/GfVkMG16Ee9uit7v5yDuC4kDT3Mg/0ORk9E5mw+rUKH1XvH1+FpPcRg6cF
m4oDxjnwXM35EVcapHJzXbYQZP9Cqo7I+vmNW9QgjDZ5yIiDeQhxOfHv81BTChMD
KRwuqnVq8nKOSQQFaxTtdrUkXBVKNXNG5T5XnbyllacYkq5COolY+jOIjadZkyaL
dDPDuG/HL357ZG4mJFkfzPD1EBoRRUnTvVbCPRCjxslHg8OTD9OYq3oc52R8K+co
WUL5fd6HzDPSHnkwuHhCPK15NbXgOui/s+vwcpDikFEx8luizkRWO3OnB2l/FG/0
jdEHLwIoHArxzILYpcYMEs2OeLTWLePOzhRo9N+/kh4X0q4bPTlaoloSmQgHtb11
IbnR4KboFKyD4zafLuU47cT5deQO42Jzi2hXRtMB32pLcZ2ZpDWf7t8GLsMxntfr
HJqLoWUVu5RNNQ0mibrlQYGCHYwX21YWW6Kk9au95tLO+csiWb4tb1Cjvp6QbR9m
GyaKy3pAUaLKO2DlifON
=pz1l
-----END PGP SIGNATURE-----
