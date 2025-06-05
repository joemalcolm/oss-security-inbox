Received: (qmail 7561 invoked by uid 550); 5 Jun 2025 03:41:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18160 invoked from network); 5 Jun 2025 03:31:50 -0000
Date: Thu, 5 Jun 2025 05:31:42 +0200
From: Solar Designer <solar@openwall.com>
To: Vegard Nossum <vegard.nossum@oracle.com>
Cc: oss-security@lists.openwall.com,
	Qualys Security Advisory <qsa@qualys.com>
Message-ID: <20250605033141.GA26733@openwall.com>
References: <20250529171556.GA9260@localhost.localdomain> <20250603040528.GA12667@openwall.com> <8d61536b-717a-444a-9649-fe6898b04e8e@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8d61536b-717a-444a-9649-fe6898b04e8e@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Local information disclosure in apport and systemd-coredump

On Tue, Jun 03, 2025 at 10:16:52AM +0200, Vegard Nossum wrote:
> On 03/06/2025 06:05, Solar Designer wrote:
> >With the PID range reduced from the default of 4M down to 2K, PID reuse
> >is quick even with simple fork().  I am getting frequent unix_chkpwd
> >coredumps (without password hashes in them, which is as expected without
> >inotify), but none of them are getting ACLs set for read by the user
> >(unexpected - I thought I'd win this easier race once in a while), e.g.:
> 
> I admit I didn't look very closely at the specifics of this bug but
> maybe you could use a setpid() technique like this one?
> 
> """
> newgrp: fix potential string injection
> 
> Since newgrp is setuid-root, any write() system calls it does in order
> to print error messages will be done as the root user.
> 
> Unprivileged users can get newgrp to print essentially arbitrary strings
> to any open file in this way by passing those strings as argv[0] when
> calling execve(). For example:
> 
>     $ setpid() { (exec -a $1$'\n:' newgrp '' 
> 2>/proc/sys/kernel/ns_last_pid & wait) >/dev/null; }
>     $ setpid 31000
>     $ readlink /proc/self
>     31001

Oh wow.  Yes, this trick works for speeding up PID reuse for the attack
on systemd-coredump.  After the below changes:

+	char cmd[99];
+	sprintf(cmd, "(exec -a %d$'\n:' newgrp '' 2>/proc/sys/kernel/ns_last_pid & wait) >/dev/null", pid - 9);
+	system(cmd);
+
 	int newpid, prevpid = 0, wraps = 0;
 	while ((newpid = fork()) >= 0) {
 		if (!newpid)
 			return 0;
 		wait(NULL);
+		if (newpid > pid)
+			break;

and:

control newgrp public # Another SIG/Security setting I had at "restricted"

I was able to get the password hashes dumped (including root's) for PID
7410 (as it happened) with default kernel.pid_max = 4194304.

> This is not a vulnerability in newgrp; it is a bug in the Linux kernel.
> 
> However, this type of bug is not new [1] and it makes sense to try to
> mitigate these types of bugs in userspace where possible.
> 
> [1]: https://lwn.net/Articles/476947/
> """
> 
> https://github.com/shadow-maint/shadow/commit/9df4801e0b65073cc8a9031b22a73532ef7fdc2c

Apparently, your commit above didn't make it to this distro yet.

But more importantly:

This general issue in the Linux kernel is indeed not new:

https://www.openwall.com/lists/oss-security/2012/02/08/2
https://www.openwall.com/lists/kernel-hardening/2012/02/10/1

As I recall, grsecurity's fix already available by the time was to have
globally unique exec_id's and compare against those before allowing
procfs file access.  The way I got this into Owl's RHEL5-based kernel at
the time was like this (showing pieces from 3 different source files):

@@ -1532,6 +1566,7 @@ int do_execve(char * filename,
        retval = search_binary_handler(bprm,regs);
        if (retval >= 0) {
                /* execve success */
+               current->exec_id = atomic64_inc_return(&global_exec_counter);

@@ -39,6 +40,7 @@ int seq_open(struct file *file, struct s
        memset(p, 0, sizeof(*p));
        mutex_init(&p->lock);
        p->op = op;
+       p->exec_id = current->exec_id;

@@ -177,6 +177,13 @@ static int show_map_internal(struct seq_
        dev_t dev = 0;
        int len;

+       if (current->exec_id != m->exec_id)
+               return 0;

I didn't maintain this further (and of course Owl is now EOL), but I
assume grsecurity still has similar logic properly maintained and
perhaps extended to all of proc files.  Perhaps someone should revisit
upstreaming (a reimplementation of) this.

Also, does /proc/sys/kernel/ns_last_pid really need to be mode 666?
Where is it used (except exploits)?

As described by Jason A. Donenfeld and Djalal Harouni back then, this
flavor of confused deputy attacks is even more usable for reading the
target SUID/SGID/setcap process info, such as for ASLR bypass, which
doesn't require unusual permissions on the corresponding special files.
Has this aspect been addressed in upstream Linux at all?  I'm sorry I
haven't been following this since 2012.

Alexander
