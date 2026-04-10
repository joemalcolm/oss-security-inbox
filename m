Received: (qmail 15538 invoked by uid 550); 10 Apr 2026 15:15:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15476 invoked from network); 10 Apr 2026 15:15:02 -0000
Date: Fri, 10 Apr 2026 11:14:52 -0400
From: Rich Felker <dalias@libc.org>
To: musl@lists.openwall.com, oss-security@lists.openwall.com
Message-ID: <20260410151433.GA15774@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
User-Agent: Mutt/1.9.5 (2018-04-13)
Subject: [oss-security] CVE-2026-40200: musl libc: stack corruption in qsort with
 sufficiently large inputs

--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Overview:

musl libc's implementation of the qsort function may write past the
end of a stack-based buffer when the number of elements to be sorted
exceeds a certain threshold beyond 7 million elements on 32-bit
systems. On 64-bit systems, the threshold is large enough not to
practical, exceeding 34 trillion.



Impact:

Not yet determined. At least a crash and possibly code execution on
32-bit systems. 64-bit systems without at least terrabyte-scale
virtual memory available are not affected.



Details:

The malfunction occurs when the Leonardo heap structure used by the
smoothsort algorithm has a subtree whose size is the Leonardo number
with index equal to the number of bits in the system word size.

Generating this condition depends on the size of the input array and
the preexisting order relationships between the elements according to
the comparison function. It has not been determined whether an
attacker could arrange to obtain control over the flow of execution
through a particular crafting of the input array. However, given that
there are indirect calls to a comparison function in the code path,
the risk is high, possibly even with stack protector enabled.

The root cause is a logic errors in the double-word "count trailing
zeros" and double-word bitshift primitives used here. A first set bit
at the boundary between the low and high word was wrongly counted as
bit 0 rather than bit 32 or 64, and a shift by exactly the number of
bits in a word invoked undefined behavior, possibly corrupting the
bitset.



Affected versions:

The vulnerable code has been present since version 0.7.10.

All subsequent versions up through 1.2.6 are affected.



Mitigation:

All users should apply the patch included/attached below, or upgrade
to 1.2.7 once it becomes available.



Credits:

This bug was first reported by Hankins on the public musl libc mailing
list, but without any indication that it might be a vulnerability.
Subsequent analysis determined that it is. A previously-overlooked
aspect of UB in the bit shifting was discovered by Luca Kellermann.

--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2026-40200.diff"

From 228da39e38c1cae13cbe637e771412c1984dba5d Mon Sep 17 00:00:00 2001
From: Rich Felker <dalias@aerifal.cx>
Date: Thu, 9 Apr 2026 22:51:30 -0400
Subject: [PATCH 1/3] qsort: fix leonardo heap corruption from bug in
 doubleword ctz primitive

the pntz function, implementing a "count trailing zeros" variant for a
bit vector consisting of two size_t words, erroneously returned zero
rather than the number of bits in the low word when the first bit set
was the low bit of the high word.

as a result, a loop in the trinkle function which should have a
guaranteed small bound on the number of iterations, could run
unboundedly, thereby overflowing a stack-based working-space array
which was sized for the bound.

CVE-2026-40200 has been assigned for this issue.
---
 src/stdlib/qsort.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/src/stdlib/qsort.c b/src/stdlib/qsort.c
index ab79dc6f..13219ab3 100644
--- a/src/stdlib/qsort.c
+++ b/src/stdlib/qsort.c
@@ -34,11 +34,11 @@
 
 typedef int (*cmpfun)(const void *, const void *, void *);
 
+/* returns index of first bit set, excluding the low bit assumed to always
+ * be set, starting from low bit of p[0] up through high bit of p[1] */
 static inline int pntz(size_t p[2]) {
-	int r = ntz(p[0] - 1);
-	if(r != 0 || (r = 8*sizeof(size_t) + ntz(p[1])) != 8*sizeof(size_t)) {
-		return r;
-	}
+	if (p[0] != 1) return ntz(p[0] - 1);
+	if (p[1]) return 8*sizeof(size_t) + ntz(p[1]);
 	return 0;
 }
 
-- 
2.21.0


From b3291b9a9f77f1f993d2b4f8c68a26cf09221ae7 Mon Sep 17 00:00:00 2001
From: Rich Felker <dalias@aerifal.cx>
Date: Thu, 9 Apr 2026 23:40:53 -0400
Subject: [PATCH 2/3] qsort: hard-preclude oob array writes independent of any
 invariants

while the root cause of CVE-2026-40200 was a faulty ctz primitive, the
fallout of the bug would have been limited to erroneous sorting or
infinite loop if not for the stores to a stack-based array that
depended on trusting invariants in order not to go out of bounds.

increase the size of the array to a power of two so that we can mask
indices into it to force them into range. in the absence of any
further bug, the masking is a no-op, but it does not have any
measurable performance cost, and it makes spatial memory safety
trivial to prove (and for readers not familiar with the algorithms to
trust).
---
 src/stdlib/qsort.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/src/stdlib/qsort.c b/src/stdlib/qsort.c
index 13219ab3..e4bce9f7 100644
--- a/src/stdlib/qsort.c
+++ b/src/stdlib/qsort.c
@@ -89,10 +89,16 @@ static inline void shr(size_t p[2], int n)
 	p[1] >>= n;
 }
 
+/* power-of-two length for working array so that we can mask indices and
+ * not depend on any invariant of the algorithm for spatial memory safety.
+ * the original size was just 14*sizeof(size_t)+1 */
+#define AR_LEN  (16 * sizeof(size_t))
+#define AR_MASK (AR_LEN - 1)
+
 static void sift(unsigned char *head, size_t width, cmpfun cmp, void *arg, int pshift, size_t lp[])
 {
 	unsigned char *rt, *lf;
-	unsigned char *ar[14 * sizeof(size_t) + 1];
+	unsigned char *ar[AR_LEN];
 	int i = 1;
 
 	ar[0] = head;
@@ -104,16 +110,16 @@ static void sift(unsigned char *head, size_t width, cmpfun cmp, void *arg, int p
 			break;
 		}
 		if(cmp(lf, rt, arg) >= 0) {
-			ar[i++] = lf;
+			ar[i++ & AR_MASK] = lf;
 			head = lf;
 			pshift -= 1;
 		} else {
-			ar[i++] = rt;
+			ar[i++ & AR_MASK] = rt;
 			head = rt;
 			pshift -= 2;
 		}
 	}
-	cycle(width, ar, i);
+	cycle(width, ar, i & AR_MASK);
 }
 
 static void trinkle(unsigned char *head, size_t width, cmpfun cmp, void *arg, size_t pp[2], int pshift, int trusty, size_t lp[])
@@ -121,7 +127,7 @@ static void trinkle(unsigned char *head, size_t width, cmpfun cmp, void *arg, si
 	unsigned char *stepson,
 	              *rt, *lf;
 	size_t p[2];
-	unsigned char *ar[14 * sizeof(size_t) + 1];
+	unsigned char *ar[AR_LEN];
 	int i = 1;
 	int trail;
 
@@ -142,7 +148,7 @@ static void trinkle(unsigned char *head, size_t width, cmpfun cmp, void *arg, si
 			}
 		}
 
-		ar[i++] = stepson;
+		ar[i++ & AR_MASK] = stepson;
 		head = stepson;
 		trail = pntz(p);
 		shr(p, trail);
@@ -150,7 +156,7 @@ static void trinkle(unsigned char *head, size_t width, cmpfun cmp, void *arg, si
 		trusty = 0;
 	}
 	if(!trusty) {
-		cycle(width, ar, i);
+		cycle(width, ar, i & AR_MASK);
 		sift(head, width, cmp, arg, pshift, lp);
 	}
 }
-- 
2.21.0


From 5122f9f3c99fee366167c5de98b31546312921ab Mon Sep 17 00:00:00 2001
From: Luca Kellermann <mailto.luca.kellermann@gmail.com>
Date: Fri, 10 Apr 2026 03:03:22 +0200
Subject: [PATCH 3/3] qsort: fix shift UB in shl and shr

if shl() or shr() are called with n==8*sizeof(size_t), n is adjusted
to 0. the shift by (sizeof(size_t) * 8 - n) that then follows will
consequently shift by the width of size_t, which is UB and in practice
produces an incorrect result.

return early in this case. the bitvector p was already shifted by the
required amount.
---
 src/stdlib/qsort.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/src/stdlib/qsort.c b/src/stdlib/qsort.c
index e4bce9f7..28607450 100644
--- a/src/stdlib/qsort.c
+++ b/src/stdlib/qsort.c
@@ -71,6 +71,7 @@ static inline void shl(size_t p[2], int n)
 		n -= 8 * sizeof(size_t);
 		p[1] = p[0];
 		p[0] = 0;
+		if (!n) return;
 	}
 	p[1] <<= n;
 	p[1] |= p[0] >> (sizeof(size_t) * 8 - n);
@@ -83,6 +84,7 @@ static inline void shr(size_t p[2], int n)
 		n -= 8 * sizeof(size_t);
 		p[0] = p[1];
 		p[1] = 0;
+		if (!n) return;
 	}
 	p[0] >>= n;
 	p[0] |= p[1] << (sizeof(size_t) * 8 - n);
-- 
2.21.0


--BOKacYhQ+x31HxR3--
