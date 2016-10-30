X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1869" "Sunday" "30" "October" "2016" "15:40:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<57c860d2be484157a6976154f0dbb8a1@imshyb02.MITRE.ORG>" "43" "[oss-security] Re: CVE request Qemu: 9pfs: memory leakage when creating extended attribute" nil nil nil "10" "2016103019:40:41" "[oss-security] Re: CVE request Qemu: 9pfs: memory leakage when creating extended attribute" (number mark "U       cve-assign@m Oct 30   43/1869  " thread-indent "\"[oss-security] Re: CVE request Qemu: 9pfs: memory leakage when creating extended attribute\"\n") "<alpine.LFD.2.20.1610280232200.6132@wniryva>" ("<alpine.LFD.2.20.1610280232200.6132@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19583 invoked by uid 550); 30 Oct 2016 19:40:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19562 invoked from network); 30 Oct 2016 19:40:52 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1610280232200.6132@wniryva>
Message-ID: <57c860d2be484157a6976154f0dbb8a1@imshyb02.MITRE.ORG>
Date: Sun, 30 Oct 2016 15:40:41 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: 9pfs: memory leakage when creating extended attribute

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9
> File System(9pfs) support, is vulnerable to memory leakage issue. It could
> occur while creating extended attribute via 'Txattrcreate' message.
> 
> A privileged user inside guest could use this flaw to leak host memory, thus
> affecting other services on the host and/or potentially crash the Qemu process
> on the host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg01861.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1389550
> http://git.qemu.org/?p=qemu.git;a=commit;h=ff55e94d23ae94c8628b0115320157c763eb3e06

>> The 'fs.xattr.value' field in V9fsFidState object doesn't consider the
>> situation that this field has been allocated previously. Every time, it
>> will be allocated directly.

Use CVE-2016-9102.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYFkttAAoJEHb/MwWLVhi2xs4QAJlln60/IgqnAibO5sPIrDV8
IpxLE3wpjyOipSnO9tAQNTy80dZFrKhNTh+MsZYI28ttFrJlL6Upx2Vfx6YknnN/
v7B+Obih4Z+V9O1q4j9mldmEIjIJ4pBylRjnB/jn4Kq+Mios5lPZjs9OJqry55KQ
1BOqC+WaZSs+FuyMU9fRp3/VTZIEKIXp4BHZ/qBx7pGwcUtGllqmuUmQAluiQDEA
8WAX1nuMld09naulyEjR4cdYhDb8nTLMYq2ZOc/epOomcVbChXGByrkMGK1K7RZO
JfSLV9ptmR1w3g2PRSIOUQrMEnvkQrHbHgyy95cfnUBRG/gVbihIb5DW7dF6VEZ6
bzylN3jSBKoOd8mb6oIG1qlhGnQ01Rok8wIcE4RGIz55BcPK8K62tSdirasfQ0dG
ZWG37889erHjd7SUJs4H6fxz+JfUXeZXZ5YeJCY1eKaTly4IvZy2P2k4LmE5NmvT
fYcp+8QNV/ukSZ2Ws0496mmqe50/CGfX3he4QmdCAkTv6TikbTO9m19bEyxk8yKl
0OQvcVSYGnfXJ2WNC/6pPhPY1pTP/hamp2f7THdM9XrkwJANKzoAbCPYKlN46bSv
rMkL0xHWWfxFVebTINJ77aYCNV6nA1xy+12aPitusmcbNFJVCb3MUHA1POEjamFL
1f6bLO4tTEun2gK4MLKm
=YQ2j
-----END PGP SIGNATURE-----
