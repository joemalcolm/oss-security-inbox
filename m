X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["15181" "Tuesday" "9" "October" "2018" "13:41:26" "+0200" "Solar Designer" "solar@openwall.com" "<20181009114126.GA7166@openwall.com>" "333" "[oss-security] Linux kernel: \"Meltdown leaks with Global kernel mapping\"" "^Cc:" nil nil "10" "2018100911:41:26" "[oss-security] Linux kernel: \"Meltdown leaks with Global kernel mapping\"" (number mark "        solar@openwa Oct  9  333/15181 " thread-indent "\"[oss-security] Linux kernel: \"Meltdown leaks with Global kernel mapping\"\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1266 invoked by uid 550); 9 Oct 2018 11:41:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1076 invoked from network); 9 Oct 2018 11:41:34 -0000
Message-ID: <20181009114126.GA7166@openwall.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Date: Tue, 9 Oct 2018 13:41:26 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: "Meltdown leaks with Global kernel mapping"
To: oss-security@lists.openwall.com

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I didn't look into this closely, but I think it needs to be brought in
here.  Back in August, Dave Hansen reported what may be ways to bypass
PTI protection in the Linux kernel in some cases.  Dave's fixes got into
Linux 4.18.5, but maybe not into any other releases nor into distros,
except for those that updated to 4.18.5 (apparently, some SUSE branch
and some Yocto branch?)

Start of a relevant thread:

https://lists.openwall.net/linux-kernel/2018/08/02/976

The Subject says "close two Meltdown leaks with Global kernel mapping",
but it isn't immediately clear to me what "two" leaks there are.  Only
one appears to be clearly described:

https://lists.openwall.net/linux-kernel/2018/08/02/979

The corresponding commit:

https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?h=x86/pti-urgent&id=c40a56a7818cfe735fc93a69e1875f8bba834483

There are mentions of "r/w kernel text issue" and "unused hole" issue -
is this why "two"?  But "r/w kernel text" feels irrelevant to Meltdown.

I've attached the two LKML postings above for archival on oss-security
as well.

Alexander

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="lkml-close-two-meltdown-leaks.txt"

Date:   Thu, 02 Aug 2018 15:58:23 -0700
From:   Dave Hansen <dave.hansen@...ux.intel.com>
To:     linux-kernel@...r.kernel.org
Cc:     Dave Hansen <dave.hansen@...ux.intel.com>, keescook@...gle.com,
        tglx@...utronix.de, mingo@...nel.org, aarcange@...hat.com,
        jgross@...e.com, jpoimboe@...hat.com, gregkh@...uxfoundation.org,
        peterz@...radead.org, hughd@...gle.com,
        torvalds@...ux-foundation.org, bp@...en8.de, luto@...nel.org,
        ak@...ux.intel.com
Subject: [PATCH 0/7] [v2] x86/mm/pti: close two Meltdown leaks with Global kernel mapping


The fixes for the problem Hugh reported took a bit more surgery
than I would have liked, but they do appear to work.  Note that
the last two patches are unnecessary cleanups that could be removed
from backports.

Changes from v1:
 * Modify set_memory_np() to avoid messing with the direct map
   by limiting its changes to the high kernel image map.

--

This applies to 4.17 and 4.18.

Thanks to Hugh Dickins for initially finding the r/w kernel text
issue and coming up with an initial fix.  I found the "unused
hole" part and came up with different approach for fixing the
mess.

--

Background:

Process Context IDentifiers (PCIDs) are a hardware feature that
allows TLB entries to survive page table switches (CR3 writes).
As an optimization, the PTI code currently allows the kernel image
to be Global when running on hardware without PCIDs.  This results
in fewer TLB misses, especially upon entry.

The downside is that these Global areas are theoretically
susceptible to Meltdown.  The logic is that there are no secrets
in the kernel image, so why pay the cost of TLB misses.

Problem:

The current PTI code leaves the entire area of the kernel binary
between '_text' and '_end' as Global (on non-PCID hardware).
However, that range contains both read-write kernel data, and two
"unused" holes in addition to text.  The areas which are not text
or read-only might contain secrets once they are freed back into
the allocator.

This issue affects systems which are susceptible to Meltdown, do not
have PCIDs and which are using the default PTI_AUTO mode (no
pti=on/off on the cmdline).

PCIDs became generally available for servers in ~2010 (Westmere)
and desktop (client) parts in roughly 2011 (Sandybridge).  This
is not expected to affect anything newer than that.

Solution:

The solution for the read-write area is to clear the global bit
for the area (patch #1).

The "unused" holes need a bit more work since we free them in a
bit of an ad-hoc way, but we fix this up in patches 2-5.

Cc: Kees Cook <keescook@...gle.com>
Cc: Thomas Gleixner <tglx@...utronix.de>
Cc: Ingo Molnar <mingo@...nel.org>
Cc: Andrea Arcangeli <aarcange@...hat.com>
Cc: Juergen Gross <jgross@...e.com>
Cc: Josh Poimboeuf <jpoimboe@...hat.com>
Cc: Greg Kroah-Hartman <gregkh@...uxfoundation.org>
Cc: Peter Zijlstra <peterz@...radead.org>
Cc: Hugh Dickins <hughd@...gle.com>
Cc: Linus Torvalds <torvalds@...ux-foundation.org>
Cc: Borislav Petkov <bp@...en8.de>
Cc: Andy Lutomirski <luto@...nel.org>
Cc: Andi Kleen <ak@...ux.intel.com>

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="lkml-remove-freed-kernel-image-areas.txt"

Date:   Thu, 02 Aug 2018 15:58:31 -0700
From:   Dave Hansen <dave.hansen@...ux.intel.com>
To:     linux-kernel@...r.kernel.org
Cc:     Dave Hansen <dave.hansen@...ux.intel.com>, keescook@...gle.com,
        tglx@...utronix.de, mingo@...nel.org, aarcange@...hat.com,
        jgross@...e.com, jpoimboe@...hat.com, gregkh@...uxfoundation.org,
        peterz@...radead.org, hughd@...gle.com,
        torvalds@...ux-foundation.org, bp@...en8.de, luto@...nel.org,
        ak@...ux.intel.com
Subject: [PATCH 5/7] x86/mm/init: remove freed kernel image areas from alias mapping


From: Dave Hansen <dave.hansen@...ux.intel.com>

The kernel image is mapped into two places in the virtual address
space (addresses without KASLR, of course):

        1. The kernel direct map (0xffff880000000000)
        2. The "high kernel map" (0xffffffff81000000)

We actually execute out of #2.  If we get the address of a kernel
symbol, it points to #2, but almost all physical-to-virtual
translations point to #1.

Parts of the "high kernel map" alias are mapped in the userspace
page tables with the Global bit for performance reasons.  The
parts that we map to userspace do not (er, should not) have
secrets.

This is fine, except that some areas in the kernel image that
are adjacent to the non-secret-containing areas are unused holes.
We free these holes back into the normal page allocator and
reuse them as normal kernel memory.  The memory will, of course,
get *used* via the normal map, but the alias mapping is kept.

This otherwise unused alias mapping of the holes will, by default
keep the Global bit, be mapped out to userspace, and be
vulnerable to Meltdown.

Remove the alias mapping of these pages entirely.  This is likely
to fracture the 2M page mapping the kernel image near these areas,
but this should affect a minority of the area.

The pageattr code changes *all* aliases mapping the physical pages
that it operates on (by default).  We only want to modify a single
alias, so we need to tweak its behavior.

This unmapping behavior is currently dependent on PTI being in
place.  Going forward, we should at least consider doing this for
all configurations.  Having an extra read-write alias for memory
is not exactly ideal for debugging things like random memory
corruption and this does undercut features like DEBUG_PAGEALLOC
or future work like eXclusive Page Frame Ownership (XPFO).

Before this patch:

current_kernel:---[ High Kernel Mapping ]---
current_kernel-0xffffffff80000000-0xffffffff81000000          16M                               pmd
current_kernel-0xffffffff81000000-0xffffffff81e00000          14M     ro         PSE     GLB x  pmd
current_kernel-0xffffffff81e00000-0xffffffff81e11000          68K     ro                 GLB x  pte
current_kernel-0xffffffff81e11000-0xffffffff82000000        1980K     RW                     NX pte
current_kernel-0xffffffff82000000-0xffffffff82600000           6M     ro         PSE     GLB NX pmd
current_kernel-0xffffffff82600000-0xffffffff82c00000           6M     RW         PSE         NX pmd
current_kernel-0xffffffff82c00000-0xffffffff82e00000           2M     RW                     NX pte
current_kernel-0xffffffff82e00000-0xffffffff83200000           4M     RW         PSE         NX pmd
current_kernel-0xffffffff83200000-0xffffffffa0000000         462M                               pmd

  current_user:---[ High Kernel Mapping ]---
  current_user-0xffffffff80000000-0xffffffff81000000          16M                               pmd
  current_user-0xffffffff81000000-0xffffffff81e00000          14M     ro         PSE     GLB x  pmd
  current_user-0xffffffff81e00000-0xffffffff81e11000          68K     ro                 GLB x  pte
  current_user-0xffffffff81e11000-0xffffffff82000000        1980K     RW                     NX pte
  current_user-0xffffffff82000000-0xffffffff82600000           6M     ro         PSE     GLB NX pmd
  current_user-0xffffffff82600000-0xffffffffa0000000         474M                               pmd


After this patch:

current_kernel:---[ High Kernel Mapping ]---
current_kernel-0xffffffff80000000-0xffffffff81000000          16M                               pmd
current_kernel-0xffffffff81000000-0xffffffff81e00000          14M     ro         PSE     GLB x  pmd
current_kernel-0xffffffff81e00000-0xffffffff81e11000          68K     ro                 GLB x  pte
current_kernel-0xffffffff81e11000-0xffffffff82000000        1980K                               pte
current_kernel-0xffffffff82000000-0xffffffff82400000           4M     ro         PSE     GLB NX pmd
current_kernel-0xffffffff82400000-0xffffffff82488000         544K     ro                     NX pte
current_kernel-0xffffffff82488000-0xffffffff82600000        1504K                               pte
current_kernel-0xffffffff82600000-0xffffffff82c00000           6M     RW         PSE         NX pmd
current_kernel-0xffffffff82c00000-0xffffffff82c0d000          52K     RW                     NX pte
current_kernel-0xffffffff82c0d000-0xffffffff82dc0000        1740K                               pte

  current_user:---[ High Kernel Mapping ]---
  current_user-0xffffffff80000000-0xffffffff81000000          16M                               pmd
  current_user-0xffffffff81000000-0xffffffff81e00000          14M     ro         PSE     GLB x  pmd
  current_user-0xffffffff81e00000-0xffffffff81e11000          68K     ro                 GLB x  pte
  current_user-0xffffffff81e11000-0xffffffff82000000        1980K                               pte
  current_user-0xffffffff82000000-0xffffffff82400000           4M     ro         PSE     GLB NX pmd
  current_user-0xffffffff82400000-0xffffffff82488000         544K     ro                     NX pte
  current_user-0xffffffff82488000-0xffffffff82600000        1504K                               pte
  current_user-0xffffffff82600000-0xffffffffa0000000         474M                               pmd

Signed-off-by: Dave Hansen <dave.hansen@...ux.intel.com>
Cc: Kees Cook <keescook@...gle.com>
Cc: Thomas Gleixner <tglx@...utronix.de>
Cc: Ingo Molnar <mingo@...nel.org>
Cc: Andrea Arcangeli <aarcange@...hat.com>
Cc: Juergen Gross <jgross@...e.com>
Cc: Josh Poimboeuf <jpoimboe@...hat.com>
Cc: Greg Kroah-Hartman <gregkh@...uxfoundation.org>
Cc: Peter Zijlstra <peterz@...radead.org>
Cc: Hugh Dickins <hughd@...gle.com>
Cc: Linus Torvalds <torvalds@...ux-foundation.org>
Cc: Borislav Petkov <bp@...en8.de>
Cc: Andy Lutomirski <luto@...nel.org>
Cc: Andi Kleen <ak@...ux.intel.com>
---

 b/arch/x86/include/asm/set_memory.h |    1 +
 b/arch/x86/mm/init.c                |   25 +++++++++++++++++++++++--
 b/arch/x86/mm/pageattr.c            |   13 +++++++++++++
 3 files changed, 37 insertions(+), 2 deletions(-)

diff -puN arch/x86/include/asm/set_memory.h~x86-unmap-freed-areas-from-kernel-image arch/x86/include/asm/set_memory.h
--- a/arch/x86/include/asm/set_memory.h~x86-unmap-freed-areas-from-kernel-image 2018-08-02 14:14:49.462483274 -0700
+++ b/arch/x86/include/asm/set_memory.h 2018-08-02 14:14:49.471483274 -0700
@@ -46,6 +46,7 @@ int set_memory_np(unsigned long addr, in
 int set_memory_4k(unsigned long addr, int numpages);
 int set_memory_encrypted(unsigned long addr, int numpages);
 int set_memory_decrypted(unsigned long addr, int numpages);
+int set_memory_np_noalias(unsigned long addr, int numpages);

 int set_memory_array_uc(unsigned long *addr, int addrinarray);
 int set_memory_array_wc(unsigned long *addr, int addrinarray);
diff -puN arch/x86/mm/init.c~x86-unmap-freed-areas-from-kernel-image arch/x86/mm/init.c
--- a/arch/x86/mm/init.c~x86-unmap-freed-areas-from-kernel-image        2018-08-02 14:14:49.463483274 -0700
+++ b/arch/x86/mm/init.c        2018-08-02 14:14:49.471483274 -0700
@@ -780,8 +780,29 @@ void free_init_pages(char *what, unsigne
  */
 void free_kernel_image_pages(void *begin, void *end)
 {
-       free_init_pages("unused kernel image",
-                       (unsigned long)begin, (unsigned long)end);
+       unsigned long begin_ul = (unsigned long)begin;
+       unsigned long end_ul = (unsigned long)end;
+       unsigned long len_pages = (end_ul - begin_ul) >> PAGE_SHIFT;
+
+
+       free_init_pages("unused kernel image", begin_ul, end_ul);
+
+       /*
+        * PTI maps some of the kernel into userspace.  For
+        * performance, this includes some kernel areas that
+        * do not contain secrets.  Those areas might be
+        * adjacent to the parts of the kernel image being
+        * freed, which may contain secrets.  Remove the
+        * "high kernel image mapping" for these freed areas,
+        * ensuring they are not even potentially vulnerable
+        * to Meltdown regardless of the specific optimizations
+        * PTI is currently using.
+        *
+        * The "noalias" prevents unmapping the direct map
+        * alias which is needed to access the freed pages.
+        */
+       if (cpu_feature_enabled(X86_FEATURE_PTI))
+               set_memory_np_noalias(begin_ul, len_pages);
 }

 void __ref free_initmem(void)
diff -puN arch/x86/mm/pageattr.c~x86-unmap-freed-areas-from-kernel-image arch/x86/mm/pageattr.c
--- a/arch/x86/mm/pageattr.c~x86-unmap-freed-areas-from-kernel-image    2018-08-02 14:14:49.466483274 -0700
+++ b/arch/x86/mm/pageattr.c    2018-08-02 14:14:49.472483274 -0700
@@ -53,6 +53,7 @@ static DEFINE_SPINLOCK(cpa_lock);
 #define CPA_FLUSHTLB 1
 #define CPA_ARRAY 2
 #define CPA_PAGES_ARRAY 4
+#define CPA_NO_CHECK_ALIAS 8 /* Do not search for aliases */

 #ifdef CONFIG_PROC_FS
 static unsigned long direct_pages_count[PG_LEVEL_NUM];
@@ -1486,6 +1487,9 @@ static int change_page_attr_set_clr(unsi

        /* No alias checking for _NX bit modifications */
        checkalias = (pgprot_val(mask_set) | pgprot_val(mask_clr)) != _PAGE_NX;
+       /* Never check aliases if the caller asks for it explicitly: */
+       if (checkalias && (in_flag & CPA_NO_CHECK_ALIAS))
+               checkalias = 0;

        ret = __change_page_attr_set_clr(&cpa, checkalias);

@@ -1772,6 +1776,15 @@ int set_memory_np(unsigned long addr, in
        return change_page_attr_clear(&addr, numpages, __pgprot(_PAGE_PRESENT), 0);
 }

+int set_memory_np_noalias(unsigned long addr, int numpages)
+{
+       int cpa_flags = CPA_NO_CHECK_ALIAS;
+
+       return change_page_attr_set_clr(&addr, numpages, __pgprot(0),
+                                       __pgprot(_PAGE_PRESENT), 0,
+                                       cpa_flags, NULL);
+}
+
 int set_memory_4k(unsigned long addr, int numpages)
 {
        return change_page_attr_set_clr(&addr, numpages, __pgprot(0),
_

--pf9I7BMVVzbSWLtt--
