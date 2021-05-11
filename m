X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["886" "Tuesday" "11" "May" "2021" "14:56:47" "-0300" "Thadeu Lima de Souza Cascardo" "cascardo@canonical.com" nil "18" "[oss-security] CVE-2021-3490 - Linux kernel eBPF bitwise ops ALU32 bounds tracking" nil nil nil "5" nil nil (number mark "U       cascardo@can May 11   18/886   " thread-indent "\"[oss-security] CVE-2021-3490 - Linux kernel eBPF bitwise ops ALU32 bounds tracking\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3490 - Linux kernel eBPF bitwise ops ALU32 bounds tracking" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24411 invoked by uid 550); 11 May 2021 18:02:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21695 invoked from network); 11 May 2021 17:57:03 -0000
Date: Tue, 11 May 2021 14:56:47 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20210511175647.GL12149@mussarela>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2021-3490 - Linux kernel eBPF bitwise ops ALU32 bounds tracking

It was discovered that eBPF ALU32 bounds tracking for bitwise ops (AND, OR and
XOR) did not update the 32-bit bounds.

Manfred Paul (@_manfp) of the RedRocket CTF team (@redrocket_ctf) working with
Trend Micro's Zero Day Initiative discovered that this vulnerability could be
turned into out-of-bounds reads and writes in the kernel. This has been
reported as ZDI-CAN-13590, and assigned CVE-2021-3490.

It was introduced by commit 3f50f132d840 ("bpf: Verifier, do explicit ALU32
bounds tracking"). The XOR version was introduced by commit 2921c90d4718 ("bpf:
Fix a verifier failure with xor"). The first one was introduced in 5.7-rc1,
while the latter was introduced in 5.10-rc1. There has been no backport to any
upstream LTS kernel.

This was fixed by commit:
https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/commit/?id=049c4e13714ecbca567b4d5f6d563f05d431c80e

Cascardo.
