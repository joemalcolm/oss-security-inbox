Received: (qmail 25637 invoked by uid 550); 15 May 2026 02:56:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1138 invoked from network); 15 May 2026 02:30:08 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <20260515022033.GA10889@localhost.localdomain>
Organization: Gentoo
References: <20260515022033.GA10889@localhost.localdomain>
User-Agent: mu4e 1.14.1; emacs 31.0.60
Date: Fri, 15 May 2026 03:29:56 +0100
Message-ID: <87cxyxe76j.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Logic bug in the Linux kernel's
 __ptrace_may_access() function

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain

Qualys Security Advisory <qsa@qualys.com> writes:

> Hi all,
>
> Today a vulnerability that we reported to security@kernel was fixed:
>
>   https://github.com/torvalds/linux/commit/31e62c2ebbfdc3fe3dbdf5e02c92a9dc67087a3a
>
> [...]
>
> Today we also contacted the linux-distros@openwall, but since exploits
> are already public we were told to send this to oss-security@openwall
> instead, hence this post. We are not publishing our advisory yet, to
> give distributions and users a chance to patch.

Thank you. I'm sorry you've had your moment somewhat spoiled.

I include some notes for readers.

--

Please note that despite the commit title and contents, it is not
exclusive to ptrace, and ptrace restriction mechanisms will not help
here.

As for mitigations: I don't think there are any real ones.

Some ideas:
* Block pidfd_getfd. I don't think it's actually used that heavily and
  there's often fallbacks for older kernels when it is.

* You could remove the world-executable bit from ssh-keysign
  but this is *not* the only binary affected, and this is a very weak
  mitigation indeed __only for the PoC__.

The patch from Linus applies cleanly down to 6.6 or so. For 6.1 (IIRC),
there was a trivial conflict (attached for convenience).

For 5.10, a prerequisite commit is handy:
5bc78502322a5e4eef3f1b2a2813751dc6434143, then apply the 6.1 version.

thanks,
sam


--=-=-=
Content-Type: text/x-patch
Content-Disposition: attachment;
 filename=0001-ptrace-slightly-saner-get_dumpable-logic.patch
Content-Transfer-Encoding: quoted-printable
Content-Description: 6.1 patch

=46rom b3a60ed010ac81882e973042b293fbe26658372e Mon Sep 17 00:00:00 2001
Message-ID: <b3a60ed010ac81882e973042b293fbe26658372e.1778812111.git.sam@ge=
ntoo.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 13 May 2026 11:37:18 -0700
Subject: [PATCH] ptrace: slightly saner 'get_dumpable()' logic

The 'dumpability' of a task is fundamentally about the memory image of
the task - the concept comes from whether it can core dump or not - and
makes no sense when you don't have an associated mm.

And almost all users do in fact use it only for the case where the task
has a mm pointer.

But we have one odd special case: ptrace_may_access() uses 'dumpable' to
check various other things entirely independently of the MM (typically
explicitly using flags like PTRACE_MODE_READ_FSCREDS).  Including for
threads that no longer have a VM (and maybe never did, like most kernel
threads).

It's not what this flag was designed for, but it is what it is.

The ptrace code does check that the uid/gid matches, so you do have to
be uid-0 to see kernel thread details, but this means that the
traditional "drop capabilities" model doesn't make any difference for
this all.

Make it all make a *bit* more sense by saying that if you don't have a
MM pointer, we'll use a cached "last dumpability" flag if the thread
ever had a MM (it will be zero for kernel threads since it is never
set), and require a proper CAP_SYS_PTRACE capability to override.

Reported-by: Qualys Security Advisory <qsa@qualys.com>
Cc: Oleg Nesterov <oleg@redhat.com>
Cc: Kees Cook <kees@kernel.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
(cherry picked from commit 31e62c2ebbfdc3fe3dbdf5e02c92a9dc67087a3a)
(cherry picked from commit 63392f321ec13b37820a2ee2747f726d94fa8a5d)
---
 include/linux/sched.h |  3 +++
 kernel/exit.c         |  1 +
 kernel/ptrace.c       | 22 ++++++++++++++++------
 3 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/include/linux/sched.h b/include/linux/sched.h
index cbf69d0d6952..141039b6d905 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -896,6 +896,9 @@ struct task_struct {
 	 */
 	unsigned			sched_remote_wakeup:1;
=20
+	/* Save user-dumpable when mm goes away */
+	unsigned			user_dumpable:1;
+
 	/* Bit to tell LSMs we're in execve(): */
 	unsigned			in_execve:1;
 	unsigned			in_iowait:1;
diff --git a/kernel/exit.c b/kernel/exit.c
index 888a63f076d5..3c6ddf7320fa 100644
--- a/kernel/exit.c
+++ b/kernel/exit.c
@@ -540,6 +540,7 @@ static void exit_mm(void)
 	 */
 	smp_mb__after_spinlock();
 	local_irq_disable();
+	current->user_dumpable =3D (get_dumpable(mm) =3D=3D SUID_DUMP_USER);
 	current->mm =3D NULL;
 	membarrier_update_current_mm(NULL);
 	enter_lazy_tlb(mm, current);
diff --git a/kernel/ptrace.c b/kernel/ptrace.c
index 0cf547531ddf..8e949e40bfe3 100644
--- a/kernel/ptrace.c
+++ b/kernel/ptrace.c
@@ -288,11 +288,24 @@ static bool ptrace_has_cap(struct user_namespace *ns,=
 unsigned int mode)
 	return ns_capable(ns, CAP_SYS_PTRACE);
 }
=20
+static bool task_still_dumpable(struct task_struct *task, unsigned int mod=
e)
+{
+	struct mm_struct *mm =3D task->mm;
+	if (mm) {
+		if (get_dumpable(mm) =3D=3D SUID_DUMP_USER)
+			return true;
+		return ptrace_has_cap(mm->user_ns, mode);
+	}
+
+	if (task->user_dumpable)
+		return true;
+	return ptrace_has_cap(&init_user_ns, mode);
+}
+
 /* Returns 0 on success, -errno on denial. */
 static int __ptrace_may_access(struct task_struct *task, unsigned int mode)
 {
 	const struct cred *cred =3D current_cred(), *tcred;
-	struct mm_struct *mm;
 	kuid_t caller_uid;
 	kgid_t caller_gid;
=20
@@ -353,11 +366,8 @@ static int __ptrace_may_access(struct task_struct *tas=
k, unsigned int mode)
 	 * Pairs with a write barrier in commit_creds().
 	 */
 	smp_rmb();
-	mm =3D task->mm;
-	if (mm &&
-	    ((get_dumpable(mm) !=3D SUID_DUMP_USER) &&
-	     !ptrace_has_cap(mm->user_ns, mode)))
-	    return -EPERM;
+	if (!task_still_dumpable(task, mode))
+		return -EPERM;
=20
 	return security_ptrace_access_check(task, mode);
 }
--=20
2.54.0


--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmoGhSUbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkJ7D
APoD7S3JRUVkZtXfwr2Jgwr9mghvH/cPPn7FmbDlJlvT9gEA1An5w216kySx1eWu
N+M2X9WpJ+4OXPRiCaX/c1X3KAc=
=SPrU
-----END PGP SIGNATURE-----
--==-=-=--
