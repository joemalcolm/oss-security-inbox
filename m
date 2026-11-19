X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/19/5
Message-ID: <20261119075006.GA2914@openwall.com>
Date: Thu, 19 Nov 2026 08:50:06 +0100
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-114938: OpenJDK pre-auth RCE via memory-corruption in Base64 decoder
Content-Type: text/plain; charset=utf-8

On Tue, Nov 17, 2026 at 04:53:52PM -0500, Jan Schaumann wrote:
> Today's internet hyped vulnerability appears to be
> CVE-2026-114938, obligatorily named
> "<something>[2|4]shell".
> 
> In this case, it's Java, specifically a
> memory-corruption vulnerability in OpenJDK's Base64
> decoder on x86-64 processors with AVX-512 VBMI
> support leading to memory disclosure and RCE.
> 
> 
> Calif.io set their priorities on publicity-maxxing, it
> seems:
> 
> "After we disclosed PHP2Shell, we realized many people
> didn't know what PHP was. So we decided to go after
> something a little more familiar: Java."
> 
> Anyway, full details here:
> https://calif.io/java4shell/
> 
> OpenJDK advisory (without any technical details) here:
> https://openjdk.org/groups/vulnerability/advisories/2026-11-17
> 
> Oracle JDK release notes here:
> https://www.oracle.com/security-alerts/cspunov2026.html
> 
> I haven't yet seen a link to the actual source code
> fixes.

The fix merged just in time for this disclosure (but prepared earlier):

https://github.com/openjdk/jdk/commit/5177a70b385c16f26ede191fdac7aaba0bed0f8b

>From 5177a70b385c16f26ede191fdac7aaba0bed0f8b Mon Sep 17 00:00:00 2001
From: Tobias Hartmann <thartmann@...njdk.org>
Date: Tue, 13 Oct 2026 09:27:30 +0000
Subject: [PATCH] 8393212: Base64 optimization improvements

Co-authored-by: Albert Mingkun Yang <ayang@...njdk.org>
Reviewed-by: rhalade, mschoene, chagedorn, rcastanedalo
---
 src/hotspot/cpu/x86/stubGenerator_x86_64.cpp | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/src/hotspot/cpu/x86/stubGenerator_x86_64.cpp b/src/hotspot/cpu/x86/stubGenerator_x86_64.cpp
index d6c5ca188b34..d14929b77735 100644
--- a/src/hotspot/cpu/x86/stubGenerator_x86_64.cpp
+++ b/src/hotspot/cpu/x86/stubGenerator_x86_64.cpp
@@ -3395,6 +3395,10 @@ address StubGenerator::generate_base64_decodeBlock() {
     __ BIND(L_finalBit);
     // Now have 1 to 63 bytes left to decode
 
+    // A padded Base64 tail shorter than one complete block is handled by Java.
+    __ cmpl(length, 4);
+    __ jcc(Assembler::less, L_bruteForce);
+
     // I was going to let Java take care of the final fragment
     // however it will repeatedly call this routine for every 4 bytes
     // of input data, so handle the rest here.

PR with the same fix submitted and closed without merging 3 months earlier:

https://github.com/openjdk/jdk/pull/32781

Third-party "CVE-2026-114938 Runtime Patch (Temporary Patch Provided by Xint)":

https://github.com/theori-io/java4shell-runtime-patch-CVE-2026-114938

Writeup on independent rediscovery of the same issue:

https://www.chainguard.dev/unchained/java4shell-how-a-malformed-base64-string-breaks-the-jvm-on-avx-512

about this rediscovery Dan Lorenc writes on Twitter: "I double checked
mine after and it was found through fuzzing. I only saw that issue when
cleaning things up after."

Alexander
