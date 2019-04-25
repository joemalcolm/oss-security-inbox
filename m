X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2633" "Thursday" "25" "April" "2019" "15:02:19" "+0200" "Solar Designer" "solar@openwall.com" "<20190425130218.GA10866@openwall.com>" "67" "Re: [oss-security] Linux kernel: no permission check during open() time of /proc/[pid]/maps in kernels < 3.18" nil nil nil "4" "2019042513:02:19" "[oss-security] Linux kernel: no permission check during open() time of /proc/[pid]/maps in kernels < 3.18" (number mark "U       solar@openwa Apr 25   67/2633  " thread-indent "\"Re: [oss-security] Linux kernel: no permission check during open() time of /proc/[pid]/maps in kernels < 3.18\"\n") "<20190425121236.GB9152@f195.suse.de>" ("<20190425121236.GB9152@f195.suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: no permission check during open() time of /proc/[pid]/maps in kernels < 3.18" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15867 invoked by uid 550); 25 Apr 2019 13:04:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13867 invoked from network); 25 Apr 2019 13:02:33 -0000
Date: Thu, 25 Apr 2019 15:02:19 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20190425130218.GA10866@openwall.com>
References: <20190425121236.GB9152@f195.suse.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190425121236.GB9152@f195.suse.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel: no permission check during open() time of /proc/[pid]/maps in kernels < 3.18

On Thu, Apr 25, 2019 at 02:12:36PM +0200, Matthias Gerstner wrote:
> I stumbled over a leak of memory mappings for arbitrary processes in
> kernels older than version 3.18.
> 
> As it turns out the permissions check for the pseudo file in
> /proc/[pid]/maps in affected kernels is performed not during open() time
> but during read() time. This allows an unprivileged user to open a valid
> file descriptor for these maps files and pass it to privileged programs
> like setuid root binaries or D-Bus services running as root that support
> file descriptor passing in their interface.
> 
> The privileged program needs behave in a way that the passed file
> descriptor is read() with root premissions and the content is passed
> back to the unprivileged user in some way.

Looks like mostly a rediscovery of what was brought up in here by
Jason A. Donenfeld and further discussed with Djalal Harouni in 2012:

https://www.openwall.com/lists/oss-security/2012/02/08/2

and had already been fixed in grsecurity, given that I fixed it with:

* Sat Feb 25 2012 Solar Designer <solar-at-owl.openwall.com> 2.6.18-274.18.1.el5.028stab098.1.owl1
[...]
- Introduced protection against unintended self-read by a SUID/SGID program of
/proc/<pid>/mem and /proc/<pid>/*maps files, based on approaches taken in
recent grsecurity patches.

+++ linux-2.6.18-431.el5.028stab123.1-owl/fs/proc/task_mmu.c	2018-05-20 16:37:29 +0000
@@ -166,7 +166,7 @@ static int show_map_internal(struct seq_
 	struct proc_maps_private *priv = m->private;
 	struct task_struct *task = priv->task;
 #ifdef __i386__
-	struct mm_struct *tmm = get_task_mm(task);
+	struct mm_struct *tmm;
 #endif
 	struct vm_area_struct *vma = v;
 	struct mm_struct *mm = vma->vm_mm;
@@ -177,6 +177,13 @@ static int show_map_internal(struct seq_
 	dev_t dev = 0;
 	int len;
 
+	if (current->exec_id != m->exec_id)
+		return 0;
+
+#ifdef __i386__
+	tmm = get_task_mm(task);
+#endif
+
 	if (file) {
 		struct inode *inode = vma->vm_file->f_dentry->d_inode;
 		dev = inode->i_sb->s_dev;

Was this not fixed upstream until the permissions check on open() was
added in 2014?  I guess it also wasn't fixed in RHEL, since I carried
the above patch hunk into 2018+ as you can see (or maybe it became
redundant with RHEL's different fix for the issue - I don't recall).

The idea of passing the fd to D-Bus services, etc. might be a new one,
but the fix above should be sufficient against that as well due to the
exec_id's being globally unique (except between fork-without-exec
sibling processes):

 		/* execve success */
+		current->exec_id = atomic64_inc_return(&global_exec_counter);

Alexander
