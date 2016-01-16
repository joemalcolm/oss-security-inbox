X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1964" "Saturday" "16" "January" "2016" "11:51:53" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160116165153.8AD7F6C035C@smtpvmsrv1.mitre.org>" "47" "[oss-security] Re: CVE request Qemu: i386: null pointer dereference in vapic_write" "^Cc:" nil nil "1" "2016011616:51:53" "[oss-security] Re: CVE request Qemu: i386: null pointer dereference in vapic_write" (number mark "        cve-assign@m Jan 16   47/1964  " thread-indent "\"[oss-security] Re: CVE request Qemu: i386: null pointer dereference in vapic_write\"\n") "<alpine.LFD.2.20.1601161115510.22572@wniryva>" ("<alpine.LFD.2.20.1601161115510.22572@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11727 invoked by uid 550); 16 Jan 2016 16:52:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11706 invoked from network); 16 Jan 2016 16:52:05 -0000
In-Reply-To: <alpine.LFD.2.20.1601161115510.22572@wniryva>
Message-Id: <20160116165153.8AD7F6C035C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liuling-it@360.cn
Date: Sat, 16 Jan 2016 11:51:53 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Qemu: i386: null pointer dereference in vapic_write
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the TPR optimization for 32-bit Windows guests 
> support is vulnerable to a null pointer dereference flaw. It occurs while 
> doing I/O port write operations via hmp interface. In that, 'current_cpu' 
> remains null, which leads to the null pointer dereference.
> 
> A user/process could use this flaw to crash the Qemu instance, resulting in 
> DoS issue.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg02812.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1283934

>> When I/O port write operation is called from hmp interface,
>> 'current_cpu' remains null, as it is not called from cpu_exec()
>> loop. This leads to a null pointer dereference in vapic_write
>> routine. Add check to avoid it.

Use CVE-2016-1922.     

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/i386/kvmvapic.c but
that may be an expected place for a later update.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWmnRUAAoJEL54rhJi8gl59noQAM/vSEILhzHjyInIECRi5Pa3
AeMkMitYWVwKxLxy3J6iwItsF3BD6LcpvGHFo0U7v8dhln5vISQIUydx4TojPbtN
KxF1H8rmpWmf4iJGYaryfqi4frgyUOw1LVzaHKdPSMh4C9EKHE3hiJ2kDOa/6J44
1VrsmQNjvElfeMMYdlNI7FU1/5MY6HnBGzumu+gjqmdOl/Nz4BzzCMxfUmW7zAIL
X6DYMReMrSfuSNXUUmwJW5L5VcWQGE90OBSA8izMMtTfvHvGeaTy/iNHwVQncjrw
oBUpxqstKaAnW0CjuCUefzYQDX0XbXBtgRV5pzIwWg0Kc7WHBz7PrbEDSfHt0Tm7
N34cM+52zlsuqKo2tvewV+YC4KcvXI1albAxOkt6GNvUK0njhA/H8kykh1UqaSGx
PvhzZkryc9qD/mgZwpsFLgvNQ257/mwANHwc1F7FtjD3r8YH7Jh+A9EoX26ROKdQ
AuDNZ3NyfemH6qYvEnmKFuxTyBvM/xB7kLA1pF59rdfWizgSJ2Ceuq2wqKTHdfrZ
38UPE+X8T6i+z+HEg3kqITuCCe+npMUeDbWUiP0kSw6wYL0OX/SsvtfnNSWAGVZJ
z477+jMpuUGPspK+rwRbkYvE/xHH1XnbT3rAA/1irXcvGnetlb1nAFPx0Fx06JxZ
mD1djrzjFtIrW5WGftT1
=ZYwp
-----END PGP SIGNATURE-----
