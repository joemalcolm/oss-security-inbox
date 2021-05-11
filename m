X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1377" "Tuesday" "11" "May" "2021" "14:55:49" "-0300" "Thadeu Lima de Souza Cascardo" "cascardo@canonical.com" nil "27" "[oss-security] CVE-2021-3489 - Linux kernel eBPF RINGBUF map oversized allocation" nil nil nil "5" nil nil (number mark "U       cascardo@can May 11   27/1377  " thread-indent "\"[oss-security] CVE-2021-3489 - Linux kernel eBPF RINGBUF map oversized allocation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3489 - Linux kernel eBPF RINGBUF map oversized allocation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23931 invoked by uid 550); 11 May 2021 18:02:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20457 invoked from network); 11 May 2021 17:56:07 -0000
Date: Tue, 11 May 2021 14:55:49 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20210511175549.GK12149@mussarela>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2021-3489 - Linux kernel eBPF RINGBUF map oversized allocation

It was discovered that eBPF RINGBUF bpf_ringbuf_reserve did not check
that the allocated size was smaller than the ringbuf size.

Ryota Shiga(@Ga_ryo_) of Flatt Security working with Trend Micro's Zero Day
Initiative discovered that this vulnerability could be turned into
out-of-bounds writes in the kernel. This has been originally reported as
ZDI-CAN-13586, and assigned CVE-2021-3489.

It was introduced by commit 457f44363a88 ("bpf: Implement BPF ring buffer
and verifier support for it"), so affects any kernels later than 5.8-rc1.
It was not backported to any upstream LTS kernel.

The proposed fix is that the allocating size cannot be larger than the
ringbuf size. Also, in order to prevent other exploits that change the
producer pointer or record headers, deny writable maps of those pages, as
was documented and is used by libbpf.

This is fixed by the following commit:
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/commit/?id=4b81ccebaeee885ab1aa1438133f2991e3a2b6ea

The commit below is also helpful in preventing other exploits:
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/commit/?id=04ea3086c4d73da7009de1e84962a904139af219

And the following commit to bpf selftests is useful for validating the above fix:
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/commit/?id=98a34e93da83e50e197584c7c362668bf12c1d54

Cascardo.
