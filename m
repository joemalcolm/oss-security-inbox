X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5092" "Monday" "5" "August" "2019" "20:05:39" "-0400" "Rich Felker" "dalias@libc.org" "<20190806000539.GQ9017@brightrain.aerifal.cx>" "199" "[oss-security] Re: [musl] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance" nil nil nil "8" "2019080600:05:39" "[oss-security] Re: [musl] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance" (number mark "U       dalias@libc. Aug  5  199/5092  " thread-indent "\"[oss-security] Re: [musl] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance\"\n") "<20190805232737.GA11260@brightrain.aerifal.cx>" ("<20190805232737.GA11260@brightrain.aerifal.cx>") nil nil nil nil nil nil nil "[oss-security] Re: [musl] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31753 invoked by uid 550); 6 Aug 2019 00:05:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30690 invoked from network); 6 Aug 2019 00:05:53 -0000
Date: Mon, 5 Aug 2019 20:05:39 -0400
From: Rich Felker <dalias@libc.org>
To: oss-security@lists.openwall.com
Cc: musl@lists.openwall.com
Message-ID: <20190806000539.GQ9017@brightrain.aerifal.cx>
References: <20190805232737.GA11260@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/WwmFnJnmDyWGHa4"
Content-Disposition: inline
In-Reply-To: <20190805232737.GA11260@brightrain.aerifal.cx>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: Rich Felker <dalias@aerifal.cx>
Subject: [oss-security] Re: [musl] CVE request: musl libc 1.1.23 and earlier x87 float stack
 imbalance

--/WwmFnJnmDyWGHa4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 05, 2019 at 07:27:37PM -0400, Rich Felker wrote:
> I've discovered a flaw in musl libc's arch-specific math assembly code
> for i386, whereby at least the log1p function and possibly others
> return with more than one item on the x87 stack. This can lead to x87
> stack overflow in the execution of subsequent math code, causing it to
> incorrectly produce a NAN in place of the actual result. If floating
> point results are used in flow control, this can lead to runaway wrong
> code execution. For example, in Python (version 3.6.8 tested), at
> least one code path of the dtoa function becomes an infinite loop
> performing what's effectively an unbounded-length memset when entered
> under such a condition.
> 
> This bug is potentially exploitable in software which calls affected
> math functions with inputs under user control. Impact depends on how
> the application handles the ABI-violating x87 state; in Python it
> seems to be limited to producing a crash.
> 
> The bug is present in all versions after 0.9.12, up through the
> current (1.1.23) release. Only 32-bit x86 systems (aka IA32, musl's
> "i386" arch) are affected. Users of other archs, including x86_64, can
> safely ignore this issue.
> 
> Affected users are advised to apply the following patch:
> 
> https://git.musl-libc.org/cgit/musl/patch/?id=f3ed8bfe8a82af1870ddc8696ed4cc1d5aa6b441

The patch contains an error that was missed for unknown reasons,
probably failure to rebuild a file. I'm attaching an aggregate patch
that works. Alternaatively, these two commits can be applied:

https://git.musl-libc.org/cgit/musl/patch/?id=f3ed8bfe8a82af1870ddc8696ed4cc1d5aa6b441
https://git.musl-libc.org/cgit/musl/patch/?id=6818c31c9bc4bbad5357f1de14bedf781e5b349e

--/WwmFnJnmDyWGHa4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="x87_stack_bug.diff"

diff --git a/src/math/i386/asin.s b/src/math/i386/asin.s
index a9f691bf..920d967a 100644
--- a/src/math/i386/asin.s
+++ b/src/math/i386/asin.s
@@ -7,13 +7,10 @@ asinf:
 	cmp $0x01000000,%eax
 	jae 1f
 		# subnormal x, return x with underflow
-	fnstsw %ax
-	and $16,%ax
-	jnz 2f
 	fld %st(0)
 	fmul %st(1)
 	fstps 4(%esp)
-2:	ret
+	ret
 
 .global asinl
 .type asinl,@function
@@ -30,11 +27,8 @@ asin:
 	cmp $0x00200000,%eax
 	jae 1f
 		# subnormal x, return x with underflow
-	fnstsw %ax
-	and $16,%ax
-	jnz 2f
 	fsts 4(%esp)
-2:	ret
+	ret
 1:	fld %st(0)
 	fld1
 	fsub %st(0),%st(1)
diff --git a/src/math/i386/atan.s b/src/math/i386/atan.s
index d73137b2..a26feae1 100644
--- a/src/math/i386/atan.s
+++ b/src/math/i386/atan.s
@@ -10,8 +10,5 @@ atan:
 	fpatan
 	ret
 		# subnormal x, return x with underflow
-1:	fnstsw %ax
-	and $16,%ax
-	jnz 2f
-	fsts 4(%esp)
-2:	ret
+1:	fsts 4(%esp)
+	ret
diff --git a/src/math/i386/atan2.s b/src/math/i386/atan2.s
index a7d2979b..76b95f31 100644
--- a/src/math/i386/atan2.s
+++ b/src/math/i386/atan2.s
@@ -10,8 +10,5 @@ atan2:
 	cmp $0x00200000,%eax
 	jae 1f
 		# subnormal x, return x with underflow
-	fnstsw %ax
-	and $16,%ax
-	jnz 1f
 	fsts 4(%esp)
 1:	ret
diff --git a/src/math/i386/atan2f.s b/src/math/i386/atan2f.s
index 14b88ce5..c9408a90 100644
--- a/src/math/i386/atan2f.s
+++ b/src/math/i386/atan2f.s
@@ -10,9 +10,6 @@ atan2f:
 	cmp $0x01000000,%eax
 	jae 1f
 		# subnormal x, return x with underflow
-	fnstsw %ax
-	and $16,%ax
-	jnz 1f
 	fld %st(0)
 	fmul %st(1)
 	fstps 4(%esp)
diff --git a/src/math/i386/atanf.s b/src/math/i386/atanf.s
index 8caddefa..893beac5 100644
--- a/src/math/i386/atanf.s
+++ b/src/math/i386/atanf.s
@@ -10,10 +10,7 @@ atanf:
 	fpatan
 	ret
 		# subnormal x, return x with underflow
-1:	fnstsw %ax
-	and $16,%ax
-	jnz 2f
-	fld %st(0)
+1:	fld %st(0)
 	fmul %st(1)
 	fstps 4(%esp)
-2:	ret
+	ret
diff --git a/src/math/i386/exp.s b/src/math/i386/exp.s
index c7aa5b6e..df87c497 100644
--- a/src/math/i386/exp.s
+++ b/src/math/i386/exp.s
@@ -7,13 +7,10 @@ expm1f:
 	cmp $0x01000000,%eax
 	jae 1f
 		# subnormal x, return x with underflow
-	fnstsw %ax
-	and $16,%ax
-	jnz 2f
 	fld %st(0)
 	fmul %st(1)
 	fstps 4(%esp)
-2:	ret
+	ret
 
 .global expm1l
 .type expm1l,@function
@@ -30,11 +27,8 @@ expm1:
 	cmp $0x00200000,%eax
 	jae 1f
 		# subnormal x, return x with underflow
-	fnstsw %ax
-	and $16,%ax
-	jnz 2f
 	fsts 4(%esp)
-2:	ret
+	ret
 1:	fldl2e
 	fmulp
 	mov $0xc2820000,%eax
diff --git a/src/math/i386/log1p.s b/src/math/i386/log1p.s
index 6b6929c7..354f391a 100644
--- a/src/math/i386/log1p.s
+++ b/src/math/i386/log1p.s
@@ -16,9 +16,6 @@ log1p:
 	fyl2x
 	ret
 		# subnormal x, return x with underflow
-2:	fnstsw %ax
-	and $16,%ax
-	jnz 1f
-	fsts 4(%esp)
+2:	fsts 4(%esp)
 	fstp %st(1)
-1:	ret
+	ret
diff --git a/src/math/i386/log1pf.s b/src/math/i386/log1pf.s
index c0bcd30f..4d3484cd 100644
--- a/src/math/i386/log1pf.s
+++ b/src/math/i386/log1pf.s
@@ -16,10 +16,7 @@ log1pf:
 	fyl2x
 	ret
 		# subnormal x, return x with underflow
-2:	fnstsw %ax
-	and $16,%ax
-	jnz 1f
-	fxch
+2:	fxch
 	fmul %st(1)
 	fstps 4(%esp)
-1:	ret
+	ret

--/WwmFnJnmDyWGHa4--
