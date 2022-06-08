Received: (qmail 7198 invoked by uid 550); 8 Jun 2022 06:15:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29708 invoked from network); 8 Jun 2022 02:18:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=xLBxnP/cLK+7C4pVFs7weGHWadpaI5CX/Ho5fJtPiKY=;
        b=qZOwr+0nv2xr7FMfzI2UB7oP7IRMYWyNS7cFKKcplkfJMkkU90PGIQrG2zT/YoPb5p
         vVLKf539NgbFiVwE+dG2A5/Cgkg8yHPr3kMTP3DjpxB70w4ISezCpUr1LjLuIqlWwtK8
         gtkCFkj9Ovm+kdAQd/HOot8GH91nLXgsjcEgETRyGEedNwf0nETD5YMUXKV0ogTBE62H
         lqa8FDvGDg7zIPcYVK0dJZmsep8hBk3H2iqaJlFM+xjbOEqgKmDGRZgJYHfFKk4MXmrS
         PhEHZE/NakBByqoKpMZN//ncmZ2I/bOPsBrJtQx9NwYhQqO49TlTYQ1eE/nBgNRJTqXQ
         1Osw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xLBxnP/cLK+7C4pVFs7weGHWadpaI5CX/Ho5fJtPiKY=;
        b=SlXOxmRWD7TBWO7meD4UtepK2VfK99nIBvweSdyBpHcAveM4zuJnjGOIhKgIpPaWQ5
         CIo2UUakVT9jrYJ9QvT1M3hMoRVeSvHl6EYRakAQV4WFoGMO8qYWXFkHLmIUV3yb4lNX
         9NAKAfo/7aZJg69DhrfLZnSxVFx+e098T93xwKBubCGlU3q9/0eBP0zBCEtz8h2IELGK
         8PEYi//zhFzC6cRwDJpSX1RxpT5YA3zD+WtnP0mfYm5VPkycME1LEY43bU26vfJs5DjG
         T3DY9gD3QQwYmOCTfOm3BoxdkAJOViHmRNnHaiF5HdI/skTHde4sskzHV7eyN1QnKFAZ
         7VCQ==
X-Gm-Message-State: AOAM532Cci0/djWoJXGPqVqqfu64iQWZZn7Itn42yPyx4/Uixt+mb1CU
	HXHCRJBnknpiOi5hnuRcdbgRuLu+KwouUySaURPNscivtbg=
X-Google-Smtp-Source: ABdhPJxKIGeAToH3jTkiBQYtDsKQymzj8ohoTlRN0lNpUAw9d+gYFpkJRuv5r3hjnvVzVoMxdODNCRDP0TDt5Vqm3Bc=
X-Received: by 2002:a65:6bd6:0:b0:39d:4f85:9ecf with SMTP id
 e22-20020a656bd6000000b0039d4f859ecfmr28660706pgw.336.1654654668287; Tue, 07
 Jun 2022 19:17:48 -0700 (PDT)
MIME-Version: 1.0
From: Gerald Lee <sundaywind2004@gmail.com>
Date: Wed, 8 Jun 2022 10:17:36 +0800
Message-ID: <CAO3qeMWAZYXsKtVOnAQMDDq8wvQA=B6ZYDZjvfoe62muQPgALg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000bac62505e0e64faf"
Subject: [oss-security] CVE-2022-1973: Linux Kernel: fs/ntfs3: invalid free in log_replay

--000000000000bac62505e0e64faf
Content-Type: multipart/alternative; boundary="000000000000bac62005e0e64fad"

--000000000000bac62005e0e64fad
Content-Type: text/plain; charset="UTF-8"

Hi all,

=*=*=*=*=*=*=*=*=   BUG DETAILS  =*=*=*=*=*=*=*=*=

log_read_rst() returns ENOMEM error when there is not enough memory.
In this case, if info is returned without initialization,
it attempts to kfree the uninitialized info->r_page pointer.

This issue was reported on May 27 and assigned CVE-2022-1973.

C repro is attached.


=*=*=*=*=*=*=*=*=     BACKTRACE     =*=*=*=*=*=*=*=*=

BUG: KASAN: double-free or invalid-free in log_replay+0x5df/0xd310
fs/ntfs3/fslog.c:5197

CPU: 1 PID: 22698 Comm: syz-executor.5 Not tainted 5.18.0 #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.13.0-1ubuntu1.1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:313 [inline]
 print_report.cold+0xe5/0x659 mm/kasan/report.c:429
 kasan_report_invalid_free+0x5c/0x160 mm/kasan/report.c:458
 ____kasan_slab_free mm/kasan/common.c:346 [inline]
 __kasan_slab_free+0x174/0x190 mm/kasan/common.c:374
 kasan_slab_free include/linux/kasan.h:200 [inline]
 slab_free_hook mm/slub.c:1728 [inline]
 slab_free_freelist_hook mm/slub.c:1754 [inline]
 slab_free mm/slub.c:3510 [inline]
 kfree+0xec/0x4b0 mm/slub.c:4552
 log_replay+0x5df/0xd310 fs/ntfs3/fslog.c:5197
 ntfs_loadlog_and_replay+0x4a1/0x5d0 fs/ntfs3/fsntfs.c:299
 ntfs_fill_super+0x1c34/0x4b30 fs/ntfs3/super.c:1004
 get_tree_bdev+0x440/0x760 fs/super.c:1292
 vfs_get_tree+0x89/0x2f0 fs/super.c:1497
 do_new_mount fs/namespace.c:3040 [inline]
 path_mount+0x1228/0x1cb0 fs/namespace.c:3370
 do_mount+0xf3/0x110 fs/namespace.c:3383
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __x64_sys_mount+0x18f/0x230 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x46/0xb0
RIP: 0033:0x7fee5048f25e
Code: 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00
00 00 00 00 90 f3 0f 1e fa 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff
ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fee4f3fda08 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000020000200 RCX: 00007fee5048f25e
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007fee4f3fda60
RBP: 00007fee4f3fdaa0 R08: 00007fee4f3fdaa0 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000202 R12: 0000000020000000
R13: 0000000020000100 R14: 00007fee4f3fda60 R15: 000000002007c6a0
 </TASK>

Allocated by task 22698:
 kasan_save_stack+0x1e/0x40 mm/kasan/common.c:38
 kasan_set_track mm/kasan/common.c:45 [inline]
 set_alloc_info mm/kasan/common.c:436 [inline]
 ____kasan_kmalloc mm/kasan/common.c:515 [inline]
 ____kasan_kmalloc mm/kasan/common.c:474 [inline]
 __kasan_kmalloc+0xa9/0xd0 mm/kasan/common.c:524
 kasan_kmalloc include/linux/kasan.h:234 [inline]
 kmem_cache_alloc_trace+0x1f4/0x460 mm/slub.c:3258
 kmalloc include/linux/slab.h:581 [inline]
 kzalloc include/linux/slab.h:714 [inline]
 ntfs_init_fs_context+0x263/0x580 fs/ntfs3/super.c:1398
 alloc_fs_context+0x582/0xa00 fs/fs_context.c:290
 do_new_mount fs/namespace.c:3025 [inline]
 path_mount+0x9ba/0x1cb0 fs/namespace.c:3370
 do_mount+0xf3/0x110 fs/namespace.c:3383
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __x64_sys_mount+0x18f/0x230 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x46/0xb0

The buggy address belongs to the object at ffff888045662000
 which belongs to the cache kmalloc-4k of size 4096
The buggy address is located 2280 bytes inside of
 4096-byte region [ffff888045662000, ffff888045663000)

The buggy address belongs to the physical page:
page:ffffea0001159800 refcount:1 mapcount:0 mapping:0000000000000000
index:0x0 pfn:0x45660
head:ffffea0001159800 order:3 compound_mapcount:0 compound_pincount:0
flags: 0x4fff00000010200(slab|head|node=1|zone=1|lastcpupid=0x7ff)
raw: 04fff00000010200 0000000000000000 dead000000000122 ffff888010c42140
raw: 0000000000000000 0000000000040004 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Unmovable, gfp_mask
0xd2040(__GFP_IO|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC),
pid 22698, tgid 22689 (syz-executor.5), ts 493053136116, free_ts
493040762977
 set_page_owner include/linux/page_owner.h:31 [inline]
 post_alloc_hook mm/page_alloc.c:2434 [inline]
 prep_new_page+0x297/0x330 mm/page_alloc.c:2441
 get_page_from_freelist+0x210e/0x3ab0 mm/page_alloc.c:4182
 __alloc_pages+0x30c/0x6e0 mm/page_alloc.c:5408
 alloc_pages+0x119/0x250 mm/mempolicy.c:2272
 alloc_slab_page mm/slub.c:1799 [inline]
 allocate_slab mm/slub.c:1944 [inline]
 new_slab+0x2a9/0x3f0 mm/slub.c:2004
 ___slab_alloc+0xc62/0x1080 mm/slub.c:3005
 __slab_alloc.isra.0+0x4d/0xa0 mm/slub.c:3092
 slab_alloc_node mm/slub.c:3183 [inline]
 slab_alloc mm/slub.c:3225 [inline]
 __kmalloc+0x3a9/0x4c0 mm/slub.c:4410
 kmalloc include/linux/slab.h:586 [inline]
 tomoyo_realpath_from_path+0xc3/0x620 security/tomoyo/realpath.c:254
 tomoyo_mount_acl+0x2cd/0x840 security/tomoyo/mount.c:141
 tomoyo_mount_permission+0x151/0x3f0 security/tomoyo/mount.c:237
 security_sb_mount+0x66/0xc0 security/security.c:976
 path_mount+0x12f/0x1cb0 fs/namespace.c:3312
 do_mount+0xf3/0x110 fs/namespace.c:3383
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __x64_sys_mount+0x18f/0x230 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1356 [inline]
 free_pcp_prepare+0x51f/0xd00 mm/page_alloc.c:1406
 free_unref_page_prepare mm/page_alloc.c:3328 [inline]
 free_unref_page+0x19/0x5b0 mm/page_alloc.c:3423
 do_slab_free mm/slub.c:3498 [inline]
 ___cache_free+0x12c/0x140 mm/slub.c:3517
 qlink_free mm/kasan/quarantine.c:157 [inline]
 qlist_free_all+0x6a/0x170 mm/kasan/quarantine.c:176
 kasan_quarantine_reduce+0x13d/0x180 mm/kasan/quarantine.c:283
 __kasan_slab_alloc+0xa2/0xc0 mm/kasan/common.c:446
 kasan_slab_alloc include/linux/kasan.h:224 [inline]
 slab_post_alloc_hook+0x4d/0x4f0 mm/slab.h:749
 slab_alloc_node mm/slub.c:3217 [inline]
 slab_alloc mm/slub.c:3225 [inline]
 __kmalloc+0x184/0x4c0 mm/slub.c:4410
 kmalloc include/linux/slab.h:586 [inline]
 tomoyo_realpath_from_path+0xc3/0x620 security/tomoyo/realpath.c:254
 tomoyo_get_realpath security/tomoyo/file.c:151 [inline]
 tomoyo_path_perm+0x219/0x420 security/tomoyo/file.c:822
 security_inode_getattr+0xcf/0x140 security/security.c:1350
 vfs_getattr+0x22/0x60 fs/stat.c:157
 vfs_fstat+0x49/0x90 fs/stat.c:182
 __do_sys_newfstat+0x81/0x100 fs/stat.c:435
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x46/0xb0

Memory state around the buggy address:
 ffff888045662780: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff888045662800: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>ffff888045662880: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                                                          ^
 ffff888045662900: 00 00 00 00 00 00 00 00 00 00 fc fc fc fc fc fc
 ffff888045662980: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc


=*=*=*=*=*=*=*=*=     PATCH     =*=*=*=*=*=*=*=*=

The patch has been merged into the Linux kernel mainline and can be found
here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f26967b9f7a830e228bb13fb41bd516ddd9d789d


=*=*=*=*=*=*=*=*=     CREDIT     =*=*=*=*=*=*=*=*=

Zhixin Li (Zero-one Security) <sundaywind2004@gmail.com>


Thanks

--000000000000bac62005e0e64fad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size:small" class=3D"gmail_default">Hi =
all,<br><br>=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0 BUG DETAILS =C2=A0=
=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D<br><br>log_read_rst() returns ENOMEM er=
ror when there is not enough memory.<br>In this case, if info is returned w=
ithout initialization,<br>it attempts to kfree the uninitialized info-&gt;r=
_page pointer. <br><br>This issue was reported on May 27 and assigned CVE-2=
022-1973. <br><br>C repro is attached.<br><br><br>=3D*=3D*=3D*=3D*=3D*=3D*=
=3D*=3D*=3D =C2=A0 =C2=A0 BACKTRACE =C2=A0 =C2=A0 =3D*=3D*=3D*=3D*=3D*=3D*=
=3D*=3D*=3D<br><br>BUG: KASAN: double-free or invalid-free in log_replay+0x=
5df/0xd310 fs/ntfs3/fslog.c:5197<br><br>CPU: 1 PID: 22698 Comm: syz-executo=
r.5 Not tainted 5.18.0 #1<br>Hardware name: QEMU Standard PC (i440FX + PIIX=
, 1996), BIOS 1.13.0-1ubuntu1.1 04/01/2014<br>Call Trace:<br>=C2=A0&lt;TASK=
&gt;<br>=C2=A0__dump_stack lib/dump_stack.c:88 [inline]<br>=C2=A0dump_stack=
_lvl+0xcd/0x134 lib/dump_stack.c:106<br>=C2=A0print_address_description mm/=
kasan/report.c:313 [inline]<br>=C2=A0print_report.cold+0xe5/0x659 mm/kasan/=
report.c:429<br>=C2=A0kasan_report_invalid_free+0x5c/0x160 mm/kasan/report.=
c:458<br>=C2=A0____kasan_slab_free mm/kasan/common.c:346 [inline]<br>=C2=A0=
__kasan_slab_free+0x174/0x190 mm/kasan/common.c:374<br>=C2=A0kasan_slab_fre=
e include/linux/kasan.h:200 [inline]<br>=C2=A0slab_free_hook mm/slub.c:1728=
 [inline]<br>=C2=A0slab_free_freelist_hook mm/slub.c:1754 [inline]<br>=C2=
=A0slab_free mm/slub.c:3510 [inline]<br>=C2=A0kfree+0xec/0x4b0 mm/slub.c:45=
52<br>=C2=A0log_replay+0x5df/0xd310 fs/ntfs3/fslog.c:5197<br>=C2=A0ntfs_loa=
dlog_and_replay+0x4a1/0x5d0 fs/ntfs3/fsntfs.c:299<br>=C2=A0ntfs_fill_super+=
0x1c34/0x4b30 fs/ntfs3/super.c:1004<br>=C2=A0get_tree_bdev+0x440/0x760 fs/s=
uper.c:1292<br>=C2=A0vfs_get_tree+0x89/0x2f0 fs/super.c:1497<br>=C2=A0do_ne=
w_mount fs/namespace.c:3040 [inline]<br>=C2=A0path_mount+0x1228/0x1cb0 fs/n=
amespace.c:3370<br>=C2=A0do_mount+0xf3/0x110 fs/namespace.c:3383<br>=C2=A0_=
_do_sys_mount fs/namespace.c:3591 [inline]<br>=C2=A0__se_sys_mount fs/names=
pace.c:3568 [inline]<br>=C2=A0__x64_sys_mount+0x18f/0x230 fs/namespace.c:35=
68<br>=C2=A0do_syscall_x64 arch/x86/entry/common.c:50 [inline]<br>=C2=A0do_=
syscall_64+0x35/0xb0 arch/x86/entry/common.c:80<br>=C2=A0entry_SYSCALL_64_a=
fter_hwframe+0x46/0xb0<br>RIP: 0033:0x7fee5048f25e<br>Code: 48 c7 c1 b8 ff =
ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f =
1e fa 49 89 ca b8 a5 00 00 00 0f 05 &lt;48&gt; 3d 01 f0 ff ff 73 01 c3 48 c=
7 c1 b8 ff ff ff f7 d8 64 89 01 48<br>RSP: 002b:00007fee4f3fda08 EFLAGS: 00=
000202 ORIG_RAX: 00000000000000a5<br>RAX: ffffffffffffffda RBX: 00000000200=
00200 RCX: 00007fee5048f25e<br>RDX: 0000000020000000 RSI: 0000000020000100 =
RDI: 00007fee4f3fda60<br>RBP: 00007fee4f3fdaa0 R08: 00007fee4f3fdaa0 R09: 0=
000000020000000<br>R10: 0000000000000000 R11: 0000000000000202 R12: 0000000=
020000000<br>R13: 0000000020000100 R14: 00007fee4f3fda60 R15: 000000002007c=
6a0<br>=C2=A0&lt;/TASK&gt;<br><br>Allocated by task 22698:<br>=C2=A0kasan_s=
ave_stack+0x1e/0x40 mm/kasan/common.c:38<br>=C2=A0kasan_set_track mm/kasan/=
common.c:45 [inline]<br>=C2=A0set_alloc_info mm/kasan/common.c:436 [inline]=
<br>=C2=A0____kasan_kmalloc mm/kasan/common.c:515 [inline]<br>=C2=A0____kas=
an_kmalloc mm/kasan/common.c:474 [inline]<br>=C2=A0__kasan_kmalloc+0xa9/0xd=
0 mm/kasan/common.c:524<br>=C2=A0kasan_kmalloc include/linux/kasan.h:234 [i=
nline]<br>=C2=A0kmem_cache_alloc_trace+0x1f4/0x460 mm/slub.c:3258<br>=C2=A0=
kmalloc include/linux/slab.h:581 [inline]<br>=C2=A0kzalloc include/linux/sl=
ab.h:714 [inline]<br>=C2=A0ntfs_init_fs_context+0x263/0x580 fs/ntfs3/super.=
c:1398<br>=C2=A0alloc_fs_context+0x582/0xa00 fs/fs_context.c:290<br>=C2=A0d=
o_new_mount fs/namespace.c:3025 [inline]<br>=C2=A0path_mount+0x9ba/0x1cb0 f=
s/namespace.c:3370<br>=C2=A0do_mount+0xf3/0x110 fs/namespace.c:3383<br>=C2=
=A0__do_sys_mount fs/namespace.c:3591 [inline]<br>=C2=A0__se_sys_mount fs/n=
amespace.c:3568 [inline]<br>=C2=A0__x64_sys_mount+0x18f/0x230 fs/namespace.=
c:3568<br>=C2=A0do_syscall_x64 arch/x86/entry/common.c:50 [inline]<br>=C2=
=A0do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80<br>=C2=A0entry_SYSCAL=
L_64_after_hwframe+0x46/0xb0<br><br>The buggy address belongs to the object=
 at ffff888045662000<br>=C2=A0which belongs to the cache kmalloc-4k of size=
 4096<br>The buggy address is located 2280 bytes inside of<br>=C2=A04096-by=
te region [ffff888045662000, ffff888045663000)<br><br>The buggy address bel=
ongs to the physical page:<br>page:ffffea0001159800 refcount:1 mapcount:0 m=
apping:0000000000000000 index:0x0 pfn:0x45660<br>head:ffffea0001159800 orde=
r:3 compound_mapcount:0 compound_pincount:0<br>flags: 0x4fff00000010200(sla=
b|head|node=3D1|zone=3D1|lastcpupid=3D0x7ff)<br>raw: 04fff00000010200 00000=
00000000000 dead000000000122 ffff888010c42140<br>raw: 0000000000000000 0000=
000000040004 00000001ffffffff 0000000000000000<br>page dumped because: kasa=
n: bad access detected<br>page_owner tracks the page as allocated<br>page l=
ast allocated via order 3, migratetype Unmovable, gfp_mask 0xd2040(__GFP_IO=
|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC), pid 22698, tgid 2=
2689 (syz-executor.5), ts 493053136116, free_ts 493040762977<br>=C2=A0set_p=
age_owner include/linux/page_owner.h:31 [inline]<br>=C2=A0post_alloc_hook m=
m/page_alloc.c:2434 [inline]<br>=C2=A0prep_new_page+0x297/0x330 mm/page_all=
oc.c:2441<br>=C2=A0get_page_from_freelist+0x210e/0x3ab0 mm/page_alloc.c:418=
2<br>=C2=A0__alloc_pages+0x30c/0x6e0 mm/page_alloc.c:5408<br>=C2=A0alloc_pa=
ges+0x119/0x250 mm/mempolicy.c:2272<br>=C2=A0alloc_slab_page mm/slub.c:1799=
 [inline]<br>=C2=A0allocate_slab mm/slub.c:1944 [inline]<br>=C2=A0new_slab+=
0x2a9/0x3f0 mm/slub.c:2004<br>=C2=A0___slab_alloc+0xc62/0x1080 mm/slub.c:30=
05<br>=C2=A0__slab_alloc.isra.0+0x4d/0xa0 mm/slub.c:3092<br>=C2=A0slab_allo=
c_node mm/slub.c:3183 [inline]<br>=C2=A0slab_alloc mm/slub.c:3225 [inline]<=
br>=C2=A0__kmalloc+0x3a9/0x4c0 mm/slub.c:4410<br>=C2=A0kmalloc include/linu=
x/slab.h:586 [inline]<br>=C2=A0tomoyo_realpath_from_path+0xc3/0x620 securit=
y/tomoyo/realpath.c:254<br>=C2=A0tomoyo_mount_acl+0x2cd/0x840 security/tomo=
yo/mount.c:141<br>=C2=A0tomoyo_mount_permission+0x151/0x3f0 security/tomoyo=
/mount.c:237<br>=C2=A0security_sb_mount+0x66/0xc0 security/security.c:976<b=
r>=C2=A0path_mount+0x12f/0x1cb0 fs/namespace.c:3312<br>=C2=A0do_mount+0xf3/=
0x110 fs/namespace.c:3383<br>=C2=A0__do_sys_mount fs/namespace.c:3591 [inli=
ne]<br>=C2=A0__se_sys_mount fs/namespace.c:3568 [inline]<br>=C2=A0__x64_sys=
_mount+0x18f/0x230 fs/namespace.c:3568<br>=C2=A0do_syscall_x64 arch/x86/ent=
ry/common.c:50 [inline]<br>=C2=A0do_syscall_64+0x35/0xb0 arch/x86/entry/com=
mon.c:80<br>page last free stack trace:<br>=C2=A0reset_page_owner include/l=
inux/page_owner.h:24 [inline]<br>=C2=A0free_pages_prepare mm/page_alloc.c:1=
356 [inline]<br>=C2=A0free_pcp_prepare+0x51f/0xd00 mm/page_alloc.c:1406<br>=
=C2=A0free_unref_page_prepare mm/page_alloc.c:3328 [inline]<br>=C2=A0free_u=
nref_page+0x19/0x5b0 mm/page_alloc.c:3423<br>=C2=A0do_slab_free mm/slub.c:3=
498 [inline]<br>=C2=A0___cache_free+0x12c/0x140 mm/slub.c:3517<br>=C2=A0qli=
nk_free mm/kasan/quarantine.c:157 [inline]<br>=C2=A0qlist_free_all+0x6a/0x1=
70 mm/kasan/quarantine.c:176<br>=C2=A0kasan_quarantine_reduce+0x13d/0x180 m=
m/kasan/quarantine.c:283<br>=C2=A0__kasan_slab_alloc+0xa2/0xc0 mm/kasan/com=
mon.c:446<br>=C2=A0kasan_slab_alloc include/linux/kasan.h:224 [inline]<br>=
=C2=A0slab_post_alloc_hook+0x4d/0x4f0 mm/slab.h:749<br>=C2=A0slab_alloc_nod=
e mm/slub.c:3217 [inline]<br>=C2=A0slab_alloc mm/slub.c:3225 [inline]<br>=
=C2=A0__kmalloc+0x184/0x4c0 mm/slub.c:4410<br>=C2=A0kmalloc include/linux/s=
lab.h:586 [inline]<br>=C2=A0tomoyo_realpath_from_path+0xc3/0x620 security/t=
omoyo/realpath.c:254<br>=C2=A0tomoyo_get_realpath security/tomoyo/file.c:15=
1 [inline]<br>=C2=A0tomoyo_path_perm+0x219/0x420 security/tomoyo/file.c:822=
<br>=C2=A0security_inode_getattr+0xcf/0x140 security/security.c:1350<br>=C2=
=A0vfs_getattr+0x22/0x60 fs/stat.c:157<br>=C2=A0vfs_fstat+0x49/0x90 fs/stat=
.c:182<br>=C2=A0__do_sys_newfstat+0x81/0x100 fs/stat.c:435<br>=C2=A0do_sysc=
all_x64 arch/x86/entry/common.c:50 [inline]<br>=C2=A0do_syscall_64+0x35/0xb=
0 arch/x86/entry/common.c:80<br>=C2=A0entry_SYSCALL_64_after_hwframe+0x46/0=
xb0<br><br>Memory state around the buggy address:<br>=C2=A0ffff888045662780=
: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00<br>=C2=A0ffff888045662800=
: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00<br>&gt;ffff888045662880: =
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>=C2=A0ffff888045662900: 00 00 00 00 00=
 00 00 00 00 00 fc fc fc fc fc fc<br>=C2=A0ffff888045662980: fc fc fc fc fc=
 fc fc fc fc fc fc fc fc fc fc fc<br><br><br>=3D*=3D*=3D*=3D*=3D*=3D*=3D*=
=3D*=3D =C2=A0 =C2=A0 PATCH =C2=A0 =C2=A0 =3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=
=3D<br><br>The patch has been merged into the Linux kernel mainline and can=
 be found here:<br><a href=3D"https://git.kernel.org/pub/scm/linux/kernel/g=
it/torvalds/linux.git/commit/?id=3Df26967b9f7a830e228bb13fb41bd516ddd9d789d=
">https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Df26967b9f7a830e228bb13fb41bd516ddd9d789d</a></div><div style=3D"font=
-size:small" class=3D"gmail_default"><br><br>=3D*=3D*=3D*=3D*=3D*=3D*=3D*=
=3D*=3D =C2=A0 =C2=A0 CREDIT =C2=A0 =C2=A0 =3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=
=3D<br><br>Zhixin Li (Zero-one Security) &lt;<a href=3D"mailto:sundaywind20=
04@gmail.com">sundaywind2004@gmail.com</a>&gt;<br><br><br>Thanks <br></div>=
<br></div>

--000000000000bac62005e0e64fad--

--000000000000bac62505e0e64faf
Content-Type: text/x-csrc; charset="US-ASCII"; name="repro.c"
Content-Disposition: attachment; filename="repro.c"
Content-Transfer-Encoding: base64
Content-ID: <f_l44ybw3a0>
X-Attachment-Id: f_l44ybw3a0

Ly8gYXV0b2dlbmVyYXRlZCBieSBzeXprYWxsZXIgKGh0dHBzOi8vZ2l0aHVi
LmNvbS9nb29nbGUvc3l6a2FsbGVyKQoKI2RlZmluZSBfR05VX1NPVVJDRSAK
CiNpbmNsdWRlIDxkaXJlbnQuaD4KI2luY2x1ZGUgPGVuZGlhbi5oPgojaW5j
bHVkZSA8ZXJybm8uaD4KI2luY2x1ZGUgPGZjbnRsLmg+CiNpbmNsdWRlIDxz
aWduYWwuaD4KI2luY2x1ZGUgPHN0ZGFyZy5oPgojaW5jbHVkZSA8c3RkYm9v
bC5oPgojaW5jbHVkZSA8c3RkZGVmLmg+CiNpbmNsdWRlIDxzdGRpbnQuaD4K
I2luY2x1ZGUgPHN0ZGlvLmg+CiNpbmNsdWRlIDxzdGRsaWIuaD4KI2luY2x1
ZGUgPHN0cmluZy5oPgojaW5jbHVkZSA8c3lzL2lvY3RsLmg+CiNpbmNsdWRl
IDxzeXMvbW91bnQuaD4KI2luY2x1ZGUgPHN5cy9wcmN0bC5oPgojaW5jbHVk
ZSA8c3lzL3N0YXQuaD4KI2luY2x1ZGUgPHN5cy9zeXNjYWxsLmg+CiNpbmNs
dWRlIDxzeXMvdHlwZXMuaD4KI2luY2x1ZGUgPHN5cy93YWl0Lmg+CiNpbmNs
dWRlIDx0aW1lLmg+CiNpbmNsdWRlIDx1bmlzdGQuaD4KCiNpbmNsdWRlIDxs
aW51eC9sb29wLmg+CgojaWZuZGVmIF9fTlJfbWVtZmRfY3JlYXRlCiNkZWZp
bmUgX19OUl9tZW1mZF9jcmVhdGUgMzE5CiNlbmRpZgoKc3RhdGljIHVuc2ln
bmVkIGxvbmcgbG9uZyBwcm9jaWQ7CgpzdGF0aWMgdm9pZCBzbGVlcF9tcyh1
aW50NjRfdCBtcykKewoJdXNsZWVwKG1zICogMTAwMCk7Cn0KCnN0YXRpYyB1
aW50NjRfdCBjdXJyZW50X3RpbWVfbXModm9pZCkKewoJc3RydWN0IHRpbWVz
cGVjIHRzOwoJaWYgKGNsb2NrX2dldHRpbWUoQ0xPQ0tfTU9OT1RPTklDLCAm
dHMpKQoJZXhpdCgxKTsKCXJldHVybiAodWludDY0X3QpdHMudHZfc2VjICog
MTAwMCArICh1aW50NjRfdCl0cy50dl9uc2VjIC8gMTAwMDAwMDsKfQoKc3Rh
dGljIHZvaWQgdXNlX3RlbXBvcmFyeV9kaXIodm9pZCkKewoJY2hhciB0bXBk
aXJfdGVtcGxhdGVbXSA9ICIuL3N5emthbGxlci5YWFhYWFgiOwoJY2hhciog
dG1wZGlyID0gbWtkdGVtcCh0bXBkaXJfdGVtcGxhdGUpOwoJaWYgKCF0bXBk
aXIpCglleGl0KDEpOwoJaWYgKGNobW9kKHRtcGRpciwgMDc3NykpCglleGl0
KDEpOwoJaWYgKGNoZGlyKHRtcGRpcikpCglleGl0KDEpOwp9CgpzdGF0aWMg
Ym9vbCB3cml0ZV9maWxlKGNvbnN0IGNoYXIqIGZpbGUsIGNvbnN0IGNoYXIq
IHdoYXQsIC4uLikKewoJY2hhciBidWZbMTAyNF07Cgl2YV9saXN0IGFyZ3M7
Cgl2YV9zdGFydChhcmdzLCB3aGF0KTsKCXZzbnByaW50ZihidWYsIHNpemVv
ZihidWYpLCB3aGF0LCBhcmdzKTsKCXZhX2VuZChhcmdzKTsKCWJ1ZltzaXpl
b2YoYnVmKSAtIDFdID0gMDsKCWludCBsZW4gPSBzdHJsZW4oYnVmKTsKCWlu
dCBmZCA9IG9wZW4oZmlsZSwgT19XUk9OTFkgfCBPX0NMT0VYRUMpOwoJaWYg
KGZkID09IC0xKQoJCXJldHVybiBmYWxzZTsKCWlmICh3cml0ZShmZCwgYnVm
LCBsZW4pICE9IGxlbikgewoJCWludCBlcnIgPSBlcnJubzsKCQljbG9zZShm
ZCk7CgkJZXJybm8gPSBlcnI7CgkJcmV0dXJuIGZhbHNlOwoJfQoJY2xvc2Uo
ZmQpOwoJcmV0dXJuIHRydWU7Cn0KCnN0cnVjdCBmc19pbWFnZV9zZWdtZW50
IHsKCXZvaWQqIGRhdGE7Cgl1aW50cHRyX3Qgc2l6ZTsKCXVpbnRwdHJfdCBv
ZmZzZXQ7Cn07CgojZGVmaW5lIElNQUdFX01BWF9TRUdNRU5UUyA0MDk2CiNk
ZWZpbmUgSU1BR0VfTUFYX1NJWkUgKDEyOSA8PCAyMCkKCnN0YXRpYyB1bnNp
Z25lZCBsb25nIGZzX2ltYWdlX3NlZ21lbnRfY2hlY2sodW5zaWduZWQgbG9u
ZyBzaXplLCB1bnNpZ25lZCBsb25nIG5zZWdzLCBzdHJ1Y3QgZnNfaW1hZ2Vf
c2VnbWVudCogc2VncykKewoJaWYgKG5zZWdzID4gSU1BR0VfTUFYX1NFR01F
TlRTKQoJCW5zZWdzID0gSU1BR0VfTUFYX1NFR01FTlRTOwoJZm9yIChzaXpl
X3QgaSA9IDA7IGkgPCBuc2VnczsgaSsrKSB7CgkJaWYgKHNlZ3NbaV0uc2l6
ZSA+IElNQUdFX01BWF9TSVpFKQoJCQlzZWdzW2ldLnNpemUgPSBJTUFHRV9N
QVhfU0laRTsKCQlzZWdzW2ldLm9mZnNldCAlPSBJTUFHRV9NQVhfU0laRTsK
CQlpZiAoc2Vnc1tpXS5vZmZzZXQgPiBJTUFHRV9NQVhfU0laRSAtIHNlZ3Nb
aV0uc2l6ZSkKCQkJc2Vnc1tpXS5vZmZzZXQgPSBJTUFHRV9NQVhfU0laRSAt
IHNlZ3NbaV0uc2l6ZTsKCQlpZiAoc2l6ZSA8IHNlZ3NbaV0ub2Zmc2V0ICsg
c2Vnc1tpXS5vZmZzZXQpCgkJCXNpemUgPSBzZWdzW2ldLm9mZnNldCArIHNl
Z3NbaV0ub2Zmc2V0OwoJfQoJaWYgKHNpemUgPiBJTUFHRV9NQVhfU0laRSkK
CQlzaXplID0gSU1BR0VfTUFYX1NJWkU7CglyZXR1cm4gc2l6ZTsKfQpzdGF0
aWMgaW50IHNldHVwX2xvb3BfZGV2aWNlKGxvbmcgdW5zaWduZWQgc2l6ZSwg
bG9uZyB1bnNpZ25lZCBuc2Vncywgc3RydWN0IGZzX2ltYWdlX3NlZ21lbnQq
IHNlZ3MsIGNvbnN0IGNoYXIqIGxvb3BuYW1lLCBpbnQqIG1lbWZkX3AsIGlu
dCogbG9vcGZkX3ApCnsKCWludCBlcnIgPSAwLCBsb29wZmQgPSAtMTsKCXNp
emUgPSBmc19pbWFnZV9zZWdtZW50X2NoZWNrKHNpemUsIG5zZWdzLCBzZWdz
KTsKCWludCBtZW1mZCA9IHN5c2NhbGwoX19OUl9tZW1mZF9jcmVhdGUsICJz
eXprYWxsZXIiLCAwKTsKCWlmIChtZW1mZCA9PSAtMSkgewoJCWVyciA9IGVy
cm5vOwoJCWdvdG8gZXJyb3I7Cgl9CglpZiAoZnRydW5jYXRlKG1lbWZkLCBz
aXplKSkgewoJCWVyciA9IGVycm5vOwoJCWdvdG8gZXJyb3JfY2xvc2VfbWVt
ZmQ7Cgl9Cglmb3IgKHNpemVfdCBpID0gMDsgaSA8IG5zZWdzOyBpKyspIHsK
CQlpZiAocHdyaXRlKG1lbWZkLCBzZWdzW2ldLmRhdGEsIHNlZ3NbaV0uc2l6
ZSwgc2Vnc1tpXS5vZmZzZXQpIDwgMCkgewoJCX0KCX0KCWxvb3BmZCA9IG9w
ZW4obG9vcG5hbWUsIE9fUkRXUik7CglpZiAobG9vcGZkID09IC0xKSB7CgkJ
ZXJyID0gZXJybm87CgkJZ290byBlcnJvcl9jbG9zZV9tZW1mZDsKCX0KCWlm
IChpb2N0bChsb29wZmQsIExPT1BfU0VUX0ZELCBtZW1mZCkpIHsKCQlpZiAo
ZXJybm8gIT0gRUJVU1kpIHsKCQkJZXJyID0gZXJybm87CgkJCWdvdG8gZXJy
b3JfY2xvc2VfbG9vcDsKCQl9CgkJaW9jdGwobG9vcGZkLCBMT09QX0NMUl9G
RCwgMCk7CgkJdXNsZWVwKDEwMDApOwoJCWlmIChpb2N0bChsb29wZmQsIExP
T1BfU0VUX0ZELCBtZW1mZCkpIHsKCQkJZXJyID0gZXJybm87CgkJCWdvdG8g
ZXJyb3JfY2xvc2VfbG9vcDsKCQl9Cgl9CgkqbWVtZmRfcCA9IG1lbWZkOwoJ
Kmxvb3BmZF9wID0gbG9vcGZkOwoJcmV0dXJuIDA7CgplcnJvcl9jbG9zZV9s
b29wOgoJY2xvc2UobG9vcGZkKTsKZXJyb3JfY2xvc2VfbWVtZmQ6CgljbG9z
ZShtZW1mZCk7CmVycm9yOgoJZXJybm8gPSBlcnI7CglyZXR1cm4gLTE7Cn0K
CnN0YXRpYyBsb25nIHN5el9tb3VudF9pbWFnZSh2b2xhdGlsZSBsb25nIGZz
YXJnLCB2b2xhdGlsZSBsb25nIGRpciwgdm9sYXRpbGUgdW5zaWduZWQgbG9u
ZyBzaXplLCB2b2xhdGlsZSB1bnNpZ25lZCBsb25nIG5zZWdzLCB2b2xhdGls
ZSBsb25nIHNlZ21lbnRzLCB2b2xhdGlsZSBsb25nIGZsYWdzLCB2b2xhdGls
ZSBsb25nIG9wdHNhcmcpCnsKCXN0cnVjdCBmc19pbWFnZV9zZWdtZW50KiBz
ZWdzID0gKHN0cnVjdCBmc19pbWFnZV9zZWdtZW50KilzZWdtZW50czsKCWlu
dCByZXMgPSAtMSwgZXJyID0gMCwgbG9vcGZkID0gLTEsIG1lbWZkID0gLTEs
IG5lZWRfbG9vcF9kZXZpY2UgPSAhIXNlZ3M7CgljaGFyKiBtb3VudF9vcHRz
ID0gKGNoYXIqKW9wdHNhcmc7CgljaGFyKiB0YXJnZXQgPSAoY2hhciopZGly
OwoJY2hhciogZnMgPSAoY2hhciopZnNhcmc7CgljaGFyKiBzb3VyY2UgPSBO
VUxMOwoJY2hhciBsb29wbmFtZVs2NF07CglpZiAobmVlZF9sb29wX2Rldmlj
ZSkgewoJCW1lbXNldChsb29wbmFtZSwgMCwgc2l6ZW9mKGxvb3BuYW1lKSk7
CgkJc25wcmludGYobG9vcG5hbWUsIHNpemVvZihsb29wbmFtZSksICIvZGV2
L2xvb3AlbGx1IiwgcHJvY2lkKTsKCQlpZiAoc2V0dXBfbG9vcF9kZXZpY2Uo
c2l6ZSwgbnNlZ3MsIHNlZ3MsIGxvb3BuYW1lLCAmbWVtZmQsICZsb29wZmQp
ID09IC0xKQoJCQlyZXR1cm4gLTE7CgkJc291cmNlID0gbG9vcG5hbWU7Cgl9
Cglta2Rpcih0YXJnZXQsIDA3NzcpOwoJY2hhciBvcHRzWzI1Nl07CgltZW1z
ZXQob3B0cywgMCwgc2l6ZW9mKG9wdHMpKTsKCWlmIChzdHJsZW4obW91bnRf
b3B0cykgPiAoc2l6ZW9mKG9wdHMpIC0gMzIpKSB7Cgl9CglzdHJuY3B5KG9w
dHMsIG1vdW50X29wdHMsIHNpemVvZihvcHRzKSAtIDMyKTsKCWlmIChzdHJj
bXAoZnMsICJpc285NjYwIikgPT0gMCkgewoJCWZsYWdzIHw9IE1TX1JET05M
WTsKCX0gZWxzZSBpZiAoc3RybmNtcChmcywgImV4dCIsIDMpID09IDApIHsK
CQlpZiAoc3Ryc3RyKG9wdHMsICJlcnJvcnM9cGFuaWMiKSB8fCBzdHJzdHIo
b3B0cywgImVycm9ycz1yZW1vdW50LXJvIikgPT0gMCkKCQkJc3RyY2F0KG9w
dHMsICIsZXJyb3JzPWNvbnRpbnVlIik7Cgl9IGVsc2UgaWYgKHN0cmNtcChm
cywgInhmcyIpID09IDApIHsKCQlzdHJjYXQob3B0cywgIixub3V1aWQiKTsK
CX0KCXJlcyA9IG1vdW50KHNvdXJjZSwgdGFyZ2V0LCBmcywgZmxhZ3MsIG9w
dHMpOwoJaWYgKHJlcyA9PSAtMSkgewoJCWVyciA9IGVycm5vOwoJCWdvdG8g
ZXJyb3JfY2xlYXJfbG9vcDsKCX0KCXJlcyA9IG9wZW4odGFyZ2V0LCBPX1JE
T05MWSB8IE9fRElSRUNUT1JZKTsKCWlmIChyZXMgPT0gLTEpIHsKCQllcnIg
PSBlcnJubzsKCX0KCmVycm9yX2NsZWFyX2xvb3A6CglpZiAobmVlZF9sb29w
X2RldmljZSkgewoJCWlvY3RsKGxvb3BmZCwgTE9PUF9DTFJfRkQsIDApOwoJ
CWNsb3NlKGxvb3BmZCk7CgkJY2xvc2UobWVtZmQpOwoJfQoJZXJybm8gPSBl
cnI7CglyZXR1cm4gcmVzOwp9CgojZGVmaW5lIEZTX0lPQ19TRVRGTEFHUyBf
SU9XKCdmJywgMiwgbG9uZykKc3RhdGljIHZvaWQgcmVtb3ZlX2Rpcihjb25z
dCBjaGFyKiBkaXIpCnsKCWludCBpdGVyID0gMDsKCURJUiogZHAgPSAwOwpy
ZXRyeToKCQl3aGlsZSAodW1vdW50MihkaXIsIE1OVF9ERVRBQ0ggfCBVTU9V
TlRfTk9GT0xMT1cpID09IDApIHsKCQl9CglkcCA9IG9wZW5kaXIoZGlyKTsK
CWlmIChkcCA9PSBOVUxMKSB7CgkJaWYgKGVycm5vID09IEVNRklMRSkgewoJ
ZXhpdCgxKTsKCQl9CglleGl0KDEpOwoJfQoJc3RydWN0IGRpcmVudCogZXAg
PSAwOwoJd2hpbGUgKChlcCA9IHJlYWRkaXIoZHApKSkgewoJCWlmIChzdHJj
bXAoZXAtPmRfbmFtZSwgIi4iKSA9PSAwIHx8IHN0cmNtcChlcC0+ZF9uYW1l
LCAiLi4iKSA9PSAwKQoJCQljb250aW51ZTsKCQljaGFyIGZpbGVuYW1lW0ZJ
TEVOQU1FX01BWF07CgkJc25wcmludGYoZmlsZW5hbWUsIHNpemVvZihmaWxl
bmFtZSksICIlcy8lcyIsIGRpciwgZXAtPmRfbmFtZSk7CgkJCXdoaWxlICh1
bW91bnQyKGZpbGVuYW1lLCBNTlRfREVUQUNIIHwgVU1PVU5UX05PRk9MTE9X
KSA9PSAwKSB7CgkJCX0KCQlzdHJ1Y3Qgc3RhdCBzdDsKCQlpZiAobHN0YXQo
ZmlsZW5hbWUsICZzdCkpCglleGl0KDEpOwoJCWlmIChTX0lTRElSKHN0LnN0
X21vZGUpKSB7CgkJCXJlbW92ZV9kaXIoZmlsZW5hbWUpOwoJCQljb250aW51
ZTsKCQl9CgkJaW50IGk7CgkJZm9yIChpID0gMDs7IGkrKykgewoJCQlpZiAo
dW5saW5rKGZpbGVuYW1lKSA9PSAwKQoJCQkJYnJlYWs7CgkJCWlmIChlcnJu
byA9PSBFUEVSTSkgewoJCQkJaW50IGZkID0gb3BlbihmaWxlbmFtZSwgT19S
RE9OTFkpOwoJCQkJaWYgKGZkICE9IC0xKSB7CgkJCQkJbG9uZyBmbGFncyA9
IDA7CgkJCQkJaWYgKGlvY3RsKGZkLCBGU19JT0NfU0VURkxBR1MsICZmbGFn
cykgPT0gMCkgewoJCQkJCX0KCQkJCQljbG9zZShmZCk7CgkJCQkJY29udGlu
dWU7CgkJCQl9CgkJCX0KCQkJaWYgKGVycm5vID09IEVST0ZTKSB7CgkJCQli
cmVhazsKCQkJfQoJCQlpZiAoZXJybm8gIT0gRUJVU1kgfHwgaSA+IDEwMCkK
CWV4aXQoMSk7CgkJCQlpZiAodW1vdW50MihmaWxlbmFtZSwgTU5UX0RFVEFD
SCB8IFVNT1VOVF9OT0ZPTExPVykpCglleGl0KDEpOwoJCX0KCX0KCWNsb3Nl
ZGlyKGRwKTsKCWZvciAoaW50IGkgPSAwOzsgaSsrKSB7CgkJaWYgKHJtZGly
KGRpcikgPT0gMCkKCQkJYnJlYWs7CgkJaWYgKGkgPCAxMDApIHsKCQkJaWYg
KGVycm5vID09IEVQRVJNKSB7CgkJCQlpbnQgZmQgPSBvcGVuKGRpciwgT19S
RE9OTFkpOwoJCQkJaWYgKGZkICE9IC0xKSB7CgkJCQkJbG9uZyBmbGFncyA9
IDA7CgkJCQkJaWYgKGlvY3RsKGZkLCBGU19JT0NfU0VURkxBR1MsICZmbGFn
cykgPT0gMCkgewoJCQkJCX0KCQkJCQljbG9zZShmZCk7CgkJCQkJY29udGlu
dWU7CgkJCQl9CgkJCX0KCQkJaWYgKGVycm5vID09IEVST0ZTKSB7CgkJCQli
cmVhazsKCQkJfQoJCQlpZiAoZXJybm8gPT0gRUJVU1kpIHsKCQkJCQlpZiAo
dW1vdW50MihkaXIsIE1OVF9ERVRBQ0ggfCBVTU9VTlRfTk9GT0xMT1cpKQoJ
ZXhpdCgxKTsKCQkJCWNvbnRpbnVlOwoJCQl9CgkJCWlmIChlcnJubyA9PSBF
Tk9URU1QVFkpIHsKCQkJCWlmIChpdGVyIDwgMTAwKSB7CgkJCQkJaXRlcisr
OwoJCQkJCWdvdG8gcmV0cnk7CgkJCQl9CgkJCX0KCQl9CglleGl0KDEpOwoJ
fQp9CgpzdGF0aWMgaW50IGluamVjdF9mYXVsdChpbnQgbnRoKQp7CglpbnQg
ZmQ7CglmZCA9IG9wZW4oIi9wcm9jL3RocmVhZC1zZWxmL2ZhaWwtbnRoIiwg
T19SRFdSKTsKCWlmIChmZCA9PSAtMSkKCWV4aXQoMSk7CgljaGFyIGJ1Zlsx
Nl07CglzcHJpbnRmKGJ1ZiwgIiVkIiwgbnRoKTsKCWlmICh3cml0ZShmZCwg
YnVmLCBzdHJsZW4oYnVmKSkgIT0gKHNzaXplX3Qpc3RybGVuKGJ1ZikpCgll
eGl0KDEpOwoJcmV0dXJuIGZkOwp9CgpzdGF0aWMgdm9pZCBraWxsX2FuZF93
YWl0KGludCBwaWQsIGludCogc3RhdHVzKQp7CglraWxsKC1waWQsIFNJR0tJ
TEwpOwoJa2lsbChwaWQsIFNJR0tJTEwpOwoJZm9yIChpbnQgaSA9IDA7IGkg
PCAxMDA7IGkrKykgewoJCWlmICh3YWl0cGlkKC0xLCBzdGF0dXMsIFdOT0hB
TkcgfCBfX1dBTEwpID09IHBpZCkKCQkJcmV0dXJuOwoJCXVzbGVlcCgxMDAw
KTsKCX0KCURJUiogZGlyID0gb3BlbmRpcigiL3N5cy9mcy9mdXNlL2Nvbm5l
Y3Rpb25zIik7CglpZiAoZGlyKSB7CgkJZm9yICg7OykgewoJCQlzdHJ1Y3Qg
ZGlyZW50KiBlbnQgPSByZWFkZGlyKGRpcik7CgkJCWlmICghZW50KQoJCQkJ
YnJlYWs7CgkJCWlmIChzdHJjbXAoZW50LT5kX25hbWUsICIuIikgPT0gMCB8
fCBzdHJjbXAoZW50LT5kX25hbWUsICIuLiIpID09IDApCgkJCQljb250aW51
ZTsKCQkJY2hhciBhYm9ydFszMDBdOwoJCQlzbnByaW50ZihhYm9ydCwgc2l6
ZW9mKGFib3J0KSwgIi9zeXMvZnMvZnVzZS9jb25uZWN0aW9ucy8lcy9hYm9y
dCIsIGVudC0+ZF9uYW1lKTsKCQkJaW50IGZkID0gb3BlbihhYm9ydCwgT19X
Uk9OTFkpOwoJCQlpZiAoZmQgPT0gLTEpIHsKCQkJCWNvbnRpbnVlOwoJCQl9
CgkJCWlmICh3cml0ZShmZCwgYWJvcnQsIDEpIDwgMCkgewoJCQl9CgkJCWNs
b3NlKGZkKTsKCQl9CgkJY2xvc2VkaXIoZGlyKTsKCX0gZWxzZSB7Cgl9Cgl3
aGlsZSAod2FpdHBpZCgtMSwgc3RhdHVzLCBfX1dBTEwpICE9IHBpZCkgewoJ
fQp9CgpzdGF0aWMgdm9pZCByZXNldF9sb29wKCkKewoJY2hhciBidWZbNjRd
OwoJc25wcmludGYoYnVmLCBzaXplb2YoYnVmKSwgIi9kZXYvbG9vcCVsbHUi
LCBwcm9jaWQpOwoJaW50IGxvb3BmZCA9IG9wZW4oYnVmLCBPX1JEV1IpOwoJ
aWYgKGxvb3BmZCAhPSAtMSkgewoJCWlvY3RsKGxvb3BmZCwgTE9PUF9DTFJf
RkQsIDApOwoJCWNsb3NlKGxvb3BmZCk7Cgl9Cn0KCnN0YXRpYyB2b2lkIHNl
dHVwX3Rlc3QoKQp7CglwcmN0bChQUl9TRVRfUERFQVRIU0lHLCBTSUdLSUxM
LCAwLCAwLCAwKTsKCXNldHBncnAoKTsKCXdyaXRlX2ZpbGUoIi9wcm9jL3Nl
bGYvb29tX3Njb3JlX2FkaiIsICIxMDAwIik7CglpZiAoc3ltbGluaygiL2Rl
di9iaW5kZXJmcyIsICIuL2JpbmRlcmZzIikpIHsKCX0KfQoKc3RhdGljIHZv
aWQgc2V0dXBfZmF1bHQoKQp7CglzdGF0aWMgc3RydWN0IHsKCQljb25zdCBj
aGFyKiBmaWxlOwoJCWNvbnN0IGNoYXIqIHZhbDsKCQlib29sIGZhdGFsOwoJ
fSBmaWxlc1tdID0gewoJICAgIHsiL3N5cy9rZXJuZWwvZGVidWcvZmFpbHNs
YWIvaWdub3JlLWdmcC13YWl0IiwgIk4iLCB0cnVlfSwKCSAgICB7Ii9zeXMv
a2VybmVsL2RlYnVnL2ZhaWxfZnV0ZXgvaWdub3JlLXByaXZhdGUiLCAiTiIs
IGZhbHNlfSwKCSAgICB7Ii9zeXMva2VybmVsL2RlYnVnL2ZhaWxfcGFnZV9h
bGxvYy9pZ25vcmUtZ2ZwLWhpZ2htZW0iLCAiTiIsIGZhbHNlfSwKCSAgICB7
Ii9zeXMva2VybmVsL2RlYnVnL2ZhaWxfcGFnZV9hbGxvYy9pZ25vcmUtZ2Zw
LXdhaXQiLCAiTiIsIGZhbHNlfSwKCSAgICB7Ii9zeXMva2VybmVsL2RlYnVn
L2ZhaWxfcGFnZV9hbGxvYy9taW4tb3JkZXIiLCAiMCIsIGZhbHNlfSwKCX07
Cgl1bnNpZ25lZCBpOwoJZm9yIChpID0gMDsgaSA8IHNpemVvZihmaWxlcykg
LyBzaXplb2YoZmlsZXNbMF0pOyBpKyspIHsKCQlpZiAoIXdyaXRlX2ZpbGUo
ZmlsZXNbaV0uZmlsZSwgZmlsZXNbaV0udmFsKSkgewoJCQlpZiAoZmlsZXNb
aV0uZmF0YWwpCglleGl0KDEpOwoJCX0KCX0KfQoKc3RhdGljIHZvaWQgZXhl
Y3V0ZV9vbmUodm9pZCk7CgojZGVmaW5lIFdBSVRfRkxBR1MgX19XQUxMCgpz
dGF0aWMgdm9pZCBsb29wKHZvaWQpCnsKCWludCBpdGVyID0gMDsKCWZvciAo
OzsgaXRlcisrKSB7CgkJY2hhciBjd2RidWZbMzJdOwoJCXNwcmludGYoY3dk
YnVmLCAiLi8lZCIsIGl0ZXIpOwoJCWlmIChta2Rpcihjd2RidWYsIDA3Nzcp
KQoJZXhpdCgxKTsKCQlyZXNldF9sb29wKCk7CgkJaW50IHBpZCA9IGZvcmso
KTsKCQlpZiAocGlkIDwgMCkKCWV4aXQoMSk7CgkJaWYgKHBpZCA9PSAwKSB7
CgkJCWlmIChjaGRpcihjd2RidWYpKQoJZXhpdCgxKTsKCQkJc2V0dXBfdGVz
dCgpOwoJCQlleGVjdXRlX29uZSgpOwoJCQlleGl0KDApOwoJCX0KCQlpbnQg
c3RhdHVzID0gMDsKCQl1aW50NjRfdCBzdGFydCA9IGN1cnJlbnRfdGltZV9t
cygpOwoJCWZvciAoOzspIHsKCQkJaWYgKHdhaXRwaWQoLTEsICZzdGF0dXMs
IFdOT0hBTkcgfCBXQUlUX0ZMQUdTKSA9PSBwaWQpCgkJCQlicmVhazsKCQkJ
c2xlZXBfbXMoMSk7CgkJCWlmIChjdXJyZW50X3RpbWVfbXMoKSAtIHN0YXJ0
IDwgNTAwMCkKCQkJCWNvbnRpbnVlOwoJCQlraWxsX2FuZF93YWl0KHBpZCwg
JnN0YXR1cyk7CgkJCWJyZWFrOwoJCX0KCQlyZW1vdmVfZGlyKGN3ZGJ1Zik7
Cgl9Cn0KCnZvaWQgZXhlY3V0ZV9vbmUodm9pZCkKewptZW1jcHkoKHZvaWQq
KTB4MjAwMDAwMDAsICJudGZzM1wwMDAiLCA2KTsKbWVtY3B5KCh2b2lkKikw
eDIwMDAwMTAwLCAiLi9maWxlMFwwMDAiLCA4KTsKKih1aW50NjRfdCopMHgy
MDAwMDIwMCA9IDB4MjAwMTAwMDA7Cm1lbWNweSgodm9pZCopMHgyMDAxMDAw
MCwgIlx4ZWJceDUyXHg5MFx4NGVceDU0XHg0Nlx4NTNceDIwXHgyMFx4MjBc
eDIwXHgwMFx4MDRceDA0XHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
ZjhceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4ODBceDAwXHg4MFx4MDBceGZmXHgwN1x4MDBceDAw
XHgwMFx4MDBceDAwXHgwMFx4MDRceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBc
eDAwXHhmZlx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceGY2XHgwMFx4
MDBceDAwXHgwMSIsIDY5KTsKKih1aW50NjRfdCopMHgyMDAwMDIwOCA9IDB4
NDU7CioodWludDY0X3QqKTB4MjAwMDAyMTAgPSAwOwoqKHVpbnQ2NF90Kikw
eDIwMDAwMjE4ID0gMHgyMDAxMDEyMDsKbWVtY3B5KCh2b2lkKikweDIwMDEw
MTIwLCAiXHg0Nlx4NDlceDRjXHg0NVx4MzBceDAwXHgwM1x4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDFceDAwXHgwMVx4MDBceDM4
XHgwMFx4MDFceDAwXHg5OFx4MDFceDAwXHgwMFx4MDBceDA0XHgwMFx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDRceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwM1x4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDEwXHgwMFx4MDBceDAwXHg2MFx4MDBceDAwXHgwMFx4MDBceDAw
XHgxOFx4MDBceDAwXHgwMFx4MDBceDAwXHg0OFx4MDBceDAwXHgwMFx4MThc
eDAwXHgwMFx4MDBceDgwXHgxOFx4NzVceGMxXHgzNFx4NGZceGQ4XHgwMVx4
ODBceDE4XHg3NVx4YzFceDM0XHg0Zlx4ZDhceDAxXHg4MFx4MThceDc1XHhj
MVx4MzRceDRmXHhkOFx4MDFceDgwXHgxOFx4NzVceGMxXHgzNFx4NGZceGQ4
XHgwMVx4MDZceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDFceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDMwXHgwMFx4MDBceDAw
XHg2OFx4MDBceDAwXHgwMFx4MDBceDAwXHgxOFx4MDBceDAwXHgwMFx4MDJc
eDAwXHg0YVx4MDBceDAwXHgwMFx4MThceDAwXHgwMVx4MDBceDA1XHgwMFx4
MDBceDAwXHgwMFx4MDBceDA1XHgwMFx4ODBceDE4XHg3NVx4YzFceDM0XHg0
Zlx4ZDhceDAxXHg4MFx4MThceDc1XHhjMVx4MzRceDRmXHhkOFx4MDFceDgw
XHgxOFx4NzVceGMxXHgzNFx4NGZceGQ4XHgwMVx4ODBceDE4XHg3NVx4YzFc
eDM0XHg0Zlx4ZDhceDAxXHgwMFx4NzBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHg2Y1x4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDZceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwNFx4MDNceDI0XHgwMFx4NGRceDAw
XHg0Nlx4MDBceDU0XHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4ODBc
eDAwXHgwMFx4MDBceDQ4XHgwMFx4MDBceDAwXHgwMVx4MDBceDQwXHgwMFx4
MDBceDAwXHgwMVx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4M2VceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHg0MFx4MDBceDAw
XHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHhmMFx4MDNceDAwXHgwMFx4MDBc
eDAwXHgwMFx4MDBceGYwXHgwM1x4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
ZjBceDAzXHgwMFx4MDBceDAwXHgwMFx4MDBceDExXHgzZlx4MDRceDAwXHgw
MFx4MDBceDAwXHgwMFx4YjBceDAwXHgwMFx4MDBceDQ4XHgwMFx4MDBceDAw
XHgwMVx4MDBceDQwXHgwMFx4MDBceDAwXHgwM1x4MDBceDAwXHgwMFx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHg0MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgx
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MjBceDAwXHgwMFx4MDBceDAw
XHgwMFx4MDBceDAwXHgyMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBc
eDExXHgwMVx4MDIiLCAzOTUpOwoqKHVpbnQ2NF90KikweDIwMDAwMjIwID0g
MHgxOGI7CioodWludDY0X3QqKTB4MjAwMDAyMjggPSAweDQwMDA7CioodWlu
dDY0X3QqKTB4MjAwMDAyMzAgPSAweDIwMDEwMmUwOwptZW1jcHkoKHZvaWQq
KTB4MjAwMTAyZTAsICJceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHhiMFx4MDBceDAw
XHgwMFx4NDhceDAwXHgwMFx4MDBceDAxXHgwMFx4NDBceDAwXHgwMFx4MDBc
eDAzXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDQwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDEwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAw
XHgwOFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDA4XHgwMFx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MTFceDAxXHgwMlx4MDBceDAwXHgwMFx4
MDBceDAwXHhmZlx4ZmZceGZmXHhmZlx4MDBceDAwXHgwM1x4MDBceDQ2XHg0
OVx4NGNceDQ1XHgzMFx4MDBceDAzXHgwMFx4MDBceDAwXHgwMFx4MDBceDAw
XHgwMFx4MDBceDAwXHgwMVx4MDBceDAxXHgwMFx4MzhceDAwXHgwMVx4MDBc
eDU4XHgwMVx4MDBceDAwXHgwMFx4MDRceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwM1x4MDBceDAwXHgwMFx4MDFceDAwXHgw
MFx4MDBceDAyXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MTBceDAw
XHgwMFx4MDBceDYwXHgwMFx4MDBceDAwXHgwMFx4MDBceDE4XHgwMFx4MDBc
eDAwXHgwMFx4MDBceDQ4XHgwMFx4MDBceDAwXHgxOFx4MDBceDAwXHgwMFx4
ODBceDE4XHg3NVx4YzFceDM0XHg0Zlx4ZDhceDAxXHg4MFx4MThceDc1XHhj
MVx4MzRceDRmXHhkOFx4MDFceDgwXHgxOFx4NzVceGMxXHgzNFx4NGZceGQ4
XHgwMVx4ODBceDE4XHg3NVx4YzFceDM0XHg0Zlx4ZDhceDAxXHgwNlx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMVx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAw
XHgwMFx4MDBceDAwXHgwMFx4MzBceDAwXHgwMFx4MDBceDcwXHgwMFx4MDBc
eDAwXHgwMFx4MDBceDE4XHgwMFx4MDBceDAwXHgwMlx4MDBceDUyXHgwMFx4
MDBceDAwXHgxOFx4MDBceDAxXHgwMFx4MDVceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDVceDAwXHg4MFx4MThceDc1XHhjMVx4MzRceDRmXHhkOFx4MDFceDgw
XHgxOFx4NzVceGMxXHgzNFx4NGZceGQ4XHgwMVx4ODBceDE4XHg3NVx4YzFc
eDM0XHg0Zlx4ZDhceDAxXHg4MFx4MThceDc1XHhjMVx4MzRceDRmXHhkOFx4
MDFceDAwXHgxMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDEwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwNlx4MDBceDAwXHgwMFx4MDBceDAw
XHgwMFx4MDBceDA4XHgwM1x4MjRceDAwXHg0ZFx4MDBceDQ2XHgwMFx4NTRc
eDAwXHg0ZFx4MDBceDY5XHgwMFx4NzJceDAwXHg3Mlx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDgwXHgwMFx4MDBceDAwXHg0OCIsIDM2NSk7Cioo
dWludDY0X3QqKTB4MjAwMDAyMzggPSAweDE2ZDsKKih1aW50NjRfdCopMHgy
MDAwMDI0MCA9IDB4NDNhMDsKKih1aW50NjRfdCopMHgyMDAwMDI0OCA9IDB4
MjAwMTA0YzA7Cm1lbWNweSgodm9pZCopMHgyMDAxMDRjMCwgIlx4MDBceDAw
XHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDJceDAwXHg0Nlx4NDlceDRjXHg0
NVx4MzBceDAwXHgwM1x4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAw
XHgwMFx4MDJceDAwXHgwMVx4MDBceDM4XHgwMFx4MDFceDAwXHg1OFx4MDFc
eDAwXHgwMFx4MDBceDA0XHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDNceDAwXHgwMFx4MDBceDAyXHgwMFx4MDBceDAwXHgw
Mlx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDEwXHgwMFx4MDBceDAw
XHg2MFx4MDBceDAwXHgwMFx4MDBceDAwXHgxOFx4MDBceDAwXHgwMFx4MDBc
eDAwXHg0OFx4MDBceDAwXHgwMFx4MThceDAwXHgwMFx4MDBceDgwXHgxOFx4
NzVceGMxXHgzNFx4NGZceGQ4XHgwMVx4ODBceDE4XHg3NVx4YzFceDM0XHg0
Zlx4ZDhceDAxXHg4MFx4MThceDc1XHhjMVx4MzRceDRmXHhkOFx4MDFceDgw
XHgxOFx4NzVceGMxXHgzNFx4NGZceGQ4XHgwMVx4MDZceDAwXHgwMFx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDFceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAw
XHgwMFx4MDBceDMwXHgwMFx4MDBceDAwXHg3MFx4MDBceDAwXHgwMFx4MDBc
eDAwXHgxOFx4MDBceDAwXHgwMFx4MDJceDAwXHg1Mlx4MDBceDAwXHgwMFx4
MThceDAwXHgwMVx4MDBceDA1XHgwMFx4MDBceDAwXHgwMFx4MDBceDA1XHgw
MFx4ODBceDE4XHg3NVx4YzFceDM0XHg0Zlx4ZDhceDAxXHg4MFx4MThceDc1
XHhjMVx4MzRceDRmXHhkOFx4MDFceDgwXHgxOFx4NzVceGMxXHgzNFx4NGZc
eGQ4XHgwMVx4ODBceDE4XHg3NVx4YzFceDM0XHg0Zlx4ZDhceDAxXHgwMFx4
MDBceDA0XHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDRceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDZceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAw
XHgwOFx4MDNceDI0XHgwMFx4NGNceDAwXHg2Zlx4MDBceDY3XHgwMFx4NDZc
eDAwXHg2OVx4MDBceDZjXHgwMFx4NjVceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHg4MFx4MDBceDAwXHgwMFx4NDhceDAwXHgwMFx4MDBceDAxXHgw
MFx4NDBceDAwXHgwMFx4MDBceDAxXHgwMFx4MDBceDAwXHgwMFx4MDBceDAw
XHgwMFx4MDBceDAwXHgzZlx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBc
eDQwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwNFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDA0XHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDRceDAwXHgwMFx4MDBceDAwXHgwMFx4MjFceDQw
XHgwMFx4MDEiLCAzNjQpOwoqKHVpbnQ2NF90KikweDIwMDAwMjUwID0gMHgx
NmM7CioodWludDY0X3QqKTB4MjAwMDAyNTggPSAweDQ3ZTA7CioodWludDY0
X3QqKTB4MjAwMDAyNjAgPSAweDIwMDEwNjYwOwptZW1jcHkoKHZvaWQqKTB4
MjAwMTA2NjAsICJceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAy
XHgwMFx4NDZceDQ5XHg0Y1x4NDVceDMwXHgwMFx4MDNceDAwXHgwMFx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAzXHgwMFx4MDFceDAwXHgzOFx4
MDBceDAxXHgwMFx4ZTBceDAxXHgwMFx4MDBceDAwXHgwNFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDA2XHgwMFx4MDBceDAw
XHgwM1x4MDBceDAwXHgwMFx4MDRceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBc
eDAwXHgxMFx4MDBceDAwXHgwMFx4NDhceDAwXHgwMFx4MDBceDAwXHgwMFx4
MThceDAwXHgwMFx4MDBceDAwXHgwMFx4MzBceDAwXHgwMFx4MDBceDE4XHgw
MFx4MDBceDAwXHg4MFx4MThceDc1XHhjMVx4MzRceDRmXHhkOFx4MDFceDgw
XHgxOFx4NzVceGMxXHgzNFx4NGZceGQ4XHgwMVx4ODBceDE4XHg3NVx4YzFc
eDM0XHg0Zlx4ZDhceDAxXHg4MFx4MThceDc1XHhjMVx4MzRceDRmXHhkOFx4
MDFceDA2XHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgzMFx4MDBceDAwXHgwMFx4NjhceDAw
XHgwMFx4MDBceDAwXHgwMFx4MThceDAwXHgwMFx4MDBceDAxXHgwMFx4NTBc
eDAwXHgwMFx4MDBceDE4XHgwMFx4MDFceDAwXHgwNVx4MDBceDAwXHgwMFx4
MDBceDAwXHgwNVx4MDBceDgwXHgxOFx4NzVceGMxXHgzNFx4NGZceGQ4XHgw
MVx4ODBceDE4XHg3NVx4YzFceDM0XHg0Zlx4ZDhceDAxXHg4MFx4MThceDc1
XHhjMVx4MzRceDRmXHhkOFx4MDFceDgwXHgxOFx4NzVceGMxXHgzNFx4NGZc
eGQ4XHgwMVx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDA2XHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDdceDAzXHgyNFx4MDBceDU2XHgwMFx4NmZceDAw
XHg2Y1x4MDBceDc1XHgwMFx4NmRceDAwXHg2NVx4MDBceDUwXHgwMFx4MDBc
eDAwXHg4MFx4MDBceDAwXHgwMFx4MDBceDAwXHgxOFx4MDBceDAwXHgwMFx4
MDJceDAwXHg2NFx4MDBceDAwXHgwMFx4MThceDAwXHgwMFx4MDBceDAxXHgw
MFx4MDRceDgwXHg0OFx4MDBceDAwXHgwMFx4NTRceDAwXHgwMFx4MDBceDAw
XHgwMFx4MDBceDAwXHgxNFx4MDBceDAwXHgwMFx4MDJceDAwXHgzNFx4MDBc
eDAyXHgwMFx4MDBceDAwXHgwMFx4MDBceDE0XHgwMFx4OWZceDAxXHgxMlx4
MDBceDAxXHgwMVx4MDBceDAwXHgwMFx4MDBceDAwXHgwNVx4MTJceDAwXHgw
MFx4MDBceDAwXHgwMFx4MThceDAwXHg5Zlx4MDFceDEyXHgwMFx4MDFceDAy
XHgwMFx4MDBceDAwXHgwMFx4MDBceDA1XHgyMFx4MDBceDAwXHgwMFx4MjBc
eDAyXHgwMFx4MDBceDAxXHgwMVx4MDBceDAwXHgwMFx4MDBceDAwXHgwNVx4
MTJceDAwXHgwMFx4MDBceDAxXHgwMlx4MDBceDAwXHgwMFx4MDBceDAwXHgw
NVx4MjBceDAwXHgwMFx4MDBceDIwXHgwMlx4MDBceDAwXHgwMFx4MDBceDAw
XHgwMFx4NjBceDAwXHgwMFx4MDBceDMwXHgwMFx4MDBceDAwXHgwMFx4MDBc
eDE4XHgwMFx4MDBceDAwXHgwNFx4MDBceDEyXHgwMFx4MDBceDAwXHgxOFx4
MDBceDAwXHgwMFx4NzNceDAwXHg3OVx4MDBceDdhXHgwMFx4NmJceDAwXHg2
MVx4MDBceDZjXHgwMFx4NmNceDAwXHg2NVx4MDBceDcyXHgwMFx4MDBceDAw
XHgwMFx4MDBceDAwXHgwMFx4NzBceDAwXHgwMFx4MDBceDI4XHgwMFx4MDBc
eDAwXHgwMFx4MDBceDE4XHgwMFx4MDBceDAwXHgwNVx4MDBceDBjXHgwMFx4
MDBceDAwXHgxOFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwM1x4MDFceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDgw
XHgwMFx4MDBceDAwXHgxOCIsIDQ4NSk7CioodWludDY0X3QqKTB4MjAwMDAy
NjggPSAweDFlNTsKKih1aW50NjRfdCopMHgyMDAwMDI3MCA9IDB4NGJlMDsK
Kih1aW50NjRfdCopMHgyMDAwMDI3OCA9IDB4MjAwMTA4ODA7Cm1lbWNweSgo
dm9pZCopMHgyMDAxMDg4MCwgIlx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAw
XHgwMFx4MDRceDAwXHg0Nlx4NDlceDRjXHg0NVx4MzBceDAwXHgwM1x4MDBc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDRceDAwXHgwMVx4
MDBceDM4XHgwMFx4MDFceDAwXHhjMFx4MDFceDAwXHgwMFx4MDBceDA0XHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDRceDAw
XHgwMFx4MDBceDA0XHgwMFx4MDBceDAwXHgwMlx4MDBceDAwXHgwMFx4MDBc
eDAwXHgwMFx4MDBceDEwXHgwMFx4MDBceDAwXHg0OFx4MDBceDAwXHgwMFx4
MDBceDAwXHgxOFx4MDBceDAwXHgwMFx4MDBceDAwXHgzMFx4MDBceDAwXHgw
MFx4MThceDAwXHgwMFx4MDBceDgwXHgxOFx4NzVceGMxXHgzNFx4NGZceGQ4
XHgwMVx4ODBceDE4XHg3NVx4YzFceDM0XHg0Zlx4ZDhceDAxXHg4MFx4MThc
eDc1XHhjMVx4MzRceDRmXHhkOFx4MDFceDgwXHgxOFx4NzVceGMxXHgzNFx4
NGZceGQ4XHgwMVx4MDZceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDMwXHgwMFx4MDBceDAw
XHg3MFx4MDBceDAwXHgwMFx4MDBceDAwXHgxOFx4MDBceDAwXHgwMFx4MDJc
eDAwXHg1Mlx4MDBceDAwXHgwMFx4MThceDAwXHgwMVx4MDBceDA1XHgwMFx4
MDBceDAwXHgwMFx4MDBceDA1XHgwMFx4ODBceDE4XHg3NVx4YzFceDM0XHg0
Zlx4ZDhceDAxXHg4MFx4MThceDc1XHhjMVx4MzRceDRmXHhkOFx4MDFceDgw
XHgxOFx4NzVceGMxXHgzNFx4NGZceGQ4XHgwMVx4ODBceDE4XHg3NVx4YzFc
eDM0XHg0Zlx4ZDhceDAxXHgwMFx4MTBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDAwXHgwYVx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDZceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwOFx4MDNceDI0XHgwMFx4NDFceDAw
XHg3NFx4MDBceDc0XHgwMFx4NzJceDAwXHg0NFx4MDBceDY1XHgwMFx4NjZc
eDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHg1MFx4MDBceDAwXHgwMFx4
ODBceDAwXHgwMFx4MDBceDAwXHgwMFx4MThceDAwXHgwMFx4MDBceDAzXHgw
MFx4NjRceDAwXHgwMFx4MDBceDE4XHgwMFx4MDBceDAwXHgwMVx4MDBceDA0
XHg4MFx4NDhceDAwXHgwMFx4MDBceDU0XHgwMFx4MDBceDAwXHgwMFx4MDBc
eDAwXHgwMFx4MTRceDAwXHgwMFx4MDBceDAyXHgwMFx4MzRceDAwXHgwMlx4
MDBceDAwXHgwMFx4MDBceDAwXHgxNFx4MDBceDg5XHgwMFx4MTJceDAwXHgw
MVx4MDFceDAwXHgwMFx4MDBceDAwXHgwMFx4MDVceDEyXHgwMFx4MDBceDAw
XHgwMFx4MDBceDE4XHgwMFx4ODlceDAwXHgxMlx4MDBceDAxXHgwMlx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwNVx4MjBceDAwXHgwMFx4MDBceDIwXHgwMlx4
MDBceDAwXHgwMVx4MDFceDAwXHgwMFx4MDBceDAwXHgwMFx4MDVceDEyXHgw
MFx4MDBceDAwXHgwMVx4MDJceDAwXHgwMFx4MDBceDAwXHgwMFx4MDVceDIw
XHgwMFx4MDBceDAwXHgyMFx4MDJceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBc
eDgwXHgwMFx4MDBceDAwXHg0OFx4MDBceDAwXHgwMFx4MDFceDAwXHg0MFx4
MDBceDAwXHgwMFx4MDFceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgw
MFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4NDBceDAw
XHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4MTBceDAwXHgwMFx4MDBc
eDAwXHgwMFx4MDBceDAwXHgwYVx4MDBceDAwXHgwMFx4MDBceDAwXHgwMFx4
MDBceDBhXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgxMVx4MDFceDQ2Iiwg
NDY3KTsKKih1aW50NjRfdCopMHgyMDAwMDI4MCA9IDB4MWQzOwoqKHVpbnQ2
NF90KikweDIwMDAwMjg4ID0gMHg0ZmUwOwoqKHVpbnQ2NF90KikweDIwMDAw
MjkwID0gMDsKKih1aW50NjRfdCopMHgyMDAwMDI5OCA9IDA7CioodWludDY0
X3QqKTB4MjAwMDAyYTAgPSAwOwoqKHVpbnQ2NF90KikweDIwMDAwMmE4ID0g
MDsKKih1aW50NjRfdCopMHgyMDAwMDJiMCA9IDA7CioodWludDY0X3QqKTB4
MjAwMDAyYjggPSAwOwoqKHVpbnQ2NF90KikweDIwMDAwMmMwID0gMDsKKih1
aW50NjRfdCopMHgyMDAwMDJjOCA9IDA7CioodWludDY0X3QqKTB4MjAwMDAy
ZDAgPSAweDU3ZTA7CioodWludDY0X3QqKTB4MjAwMDAyZDggPSAwOwoqKHVp
bnQ2NF90KikweDIwMDAwMmUwID0gMDsKKih1aW50NjRfdCopMHgyMDAwMDJl
OCA9IDB4NWZlMDsKKih1aW50NjRfdCopMHgyMDAwMDJmMCA9IDA7CioodWlu
dDY0X3QqKTB4MjAwMDAyZjggPSAwOwoqKHVpbnQ2NF90KikweDIwMDAwMzAw
ID0gMDsKKih1aW50NjRfdCopMHgyMDAwMDMwOCA9IDA7CioodWludDY0X3Qq
KTB4MjAwMDAzMTAgPSAwOwoqKHVpbnQ2NF90KikweDIwMDAwMzE4ID0gMDsK
Kih1aW50NjRfdCopMHgyMDAwMDMyMCA9IDA7CioodWludDY0X3QqKTB4MjAw
MDAzMjggPSAwOwoqKHVpbnQ2NF90KikweDIwMDAwMzMwID0gMDsKKih1aW50
NjRfdCopMHgyMDAwMDMzOCA9IDA7CioodWludDY0X3QqKTB4MjAwMDAzNDAg
PSAwOwoqKHVpbnQ2NF90KikweDIwMDAwMzQ4ID0gMHg0NjA4MDsKKih1aW50
OF90KikweDIwMDdjNmEwID0gMDsKCWluamVjdF9mYXVsdCg5OSk7CnN5el9t
b3VudF9pbWFnZSgweDIwMDAwMDAwLCAweDIwMDAwMTAwLCAwLCAweGUsIDB4
MjAwMDAyMDAsIDAsIDB4MjAwN2M2YTApOwoKfQppbnQgbWFpbih2b2lkKQp7
CgkJc3lzY2FsbChfX05SX21tYXAsIDB4MWZmZmYwMDB1bCwgMHgxMDAwdWws
IDB1bCwgMHgzMnVsLCAtMSwgMHVsKTsKCXN5c2NhbGwoX19OUl9tbWFwLCAw
eDIwMDAwMDAwdWwsIDB4MTAwMDAwMHVsLCA3dWwsIDB4MzJ1bCwgLTEsIDB1
bCk7CglzeXNjYWxsKF9fTlJfbW1hcCwgMHgyMTAwMDAwMHVsLCAweDEwMDB1
bCwgMHVsLCAweDMydWwsIC0xLCAwdWwpOwoJc2V0dXBfZmF1bHQoKTsKCQkJ
dXNlX3RlbXBvcmFyeV9kaXIoKTsKCQkJbG9vcCgpOwoJcmV0dXJuIDA7Cn0K

--000000000000bac62505e0e64faf--

