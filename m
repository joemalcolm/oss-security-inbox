Received: (qmail 1839 invoked by uid 550); 29 Jun 2024 20:50:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32502 invoked from network); 29 Jun 2024 20:50:03 -0000
Date: Sat, 29 Jun 2024 22:50:01 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240629205001.GA12674@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Linux non-security almost non-issue: stack-out-of-bounds Read in profile_pc

Hi,

On Friday, we got a report CC'ed to s@k.o and linux-distros (which is a
misuse of linux-distros per the currently published instructions, don't
do that) of what turned out to be not a security issue and already
public.  I am posting about it in here not to make an exception that
we'd need to explain anyway.  Just for consistency and transparency.

The corresponding public report from March is:

https://lore.kernel.org/all/CAK55_s7Xyq=nh97=K=G1sxueOFrJDAvPOJAL4TPTCAYvmxO9_A@mail.gmail.com/

---
BUG: KASAN: stack-out-of-bounds in profile_pc+0x120/0x130
arch/x86/kernel/time.c:42
Read of size 8 at addr ffff888108567cc8 by task syz-executor308/360

CPU: 0 PID: 360 Comm: syz-executor308 Not tainted 6.1.82 #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.13.0-1ubuntu1.1 04/01/2014
Call Trace:
 <IRQ>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x4d/0x66 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:284 [inline]
 print_report+0x16c/0x4a3 mm/kasan/report.c:395
 kasan_report+0xb3/0x130 mm/kasan/report.c:495
 profile_pc+0x120/0x130 arch/x86/kernel/time.c:42
---

As Vegard Nossum pointed out:

> Writing to /sys/kernel/profiling requires root, so AFAICT this is only a
> security issue for lockdown in the worst case.

and then it's just a harmless out of bounds read that is only detected
in KASan builds.

Nevertheless, Linus promptly fixed the issue by dropping this code in:

   093d9603b600 ("x86: stop playing stack games in profile_pc()")

Alexander
