X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7369" "Wednesday" "13" "July" "2016" "10:52:44" "-0400" "CAI Qian" "caiqian@redhat.com" "<1929364718.4484556.1468421564523.JavaMail.zimbra@redhat.com>" "161" "[oss-security] cve request: local DoS by overflowing kernel mount table using shared bind mount" nil nil nil "7" "2016071314:52:44" "[oss-security] cve request: local DoS by overflowing kernel mount table using shared bind mount" (number mark "U       caiqian@redh Jul 13  161/7369  " thread-indent "\"[oss-security] cve request: local DoS by overflowing kernel mount table using shared bind mount\"\n") "<50689784.4481972.1468420932377.JavaMail.zimbra@redhat.com>" ("<50689784.4481972.1468420932377.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18302 invoked by uid 550); 13 Jul 2016 14:52:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18276 invoked from network); 13 Jul 2016 14:52:58 -0000
Date: Wed, 13 Jul 2016 10:52:44 -0400 (EDT)
From: CAI Qian <caiqian@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <1929364718.4484556.1468421564523.JavaMail.zimbra@redhat.com>
In-Reply-To: <50689784.4481972.1468420932377.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.18.41.13]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC45 (Linux)/8.0.6_GA_5922)
Thread-Topic: cve request: local DoS by overflowing kernel mount table using shared bind mount
Thread-Index: H9NCIigde676k63YaH9mEWpeWy7Qtw==
Subject: [oss-security] cve request: local DoS by overflowing kernel mount table using
 shared bind mount

Below is the discussion between myself and staffs from security@kernel.org.
=C2=A0=C2=A0 CAI Qian

=3D=3D=3D Initial Report =3D=3D=3D
It was reported that the mount table expands by a power-of-two
with each bind mount command. This is a change of behavior
against the older kernel (i.e., 2.6.18). Hence, the older kernel
won't be affected or harder to exploit.

If the system is configured in the way that a non-root user
allows bind mount even if with limit number of bind mount
allowed, a non-root user could cause a local DoS by quickly
overflow the mount table. For example,

$ cat /etc/fstab
...
/tmp/1 =C2=A0 =C2=A0 =C2=A0 =C2=A0/tmp/2 =C2=A0 =C2=A0 =C2=A0 =C2=A0none =
=C2=A0 =C2=A0 =C2=A0 =C2=A0user,bind =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 0

Even if the application could say only allow 30 bind mounts to
increase the security.

$ for i in `seq 1 20`; do mount /tmp/1; done
$ mount | wc -l
1048606

Once this happened, it will cause a deadlock for the whole
system,

[ =C2=A0361.301885] NMI backtrace for cpu 0
[ =C2=A0361.302352] CPU: 0 PID: 29 Comm: kworker/0:1 Not tainted 3.10.0-327=
.10.1.el7.x86_64 #1
[ =C2=A0361.303062] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), =
BIOS 1.8.1-20150318_183358- 04/01/2014
[ =C2=A0361.303882] Workqueue: events qxl_fb_work [qxl]
[ =C2=A0361.304379] task: ffff88013943d080 ti: ffff8801395ec000 task.ti: ff=
ff8801395ec000
[ =C2=A0361.305057] RIP: 0010:[<ffffffff811e0b33>] =C2=A0[<ffffffff811e0b33=
>] prune_super+0x23/0x170
[ =C2=A0361.305784] RSP: 0000:ffff8801395ef5c0 =C2=A0EFLAGS: 00000206
[ =C2=A0361.306318] RAX: 0000000000000080 RBX: ffff8801394243b0 RCX: 000000=
0000000000
[ =C2=A0361.306973] RDX: 0000000000000000 RSI: ffff8801395ef710 RDI: ffff88=
01394243b0
[ =C2=A0361.307628] RBP: ffff8801395ef5e8 R08: 0000000000000000 R09: 000000=
0000000040
[ =C2=A0361.308282] R10: 0000000000000000 R11: 0000000000000220 R12: ffff88=
01395ef710
[ =C2=A0361.308939] R13: ffff880139424000 R14: ffff8801395ef710 R15: 000000=
0000000000
[ =C2=A0361.309599] FS: =C2=A00000000000000000(0000) GS:ffff88013fc00000(00=
00) knlGS:0000000000000000
[ =C2=A0361.310320] CS: =C2=A00010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ =C2=A0361.310893] CR2: 00007fea0c55dc3d CR3: 00000000b770d000 CR4: 000000=
00003406f0
[ =C2=A0361.311561] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 000000=
0000000000
[ =C2=A0361.312227] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 000000=
0000000400
[ =C2=A0361.312894] Stack:
[ =C2=A0361.313223] =C2=A00000000000000400 ffff8801395ef710 ffff8801394243b=
0 0000000000000258
[ =C2=A0361.313950] =C2=A00000000000000000 ffff8801395ef688 ffffffff8117c46=
b 0000000000000000
[ =C2=A0361.314858] =C2=A0ffff8801395ef630 ffffffff811d5e21 ffff8801395ef72=
0 0000000000000036
[ =C2=A0361.315615] Call Trace:
[ =C2=A0361.315995] =C2=A0[<ffffffff8117c46b>] shrink_slab+0xab/0x300
[ =C2=A0361.316559] =C2=A0[<ffffffff811d5e21>] ? vmpressure+0x21/0x90
[ =C2=A0361.317114] =C2=A0[<ffffffff8117f6a2>] do_try_to_free_pages+0x3c2/0=
x4e0
[ =C2=A0361.317727] =C2=A0[<ffffffff8117f8bc>] try_to_free_pages+0xfc/0x180
[ =C2=A0361.318309] =C2=A0[<ffffffff811735bd>] __alloc_pages_nodemask+0x7fd=
/0xb90
[ =C2=A0361.318927] =C2=A0[<ffffffff811b4429>] alloc_pages_current+0xa9/0x1=
70
[ =C2=A0361.319513] =C2=A0[<ffffffff811be9ec>] new_slab+0x2ec/0x300
[ =C2=A0361.320045] =C2=A0[<ffffffff8163220f>] __slab_alloc+0x315/0x48f
[ =C2=A0361.320596] =C2=A0[<ffffffff811e064c>] ? get_empty_filp+0x5c/0x1a0
[ =C2=A0361.321161] =C2=A0[<ffffffff811c0fb3>] kmem_cache_alloc+0x193/0x1d0
[ =C2=A0361.321735] =C2=A0[<ffffffff811e064c>] ? get_empty_filp+0x5c/0x1a0
[ =C2=A0361.322295] =C2=A0[<ffffffff811e064c>] get_empty_filp+0x5c/0x1a0
[ =C2=A0361.322845] =C2=A0[<ffffffff811e07ae>] alloc_file+0x1e/0xf0
[ =C2=A0361.323362] =C2=A0[<ffffffff81182773>] __shmem_file_setup+0x113/0x1=
f0
[ =C2=A0361.323940] =C2=A0[<ffffffff81182860>] shmem_file_setup+0x10/0x20
[ =C2=A0361.324496] =C2=A0[<ffffffffa039f5ab>] drm_gem_object_init+0x2b/0x4=
0 [drm]
[ =C2=A0361.325103] =C2=A0[<ffffffffa0422c3d>] qxl_bo_create+0x7d/0x190 [qx=
l]
[ =C2=A0361.325680] =C2=A0[<ffffffffa042798c>] ? qxl_release_list_add+0x5c/=
0xc0 [qxl]
[ =C2=A0361.326299] =C2=A0[<ffffffffa0424066>] qxl_alloc_bo_reserved+0x46/0=
xb0 [qxl]
[ =C2=A0361.326912] =C2=A0[<ffffffffa0424fde>] qxl_image_alloc_objects+0xae=
/0x140 [qxl]
[ =C2=A0361.327544] =C2=A0[<ffffffffa042556e>] qxl_draw_opaque_fb+0xce/0x3c=
0 [qxl]
[ =C2=A0361.328145] =C2=A0[<ffffffffa0421ee2>] qxl_fb_dirty_flush+0x1a2/0x2=
60 [qxl]
[ =C2=A0361.328754] =C2=A0[<ffffffffa0421fb9>] qxl_fb_work+0x19/0x20 [qxl]
[ =C2=A0361.329306] =C2=A0[<ffffffff8109d5db>] process_one_work+0x17b/0x470
[ =C2=A0361.329865] =C2=A0[<ffffffff8109e3ab>] worker_thread+0x11b/0x400
[ =C2=A0361.330393] =C2=A0[<ffffffff8109e290>] ? rescuer_thread+0x400/0x400
[ =C2=A0361.330940] =C2=A0[<ffffffff810a5acf>] kthread+0xcf/0xe0
[ =C2=A0361.331419] =C2=A0[<ffffffff810a5a00>] ? kthread_create_on_node+0x1=
40/0x140
[ =C2=A0361.332005] =C2=A0[<ffffffff81645998>] ret_from_fork+0x58/0x90
[ =C2=A0361.332513] =C2=A0[<ffffffff810a5a00>] ? kthread_create_on_node+0x1=
40/0x140
[ =C2=A0361.333093] Code: 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 55 48 89 e=
5 41 57 41 56 49 89 f6 41 55 4c 8d af 50 fc ff ff 41 54 53 4c 8b 46 08 48 8=
9 fb <4d> 85 c0 74 09 f6 06 80 0f 84 2f 01 00 00 48 8b 83 80 fc ff ff
[ =C2=A0361.335906] Kernel panic - not syncing: hung_task: blocked tasks

=3D=3D=3D From Al Viro =3D=3D=3D
the number of vfsmounts getting propagation from /tmp is doubling on
each step. =C2=A0You are asking to take a subtree at /tmp/2 and attach it to
/tmp/1 *and* *all* *existing* peers. =C2=A0Turning all copies into peers of
what was on /tmp/2.

So after the first mount --bind you get two vfsmounts - /tmp and /tmp/1.
And the damn things are peers - you mount anything on /tmp/1/shit, you get =
its
clone attached to the matching directory (/2/shit) in /tmp.

After the second mount --bind you've got two more vfsmounts - one overmount=
ing
/tmp/1 and another - /tmp/2. =C2=A0And again, all of them constitute one pe=
er group.
With 4 elements now. =C2=A0Etc.

=3D=3D=3D From Eric W. Biederman =3D=3D=3D
First let's be clear, it is systemd that calls MS_SHARED|MS_REC on /.

Furthermore the configuration interface for mount propagation is error
prone and pretty much requires the most problematic cases be the default
makine the interfaces very easy to use incorrectly. =C2=A0Especially for co=
de
that was only tested on systems prior to systemd.


All of this is currently allowed if a user namespace creates a mount
namespace so the concern is real. =C2=A0Of course we also allow using as mu=
ch
memory as we want with virtual addresses as well. =C2=A0It is slightly worse
on 32bit in that it is kernel memory we are consuming and not user
memory. =C2=A0Still it is just another form of unlimited memory consumption
that is causing the problem. =C2=A0We have cases where in typical deploymen=
ts
we allow users to consume all of the memory on the system.


That said this definitely is a case where we could set a reasonable
upper limits on the number mount objects and catch it when people do
crazy things by accident before the system gets stuck in an OOM.


I am in the process of cooking up a number up limits of that kind and I
will see about adding a limit on the number of mounts as well.
