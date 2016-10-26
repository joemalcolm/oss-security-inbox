X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8912" "Wednesday" "26" "October" "2016" "21:13:57" "+0200" "Solar Designer" "solar@openwall.com" "<20161026191357.GA22705@openwall.com>" "230" "Re: [oss-security] CVE-2016-5195 \"Dirty COW\" Linux kernel privilege escalation vulnerability" nil nil nil "10" "2016102619:13:57" "[oss-security] CVE-2016-5195 \"Dirty COW\" Linux kernel privilege escalation vulnerability" (number mark "U       solar@openwa Oct 26  230/8912  " thread-indent "\"Re: [oss-security] CVE-2016-5195 \"Dirty COW\" Linux kernel privilege escalation vulnerability\"\n") "<20161021003104.GA16605@openwall.com>" ("<20161021003104.GA16605@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30258 invoked by uid 550); 26 Oct 2016 19:16:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29920 invoked from network); 26 Oct 2016 19:15:13 -0000
Date: Wed, 26 Oct 2016 21:13:57 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20161026191357.GA22705@openwall.com>
References: <20161021003104.GA16605@openwall.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline
In-Reply-To: <20161021003104.GA16605@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2016-5195 "Dirty COW" Linux kernel privilege escalation vulnerability

--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 21, 2016 at 02:31:04AM +0200, Solar Designer wrote:
> This was brought to the linux-distros list (and briefly inadvertently to
> the distros list, although discussion continued on linux-distros only)
> on October 13 and it was made public yesterday, so it must be in here as
> well.  Unfortunately, no one posted about it in here so far (the person
> who brought this to [linux-]distros must have done so!), and I don't
> have time to make a proper posting (with full detail in the message
> itself, as per oss-security list content guidelines), but I figured it's
> better for me to post something than nothing at all.
> 
> Red Hat's description:
> 
> "A race condition was found in the way the Linux kernel's memory
> subsystem handled the copy-on-write (COW) breakage of private read-only
> memory mappings.  An unprivileged local user could use this flaw to gain
> write access to otherwise read-only memory mappings and thus increase
> their privileges on the system."

A lot was said about this vulnerability in lots of places, so I won't
dare to try and repeat all or post it in here (sorry!)  Many exploits
exist now, as summarized at:

https://github.com/dirtycow/dirtycow.github.io/wiki/PoCs

The exploits vary in whether they use /proc/self/mem (newer kernels
only) or PTRACE_POKEDATA (both newer and older kernels) and in what they
target: generic read-only write, SUID root program, libc, or vDSO.
All of them (that I've seen) also use MADV_DONTNEED.

vDSO appears to be the scariest target in that it allows for sandbox or
container escape without requiring any other sharing with the outside
world (no shared files, no KSM).  Some kernels have sysctl's (varying
across kernel versions and architectures) that allow to disable vDSO on
a live system, but keep in mind that already-started processes retain
their vDSOs and may in many scenarios be used for the attack.  Also,
disabling vDSO does nothing to prevent attacks targeting something else
(same sandbox/container or other page sharing with the outside).

Luckily, many sandboxes exclude /proc and ptrace, which so far prevents
all of these exploits from working.

Surprisingly (to me), the published exploits appear to work as-is even
on systems with only one logical CPU (except on RHEL5 and alikes, where
2+ CPUs appear to be needed, but don't count on this).

Here are a couple of challenges by me (and whoever is behind the
DirtyCow website kindly backed these with prizes of t-shirts priced at
thousands of dollars each):

1. Exploit DirtyCow without MADV_DONTNEED.

2. Exploit DirtyCow on RHEL5 with only 1 logical CPU.

and here's a new obvious one I add just now:

3. Exploit DirtyCow without /proc/self/mem _and_ without PTRACE_POKE*.

Bonus points if you achieve several of these in one exploit.

Many distros have released updates by now.  This includes RHEL7 & RHEL6,
but (as far as I can tell) not yet RHEL5.  Since these legacy kernels
still matter to me and possibly to others, attached are two patches for
RHEL5'ish OpenVZ kernels, which should be reusable on other RHEL5-alikes.

rhel5-owl-dirtycow.diff is what went into the kernel updates we released
for Owl a couple of days ago - it is a mitigation for MADV_DONTNEED and
PTRACE_POKE*, protecting both through write-locking mmap_sem (thus,
against each other as well as against other code paths that read-lock
mmap_sem).

rhel5-openvz-dirtycow.diff is interdiff between OpenVZ's older
"-408.el5.028stab120.2" kernels and "-408.el5.028stab120.3" they just
released today.  Unlike the mitigation in Owl, this is a backport of the
fix from newer kernels.  I have yet to test this one myself.  (I briefly
tried to produce a backport as well, but gave up after my half-baked
attempts failed testing.  I see this patch does at least one thing that
I missed in my backport attempts.  Kudos to OpenVZ project, who had also
released updates for their newer kernels.)

These two patches can also be reasonably used together.  (I think we'll
do just that in Owl, assuming that OpenVZ's fix passes our testing.
And yes, Owl is essentially a legacy system now, arguably having served
its purpose years ago, but we still maintain it for some deployments.)

> https://access.redhat.com/security/cve/cve-2016-5195
> https://bugzilla.redhat.com/show_bug.cgi?id=1384344
> https://security-tracker.debian.org/tracker/CVE-2016-5195
> http://www.v3.co.uk/v3-uk/news/2474845/linux-users-urged-to-protect-against-dirty-cow-security-flaw
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=19be0eaffa3ac7d8eb6784ad9bdbc7d67ed8e619
> https://lkml.org/lkml/2016/10/19/860
> https://dirtycow.ninja
> https://github.com/dirtycow/dirtycow.github.io/wiki/VulnerabilityDetails
> https://twitter.com/DirtyCOWVuln

Alexander

--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="rhel5-owl-dirtycow.diff"

diff -u linux-2.6.18-408.el5.028stab120.1-owl/kernel/ptrace.c linux-2.6.18-408.el5.028stab120.1-owl/kernel/ptrace.c
--- linux-2.6.18-408.el5.028stab120.1-owl/kernel/ptrace.c	2016-08-23 15:41:27 +0000
+++ linux-2.6.18-408.el5.028stab120.1-owl/kernel/ptrace.c	2016-10-23 19:55:50 +0000
@@ -41,7 +41,7 @@
 	struct page *page;
 	void *old_buf = buf;
 
-	down_read(&mm->mmap_sem);
+	down_write(&mm->mmap_sem);
 	/* ignore errors, just check how much was sucessfully transfered */
 	while (len) {
 		int bytes, ret, offset;
@@ -72,7 +72,7 @@
 		buf += bytes;
 		addr += bytes;
 	}
-	up_read(&mm->mmap_sem);
+	up_write(&mm->mmap_sem);
 	
 	return buf - old_buf;
 }
--- linux-2.6.18-408.el5.028stab120.1/mm/madvise.c	2016-01-25 08:11:41 +0000
+++ linux-2.6.18-408.el5.028stab120.1-owl/mm/madvise.c	2016-10-23 19:56:21 +0000
@@ -23,7 +23,6 @@ static int madvise_need_mmap_write(int b
 	switch (behavior) {
 	case MADV_REMOVE:
 	case MADV_WILLNEED:
-	case MADV_DONTNEED:
 	case MADV_DEACTIVATE:
 		return 0;
 	default:

--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="rhel5-openvz-dirtycow.diff"

diff -u linux-2.6.18.ovz/include/linux/mm.h linux-2.6.18.ovz/include/linux/mm.h
--- linux-2.6.18.ovz/include/linux/mm.h	2016-01-25 00:11:40.595109950 -0800
+++ linux-2.6.18.ovz/include/linux/mm.h	2016-10-26 01:59:40.000394819 -0700
@@ -1200,6 +1200,8 @@
 #define FOLL_TOUCH	0x02	/* mark page accessed */
 #define FOLL_GET	0x04	/* do get_page on page */
 #define FOLL_ANON	0x08	/* give ZERO_PAGE if no pgtable */
+#define FOLL_FORCE	0x10	/* get_user_pages read/write w/o permission */
+#define FOLL_COW	0x800	/* internal GUP flag */
 
 #ifdef CONFIG_XEN
 typedef int (*pte_fn_t)(pte_t *pte, struct page *pmd_page, unsigned long addr,
diff -u linux-2.6.18.ovz/mm/memory.c linux-2.6.18.ovz/mm/memory.c
--- linux-2.6.18.ovz/mm/memory.c	2016-01-25 00:11:40.702109950 -0800
+++ linux-2.6.18.ovz/mm/memory.c	2016-10-26 01:59:40.169394819 -0700
@@ -1131,6 +1131,22 @@
 	return NULL;
 }
 
+static inline bool can_follow_write_pte(pte_t pte, struct page *page,
+					unsigned int flags)
+{
+	if (pte_write(pte))
+		return true;
+
+	/*
+	 * Make sure that we are really following CoWed page. We do not really
+	 * have to care about exclusiveness of the page because we only want
+	 * to ensure that once COWed page hasn't disappeared in the meantime.
+	 */
+	if ((flags & FOLL_FORCE) && (flags & FOLL_COW))
+		return page && PageAnon(page);
+
+	return false;
+}
 
 /*
  * Do a quick page-table lookup for a single page.
@@ -1180,10 +1196,14 @@
 	if (!pte_present(pte))
 		goto no_page;
-	if ((flags & FOLL_WRITE) && !pte_write(pte))
-		goto unlock;
+
 	page = vm_normal_page(vma, address, pte);
 	if (unlikely(!page))
 		goto bad_page;
 
+	if ((flags & FOLL_WRITE) && !can_follow_write_pte(pte, page, flags)) {
+		page = NULL;
+		goto unlock;
+	}
+
 	if (flags & FOLL_GET)
 		get_page(page);
@@ -1350,6 +1370,8 @@
 			foll_flags |= FOLL_GET;
 		if (!write && use_zero_page(vma))
 			foll_flags |= FOLL_ANON;
+		if (force)
+			foll_flags |= FOLL_FORCE;
 
 		do {
 			struct page *page;
@@ -1365,11 +1387,12 @@
 				/*
 				 * The VM_FAULT_WRITE bit tells us that do_wp_page has
 				 * broken COW when necessary, even if maybe_mkwrite
-				 * decided not to set pte_write. We can thus safely do
-				 * subsequent page lookups as if they were reads.
+				 * decided not to set pte_write. We cannot simply drop
+				 * FOLL_WRITE here because the COWed page might be gone by
+				 * the time we do the subsequent page lookups.
 				 */
 				if (ret & VM_FAULT_WRITE)
-					foll_flags &= ~FOLL_WRITE;
+					foll_flags |= FOLL_COW;
 				
 				switch (ret & ~VM_FAULT_WRITE) {
 				case VM_FAULT_MINOR:
@@ -1401,6 +1424,7 @@
 			i++;
 			start += PAGE_SIZE;
 			len--;
+			foll_flags &= ~FOLL_COW;
 		} while (len && start < vma->vm_end);
 	} while (len);
 	return i;

--Qxx1br4bt0+wmkIi--
