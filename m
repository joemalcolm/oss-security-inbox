X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1789" "Friday" "2" "December" "2016" "13:01:32" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<e4777233e05c49e58a16df69ab235437@imshyb02.MITRE.ORG>" "41" "[oss-security] Re: CVE request: Kernel: kvm: out of bounds memory access via vcpu_id" nil nil nil "12" "2016120218:01:32" "[oss-security] Re: CVE request: Kernel: kvm: out of bounds memory access via vcpu_id" (number mark "U       cve-assign@m Dec  2   41/1789  " thread-indent "\"[oss-security] Re: CVE request: Kernel: kvm: out of bounds memory access via vcpu_id\"\n") "<alpine.LFD.2.20.1612021209120.5066@wniryva>" ("<alpine.LFD.2.20.1612021209120.5066@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9429 invoked by uid 550); 2 Dec 2016 18:01:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9407 invoked from network); 2 Dec 2016 18:01:45 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <alpine.LFD.2.20.1612021209120.5066@wniryva>
Message-ID: <e4777233e05c49e58a16df69ab235437@imshyb02.MITRE.ORG>
Date: Fri, 2 Dec 2016 13:01:32 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: Kernel: kvm: out of bounds memory access via vcpu_id

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Linux kernel built with the Kernel-based Virtual Machine(CONFIG_KVM) support
> is vulnerable to an out-of-bounds memory access issue. It could occur on x86
> platform, while servicing I/O APIC requests with larger vcpu_id.
> 
> A guest user/process could use this flaw to crash the host kernel resulting in
> DoS or it could potentially be used to escalate privileges on a host.
> 
> https://git.kernel.org/linus/81cdb259fb6d8c1c4ecfeea389ff5a73c07f5755
> https://bugzilla.redhat.com/show_bug.cgi?id=1400804

>> KVM: x86: fix out-of-bounds accesses of rtc_eoi map
>> KVM was using arrays of size KVM_MAX_VCPUS with vcpu_id, but ID can be bigger
>> that the maximal number of VCPUs, resulting in out-of-bounds access.

Use CVE-2016-9777.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYQbY8AAoJEHb/MwWLVhi2E6UP/3Od6kwDOaaTEft5Cuqq33E3
Pk4zhnbtJa1Vo+obCpQreKP8Oq7oCThS0vDTHdfG2CgKg8tb1JtU3CGZFjxSewQR
ZMZ/zY0WvTVT52MWeQyQv6+WRRMQ0yDdnIAGwkkRlTFSniy+TVzABb6dLkYKTvFM
lRRROHOs/A4lknKXiCYRwGq8UyZ1i3Yr3uG8uzdGXBb5mDEmwp3C3CcFDpHsgThf
w2i0W0z+lqx4jkBAbL37T0ev3nSBgP8HLaAOx4hoIX/+/eHQ66NYq6Tu5t6OdPVq
6orHYpY1kq9R84hZ6C8jDJfTHyRbje82thzGzoSKPF4rmpNaKUIpKVGxVUXkYcvY
ZqJc4sN2oMoQWXM/rL27maBdKqwxX7HRN5WzsTfJdQN5AJW1J45aW9J7C1XyG6ms
0Po83l4dp8E7XDU8EVR4UJEiSBjAF8Dsns/tssql3mxtbh5yoAeg2R95nud5PPFH
C9V++FSvycUFpSBZa4zjSaEOIWjnsqMo1npgKvCEXZeevtgWKK8ogIhx42keyd5P
ypPY2K0mnTS0olx+nJl41Nxc7iJv0V5/pdJI6BDlSXitAaJWvgWlU3SHD9CI77hW
2gu8mrzq5r0P8UsfgtdfReLpdBTUZmG1WWd1exyFV00xJvO9opXbQcH3ocJONtcq
yprynboLM9ZITozRH1L2
=f3+j
-----END PGP SIGNATURE-----
