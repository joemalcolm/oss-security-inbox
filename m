X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1979" "Saturday" "15" "October" "2016" "12:46:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161015164603.2A9F752E4DF@smtpvbsrv1.mitre.org>" "47" "[oss-security] Re: CVE request Qemu: net: OOB buffer access in rocker switch emulation" "^Cc:" nil nil "10" "2016101516:46:03" "[oss-security] Re: CVE request Qemu: net: OOB buffer access in rocker switch emulation" (number mark "U       cve-assign@m Oct 15   47/1979  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: OOB buffer access in rocker switch emulation\"\n") "<alpine.LFD.2.20.1610141642160.13950@wniryva>" ("<alpine.LFD.2.20.1610141642160.13950@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13737 invoked by uid 550); 15 Oct 2016 17:00:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13695 invoked from network); 15 Oct 2016 17:00:53 -0000
In-Reply-To: <alpine.LFD.2.20.1610141642160.13950@wniryva>
Message-Id: <20161015164603.2A9F752E4DF@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, psirt@huawei.com
Date: Sat, 15 Oct 2016 12:46:03 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Qemu: net: OOB buffer access in rocker switch emulation
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the Rocker switch emulation support is
> vulnerable to an OOB read access issue. It could occur while performing a DMA
> access 'TEST_DMA_CTRL_INVERT' test.
> 
> A privileged guest user could use this issue to crash the Qemu process
> instance on the host resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02501.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1384896

>> While testing host DMA access, a buffer address
>> is written to register 'TEST_DMA_ADDR' and its size is written to
>> register 'TEST_DMA_SIZE'. When performing TEST_DMA_CTRL_INVERT
>> test, if DMA buffer size was greater than 'INT_MAX', it leads to
>> an invalid buffer access. Limit the DMA buffer size to avoid it.

Use CVE-2016-8668.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/rocker/rocker.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAlsOAAoJEHb/MwWLVhi2+IoP/0i4fPGczDVTahpTjfF2hwho
7LuBxbaC/CN9Jkr9MUTgtda45X4NT3K6XbR6xrZA3Nv8Mtcbo7ZO/c91LmIhib8n
QpV8DixIv+KTXj0NFZ2jWPThjb65wSUDIVHMSt9e8pbk6zmqmUVAy2K85FV+rHXq
fhX89bgXPoT0WqK2ukxhZz/3pBiVoCRPlxQx4TuTYppB7O8K3XOPEktmqOvamtfo
uSZLbPZlPSbmQ5w2GFLSAl22yeiRMznRzXQK5GT33Pu1109gY5kWfP5tLmDn8vS0
bD6m7jXKQqplrS48YbbwGlFGwcn7hXxH81kj2JrQImtK6i7o0o/ONhhlnu5cuq/K
nuboysIih7EGoY3vax0pbyisB5wOmp7pGc9e4b+AQP/kgbE2L+iHOlZigw1cUO2n
uc1vRl5mr4Z60ubIQTBUPceVMa2LHydj5/WjoryidKxqpFGY/Bu4YGkYnApEOhQY
iAR1Q82CMCzUVB6L7GszkS96+7DVfBWblBxVf23cJNwFq/xylUvtkUfj3rEOAsgA
OC1/LoqcCNyPQSek2hIaGZrUYoEKKetDtV1mNLn3JnUpCw0K42F6yEWxAtwXgYRj
ezqVXUq8JDiGXHvnN6k31Yixu8RsKCO1bvmiC10FMJtYZVsOr6rvnIIOGBC2ChfM
wJ+NxzkQZ4MdGyqPJdvA
=+r3h
-----END PGP SIGNATURE-----
