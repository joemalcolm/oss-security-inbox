X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["730" "Wednesday" "23" "June" "2021" "13:07:42" "-0300" "Thadeu Lima de Souza Cascardo" "cascardo@canonical.com" nil "15" "[oss-security] CVE-2021-3600 - Linux kernel eBPF 32-bit source register truncation on div/mod" nil nil nil "6" nil nil (number mark "U       cascardo@can Jun 23   15/730   " thread-indent "\"[oss-security] CVE-2021-3600 - Linux kernel eBPF 32-bit source register truncation on div/mod\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3600 - Linux kernel eBPF 32-bit source register truncation on div/mod" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11927 invoked by uid 550); 23 Jun 2021 16:13:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9242 invoked from network); 23 Jun 2021 16:07:59 -0000
Date: Wed, 23 Jun 2021 13:07:42 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <YNNcTuAZq1NaI8d1@mussarela>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2021-3600 - Linux kernel eBPF 32-bit source register truncation
 on div/mod

It was discovered that eBPF 32-bit div/mod source register truncation could
lead to out-of-bounds reads and writes in the kernel.

It was introduced by commit 68fda450a7df ("bpf: fix 32-bit divide by zero"). It
was first introduced in 4.15-rc9, but backported and applied to v4.14.y, v4.9.y
and v4.4.y. However, this specific attack will not work on v4.4.y and v4.9.y
kernels as pointer arithmetic is prohibited on those kernels. This was
introduced by commit f1174f77b50c ("bpf/verifier: rework value tracking"), in
v4.14-rc1.

The fix is commit e88b2c6e5a4d ("bpf: Fix 32 bit src register truncation on
div/mod"), introduced in v5.11. It was backported and applied on v5.10.y and
v5.4.y, but not v4.19.y and v4.14.y.

Cascardo.
