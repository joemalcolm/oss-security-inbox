X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3823" "Thursday" "1" "October" "2015" "12:07:15" "-0700" "Julien Tinnes" "julien@cr0.org" "<CA+8ESAygaJUpjTzx7Stti=hgiGNb=dA67S5S7-_0YSxjETfawA@mail.gmail.com>" "91" "[oss-security] CVE Request: Unauthorized access to IPC objects with SysV shm" nil nil nil "10" "2015100119:07:15" "[oss-security] CVE Request: Unauthorized access to IPC objects with SysV shm" (number mark "        julien@cr0.o Oct  1   91/3823  " thread-indent "\"[oss-security] CVE Request: Unauthorized access to IPC objects with SysV shm\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10127 invoked by uid 550); 1 Oct 2015 19:07:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10106 invoked from network); 1 Oct 2015 19:07:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cr0.org; s=gkey1;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=uj46G5Uk8/B4OqngYIVUgOvXf100kVnn5iJE/INUlN8=;
        b=SSms2nz7c2jJtwXKZxRDfT/5ZoJL3D8qmCw9dHw9t4FbHGzaeLZuyJ+ALlTjJ24gA8
         cN0244wnnvmBRl4ki7pvyh3LTr3PWwPqLJxaehAOBWRkz9etIcbMF/S239qmCZ0GHCLd
         Hyj6IbVxJ27Ifun6rczn+QxNH7EKRkxV4DK3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=uj46G5Uk8/B4OqngYIVUgOvXf100kVnn5iJE/INUlN8=;
        b=TP1U0ey9obNFaMNyi6hgIT47M12YgZwRgfaS3ZqlYd6hhukQgU5nNclkWOyMSnmun7
         vrxcyFJZ4ZzKH/q3aKpFl4h8hYv6a3C48xIZ0j0xcolijY7Ld9tEz3ZbctlTmhkXTvtU
         t5/wBik7u5R+ZjwSSay5ya80eE5DrnwIfjFc3ErZEPIR/fc9eJQRdRhJ5Dcv4cAp2yg8
         EecXLiMbjo1foGsMgfJZiQ+DZaSE8uj6VJbvxwIzXR3hg/GLdwafcY4eCehpJySpt0zk
         PT0fYn0S8zl5ywZtcbKBA8JyMw/qjcYBNTO6hI/qOSgni7K5Ff4dBd4wMqfReHC9Pt9v
         BzCw==
X-Gm-Message-State: ALoCoQmrSPwMBEbEoRFp0HeJ3dSPFI4U8JVpQ9HH+yth3qtrTVf1qXQ219iZgmDCH6so0nvePFaB
MIME-Version: 1.0
X-Received: by 10.140.239.82 with SMTP id k79mr15238775qhc.50.1443726435510;
 Thu, 01 Oct 2015 12:07:15 -0700 (PDT)
Message-ID: <CA+8ESAygaJUpjTzx7Stti=hgiGNb=dA67S5S7-_0YSxjETfawA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: keescook@chromium.org
Date: Thu, 1 Oct 2015 12:07:15 -0700
From: Julien Tinnes <julien@cr0.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Unauthorized access to IPC objects with SysV shm
To: oss-security@lists.openwall.com

While working on KernelThreadSanitizer (KTSAN), a data race detector
for kernels, Dmitry Vyukov found a data race that can trick the kernel
into using unitialized memory.

- This can at least give access to arbitrary SysV shared memory and
Dmitry developed a proof of concept exploit for this. (On many
systems, this can be used to escalate privileges).

- While we didn't investigate this deeply, it is almost certain that
this vulnerability can be used to gain arbitrary code execution in the
kernel. Exercise left to the reader.

This vulnerability has been fixed upstream by Linus with this commit:
https://github.com/torvalds/linux/commit/b9a532277938

>From Dmitry Vyukov:

-----------

While working on KernelThreadSanitizer (KTSAN), a data race detector
for kernel, I've got a report that says that ipc_addid() installs a
not-completely initialized object into the shared object table. In
particular, uid/gid are not initialized. ipc_obtain_object_check() in
turn obtains the object and verifies uid/gid for permission purposes.
Since the fields are not initialized, the check can falsely succeed.

Below are details including a proof-of-concept exploit.

Here is the race report on 4.2 kernel:

ThreadSanitizer: data-race in ipc_obtain_object_check

Read at 0xffff88047f810f68 of size 8 by thread 2749 on CPU 5:
 [<ffffffff8147d84d>] ipc_obtain_object_check+0x7d/0xd0 ipc/util.c:621
 [<     inline     >] msq_obtain_object_check ipc/msg.c:90
 [<ffffffff8147e708>] msgctl_nolock.constprop.9+0x208/0x430 ipc/msg.c:480
 [<     inline     >] SYSC_msgctl ipc/msg.c:538
 [<ffffffff8147f061>] SyS_msgctl+0xa1/0xb0 ipc/msg.c:522
 [<ffffffff81ee3e11>] entry_SYSCALL_64_fastpath+0x31/0x95
arch/x86/entry/entry_64.S:188

Previous write at 0xffff88047f810f68 of size 8 by thread 2755 on CPU 4:
 [<ffffffff8147cf97>] ipc_addid+0x217/0x260 ipc/util.c:257
 [<ffffffff8147eb4c>] newque+0xac/0x240 ipc/msg.c:141
 [<     inline     >] ipcget_public ipc/util.c:355
 [<ffffffff8147daa2>] ipcget+0x202/0x280 ipc/util.c:646
 [<     inline     >] SYSC_msgget ipc/msg.c:255
 [<ffffffff8147efaa>] SyS_msgget+0x7a/0x90 ipc/msg.c:241
 [<ffffffff81ee3e11>] entry_SYSCALL_64_fastpath+0x31/0x95
arch/x86/entry/entry_64.S:188

Mutexes locked by thread 2755:
Mutex 445417 is locked here:
 [<ffffffff81ee0d45>] down_write+0x65/0x80 kernel/locking/rwsem.c:62
 [<     inline     >] ipcget_public ipc/util.c:348
 [<ffffffff8147d90c>] ipcget+0x6c/0x280 ipc/util.c:646
 [<     inline     >] SYSC_msgget ipc/msg.c:255
 [<ffffffff8147efaa>] SyS_msgget+0x7a/0x90 ipc/msg.c:241
 [<ffffffff81ee3e11>] entry_SYSCALL_64_fastpath+0x31/0x95
arch/x86/entry/entry_64.S:188

Mutex 453634 is locked here:
 [<     inline     >] __raw_spin_lock include/linux/spinlock_api_smp.h:158
 [<ffffffff81ee37d0>] _raw_spin_lock+0x50/0x70 kernel/locking/spinlock.c:151
 [<     inline     >] spin_lock include/linux/spinlock.h:312
 [<ffffffff8147ce0e>] ipc_addid+0x8e/0x260 ipc/util.c:238
 [<ffffffff8147eb4c>] newque+0xac/0x240 ipc/msg.c:141
 [<     inline     >] ipcget_public ipc/util.c:355
 [<ffffffff8147daa2>] ipcget+0x202/0x280 ipc/util.c:646
 [<     inline     >] SYSC_msgget ipc/msg.c:255
 [<ffffffff8147efaa>] SyS_msgget+0x7a/0x90 ipc/msg.c:241
 [<ffffffff81ee3e11>] entry_SYSCALL_64_fastpath+0x31/0x95
arch/x86/entry/entry_64.S:188


What happens is as follows.
ipc_addid installs new ipc object with idr_alloc, from this point on
it is accessible to other threads. At this point the object contains
unitialized garbage. Then it fills in uid, etc:

new->cuid = new->uid = euid;
new->gid = new->cgid = egid;
new->seq = ids->seq++;

While this happens another thread can get access to the object and do
uid check on the unitialized garbage, which can give falsely give
accesses to the shared object to a process that should not have access
to the object.


-----------
