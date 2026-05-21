Received: (qmail 7649 invoked by uid 550); 21 May 2026 16:08:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9945 invoked from network); 21 May 2026 04:53:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=frasunek.com;
	s=netium; t=1779339171;
	bh=+1KuJFalorzjv0fT/tJH7em50Po00Iy0eaEcteLcrzg=;
	h=Date:To:From:Subject;
	b=W4lbpjLSPIKCM1tMUmC5NGi1HZdY04dmqdfx21IQ/o/i4AsISG+pYQ1QKz2IG5YLw
	 /ZMJ2rRrSSkC045jrAYxYmSHheZDoUB5mOiNl5dOG/p4y2tuoSNHjZTEGk7KhW9swr
	 DlcZrqUovPAYN4+4BLrvC4sRnnW7+I7lzimn5ftw=
Message-ID: <63a2f265-6bbd-4799-b33d-1e9939d5c004@frasunek.com>
Date: Thu, 21 May 2026 06:52:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: pl
To: oss-security@lists.openwall.com
From: Przemyslaw Frasunek <przemyslaw@frasunek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-45250: FreeBSD setcred(2) stack overflow -> local privilege
 escalation (FatGid)

A kernel stack buffer overflow exists in the setcred(2) system call
introduced in FreeBSD 14.x.  The overflow occurs before any privilege
check, allowing any unprivileged local user to trigger anything from a
kernel panic to full local privilege escalation.

Working LPE exploits have been developed and verified end-to-end
against amd64 GENERIC, both with and without SMAP/SMEP enabled.  The
SMAP/SMEP-safe variant requires no kernel info-leak; it only requires
that zfs.ko be loaded -- the typical case on any FreeBSD installation
with a ZFS pool.


Affected
--------

   Vulnerable + exploitable:
         FreeBSD 14.4-RELEASE (confirmed)
         FreeBSD stable/14 as of the date of this report

   Vulnerable, panic only:
         FreeBSD 15.0 (the sizeof(*groups) typo is still present in
         sys/kern/kern_prot.c, but the surrounding code differs enough
         from 14.4 that the chain primitives developed here do not lift
         the overflow into a working LPE.  The bug remains a kernel
         panic / DoS on this branch.)

   Not affected:
         FreeBSD main (silently fixed in commit 000d5b5, 2025-11-27)
         FreeBSD 13.x and earlier (setcred(2) not present)


Root cause
----------

File:     sys/kern/kern_prot.c
Function: kern_setcred_copyin_supp_groups()

The function takes a gid_t ** as the destination argument:

     static int
     kern_setcred_copyin_supp_groups(struct setcred *const wcred,
         const u_int flags, gid_t *const smallgroups,
         gid_t **const groups)

Both the allocation and the subsequent copyin then use
sizeof(*groups), which on LP64 evaluates to sizeof(gid_t *) == 8
rather than the intended sizeof(gid_t) == 4:

     error = copyin(wcred->sc_supp_groups, *groups + 1,
         wcred->sc_supp_groups_nb * sizeof(*groups));

For the stack path (sc_supp_groups_nb < CRED_SMALLGROUPS_NB == 16),
*groups points at a 16-element gid_t array on the caller's stack.
With nb == 15 the copyin writes 15 * 8 == 120 bytes into a buffer
sized for 15 * 4 == 60 bytes -- a 60-byte stack overflow with fully
attacker-controlled data, reachable from user space without any
privileges.

The overflow happens before any priv_check(), so any local user can
trigger it.


Exploitation
------------

The 60-byte window in user_setcred()'s frame overlaps the spilled td
pointer, saved rbx, saved r12, saved r13, saved r14 and the low 32
bits of saved r15.  sys_setcred() does not save r12 in its own
prologue, so a corrupted r12 popped by user_setcred()'s epilogue
propagates unchanged up to amd64_syscall(), which dereferences it at
+0x155 as if it were the live td_proc pointer:

     mov rcx, [r12 + 0x3f8]
     mov rdi, rbx
     mov esi, eax
     call [rcx + 0xc8]

This yields a two-level indirect call entirely under attacker
control.

On a kernel without SMAP/SMEP, both indirections can be satisfied by
fake structures in user memory; the call target is user-space
shellcode that rewrites the real td_ucred for the calling thread.
Single setcred(2) call, uid 1000 -> uid 0, kernel stays alive.

On a kernel with SMAP/SMEP enabled, both indirections and the call
target must live in kernel memory.  The exploit uses
ZSTD_initCStream_advanced inside zfs.ko as the call target: its
prologue happens to compute rcx + 1 and write it to *(rdi + 0x180),
which is td->td_ucred.  With rcx = K1 = parent_pargs - 1 (a qword
planted in a child process's pargs slab via setproctitle(2)), the
calling thread's effective credential pointer lands inside the
parent's pargs slab, where the attacker has already constructed a
fake struct ucred (cr_uid = 0, cr_prison = &prison0, cr_groups =
&prison0 to satisfy groupmember(0,...) without a NULL deref).  The
exploit then chown(2)+chmod(2)s a setuid-root wrapper for
persistence and exits.

No kernel info-leak is required.  Both kernel symbols the exploit
needs (ZSTD_initCStream_advanced in zfs.ko, prison0 in the kernel
image) are resolved at startup via the unprivileged kldnext(2)+
kldsym(2) interface, so a single binary is portable across the
entire 14.4 patchset (verified through the current patchlevel).


References
----------

   CVE-2026-45250
   FreeBSD-SA-26:18.setcred
     https://www.freebsd.org/security/advisories/FreeBSD-SA-26:18.setcred.asc
   Write-up:    https://fatgid.io/
   PoC sources: https://github.com/venglin/setcred


Timeline
--------

   2026-05-13   secteam@freebsd.org notified.
   2026-05-16   Working LPE PoC against 14.4-RELEASE GENERIC amd64
                without SMAP/SMEP.
   2026-05-19   SMAP/SMEP-safe LPE without any kernel info-leak via
                ZSTD_initCStream_advanced in zfs.ko.
   2026-05-21   FreeBSD-SA-26:18.setcred published, CVE-2026-45250
                assigned.  Public release of write-up and PoCs.
