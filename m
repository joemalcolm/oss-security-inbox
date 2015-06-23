X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1442" "Monday" "22" "June" "2015" "22:13:14" "-0400" "Wade Mealing" "wmealing@redhat.com" "<1828271780.19122892.1435025594570.JavaMail.zimbra@redhat.com>" "35" "[oss-security] CVE request: Linux kernel - bpf jit optimization flaw can panic kenrel." nil nil nil "6" "2015062302:13:14" "[oss-security] CVE request: Linux kernel - bpf jit optimization flaw can panic kenrel." (number mark "U       wmealing@red Jun 22   35/1442  " thread-indent "\"[oss-security] CVE request: Linux kernel - bpf jit optimization flaw can panic kenrel.\"\n") "<882527978.19122321.1435025264420.JavaMail.zimbra@redhat.com>" ("<882527978.19122321.1435025264420.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16377 invoked by uid 550); 23 Jun 2015 02:13:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16344 invoked from network); 23 Jun 2015 02:13:27 -0000
Date: Mon, 22 Jun 2015 22:13:14 -0400 (EDT)
From: Wade Mealing <wmealing@redhat.com>
To: OSS Security List <oss-security@lists.openwall.com>
Cc: cve-assign@mitre.org
Message-ID: <1828271780.19122892.1435025594570.JavaMail.zimbra@redhat.com>
In-Reply-To: <882527978.19122321.1435025264420.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.49.153]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC43 (Mac)/8.0.6_GA_5922)
Thread-Topic: CVE request: Linux kernel - bpf jit optimization flaw can panic kenrel.
Thread-Index: FZ7E1VLXgCm3xfbuMzwRHWP4tdyvgA==
Subject: [oss-security] CVE request: Linux kernel - bpf jit optimization flaw can panic
 kenrel.

Gday,
 
I would like to request a CVE for a flaw in the BPF code in the Linux kernel. 
 
The kernels BPF JIT can be used to create a packet filter like mechanism
that can be attached to a socket with the setsockopt() call.  It requires 
JIT to be enabled via sysctl ( /proc/sys/net/core/bpf_jit_enable )
 
The kernel can turn BPF instructions into native hardware instructions using 
a JIT compiler. In the problematic case, the compiler fails to optimise a set 
of specially crafted instructions. This creates a problem when this faulty
instruction list is used during filtering and the CPU can execute an invalid
instruction (in receive_pkt).
 
This can be triggered as an non-root user, as they can start a server on a 
ephemeral port and the packet filter with a specially crafted filter.
 
These incorrect instructions will run when the server receives a packet and execute 
the buggy instructions.
 
I'm unsure if this can lead to anything more than a DoS, however that
is something I'll try to determine.
 
This is already fixed upstream in [1], with a regression test case in [2].
 
Thanks,
 
Wade Mealing
Red Hat Product Security


References:
1] https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=3f7352bf21f8fd7ba3e2fcef9488756f188e12be
2] https://git.kernel.org/cgit/linux/kernel/git/davem/net-next.git/commit/?id=bde28bc6ad0c575f8b4eebe8cd27e36d6c3b09c6
3] https://bugzilla.redhat.com/show_bug.cgi?id=1233615 
