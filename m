X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["851" "Tuesday" "11" "May" "2021" "15:13:46" "-0300" "Thadeu Lima de Souza Cascardo" "cascardo@canonical.com" nil "18" "[oss-security] CVE-2021-3491 - Linux kernel io_uring PROVIDE_BUFFERS MAX_RW_COUNT bypass" nil nil nil "5" nil nil (number mark "U       cascardo@can May 11   18/851   " thread-indent "\"[oss-security] CVE-2021-3491 - Linux kernel io_uring PROVIDE_BUFFERS MAX_RW_COUNT bypass\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3491 - Linux kernel io_uring PROVIDE_BUFFERS MAX_RW_COUNT bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28164 invoked by uid 550); 11 May 2021 18:28:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22318 invoked from network); 11 May 2021 18:14:02 -0000
Date: Tue, 11 May 2021 15:13:46 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20210511181346.GM12149@mussarela>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2021-3491 - Linux kernel io_uring PROVIDE_BUFFERS MAX_RW_COUNT
 bypass

It was discovered that io_uring PROVIDE_BUFFERS operation allowed the
MAX_RW_COUNT limit to be bypassed, which led to negative values being used
in mem_rw when reading /proc/<PID>/mem.

Billy Jheng Bing-Jhong (@st424204) of STAR Labs working with Trend Micro's
Zero Day Initiative discovered that this vulnerability could be turned into
a heap overflow. This has been reported as ZDI-CAN-13546, and assigned
CVE-2021-3491.

IORING_OP_PROVIDE_BUFFERS was introduced in commit ddf0322db79c ("io_uring:
add IORING_OP_PROVIDE_BUFFERS") where lengths larger than MAX_RW_COUNT
could be used and accepted. This commit was introduced in 5.7-rc1. It was
not backported to any upstream LTS kernels.

This has been fixed by commit:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d1f82808877bb10d3deee7cf3374a4eb3fb582db

Cascardo.
