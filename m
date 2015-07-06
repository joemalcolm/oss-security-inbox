X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10978" "Monday" "6" "July" "2015" "12:58:07" "+0000" "jean-marie.bourbon@armaturetech.com" "jean-marie.bourbon@armaturetech.com" "<F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>" "293" "[oss-security] TR : CVE request for dash 0.5.7-3  x86-64 local buffer overflow " nil nil nil "7" "2015070612:58:07" "[oss-security] TR : CVE request for dash 0.5.7-3 x86-64 local buffer overflow" (number mark "        jean-marie.b Jul  6  293/10978 " thread-indent "\"[oss-security] TR : CVE request for dash 0.5.7-3  x86-64 local buffer overflow \"\n") "<F19FF46A5F9A584F817BC291F2EE2EBB5199AD@server.exchange.local>" ("<F19FF46A5F9A584F817BC291F2EE2EBB5199AD@server.exchange.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11414 invoked by uid 550); 6 Jul 2015 14:49:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13541 invoked from network); 6 Jul 2015 12:58:20 -0000
Thread-Topic: CVE request for dash 0.5.7-3  x86-64 local buffer overflow 
Thread-Index: AdCzOf7frAIGANHRRqGkR9/LLCcSWwEsUqcy
Message-ID: <F19FF46A5F9A584F817BC291F2EE2EBB519D23@server.exchange.local>
References: <F19FF46A5F9A584F817BC291F2EE2EBB5199AD@server.exchange.local>
In-Reply-To: <F19FF46A5F9A584F817BC291F2EE2EBB5199AD@server.exchange.local>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [83.167.33.212]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Ovh-Tracer-Id: 8890105665640362150
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekvddrgedtucetufdoteggucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenuc
Date: Mon, 6 Jul 2015 12:58:07 +0000
From: "jean-marie.bourbon@armaturetech.com"
	<jean-marie.bourbon@armaturetech.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] TR : CVE request for dash 0.5.7-3  x86-64 local buffer overflow 
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>


Date d'envoi : mardi 30 juin 2015 15:40
=C0 : cve-assign@mitre.org
Objet : CVE request for dash 0.5.7-3  x86-64 local buffer overflow

Context:
 - GLIBC:  2.13
 - DASH:  0.5.7-3
 - Kernel: 3.18.0 amd64

  Tested on Debian based distribution.

Bug explanation:

Hi,

I request a CVE id number for the following vulnerability : dash x86-64 loc=
al buffer overflow.

I discover it using bash who sent me a SIGKILL (no real crash) and closed m=
y shell in certain circumstances:

kmkz@kmkz:/tmp$  `perl -e '$i=3D0;while($i<=3D 500){print"DEAD"x10;}'`
bash: xrealloc : ../bash/subst.c:5184 : impossible d'allouer 2097152 octets=
 (4460544 octets allou=E9s)

So I wanted to try using my /bin/dash and... I had a local crash !

In fact, it comsume all the memory before to freeze the computer.

Thereafter I also  tested it with VALGRIND and GDB to investigate as shown =
here and with a non privilegied user:


# su kmkz              // my user
$ /bin/bash            // to have completion ... :-/
kmkz@kmkz:/home$ id
uid=3D1001(kmkz) gid=3D1002(kmkz) groupes=3D1002(kmkz)
kmkz@kmkz:/home$ valgrind --tool=3Dmemcheck --leak-check=3Dyes /bin/dash   =
                // launch vlagrind in debbug mode on /bin/dash
=3D=3D6033=3D=3D Memcheck, a memory error detector
=3D=3D6033=3D=3D Copyright (C) 2002-2012, and GNU GPL'd, by Julian Seward e=
t al.
=3D=3D6033=3D=3D Using Valgrind-3.8.1 and LibVEX; rerun with -h for copyrig=
ht info
=3D=3D6033=3D=3D Command: /bin/dash
=3D=3D6033=3D=3D
$ `perl -e '$i=3D0;while($i<=3D 500){print"DEAD"x10;}'`
--9241-- REDIR: 0x4eb0300 (strcmp) redirected to 0x4a22750 (_vgnU_ifunc_wra=
pper)
--9241-- REDIR: 0x4f45130 (__strcmp_sse42) redirected to 0x4c2b8d0 (strcmp)
--9241-- REDIR: 0x4eadae0 (realloc) redirected to 0x4c2a430 (realloc)
--9263-- REDIR: 0x4eb3900 (strpbrk) redirected to 0x4a22750 (_vgnU_ifunc_wr=
apper)
--9263-- REDIR: 0x4f4cab0 (__strpbrk_sse42) redirected to 0x4c2d7d0 (strpbr=
k)
--9263-- REDIR: 0x4eb3fe0 (bcmp) redirected to 0x4a22750 (_vgnU_ifunc_wrapp=
er)
--9263-- REDIR: 0x4f672f0 (__memcmp_sse4_1) redirected to 0x4c2c9c0 (bcmp)

=3D=3D8875=3D=3D Warning: set address range perms: large range [0x7862b048,=
 0x97e2b048) (undefined)
=3D=3D8875=3D=3D Warning: set address range perms: large range [0x3962a028,=
 0x58e2a060) (noaccess)
=3D=3D8875=3D=3D Warning: set address range perms: large range [0xd6e2c048,=
 0x115e2c048) (undefined)
=3D=3D8875=3D=3D Warning: set address range perms: large range [0x58e2b028,=
 0x97e2b060) (noaccess)
=3D=3D8875=3D=3D Warning: set address range perms: large range [0x193e2d048=
, 0x211e2d048) (undefined)
=3D=3D8875=3D=3D Warning: set address range perms: large range [0x97e2c028,=
 0x115e2c060) (noaccess)
=3D=3D8875=3D=3D Warning: set address range perms: large range [0x540e7c048=
, 0x63ce7c048) (undefined)
=3D=3D8875=3D=3D Warning: set address range perms: large range [0x115e2d028=
, 0x211e2d060) (noaccess)

                                /* The real problem */
=3D=3D9241=3D=3D Stack overflow in thread 1: can't grow stack to 0x7fe801ef8
=3D=3D9241=3D=3D
=3D=3D9241=3D=3D Process terminating with default action of signal 11 (SIGS=
EGV): dumping core


=3D=3D9241=3D=3D  Access not within mapped region at address 0x7FE801EF8
=3D=3D9241=3D=3D    at 0x4E7540A: vfprintf (printf-parse.h:99)
=3D=3D9241=3D=3D  If you believe this happened as a result of a stack
=3D=3D9241=3D=3D  overflow in your program's main thread (unlikely but
=3D=3D9241=3D=3D  possible), you can try to increase the size of the
=3D=3D9241=3D=3D  main thread stack using the --main-stacksize=3D flag.
=3D=3D9241=3D=3D  The main thread stack size used in this run was 8388608.
=3D=3D9241=3D=3D Stack overflow in thread 1: can't grow stack to 0x7fe801ef0
=3D=3D9241=3D=3D
=3D=3D9241=3D=3D Process terminating with default action of signal 11 (SIGS=
EGV)
=3D=3D9241=3D=3D  Access not within mapped region at address 0x7FE801EF0
=3D=3D9241=3D=3D    at 0x4A226E0: _vgnU_freeres (vg_preloaded.c:58)
=3D=3D9241=3D=3D  If you believe this happened as a result of a stack
=3D=3D9241=3D=3D  overflow in your program's main thread (unlikely but
=3D=3D9241=3D=3D  possible), you can try to increase the size of the
=3D=3D9241=3D=3D  main thread stack using the --main-stacksize=3D flag.
=3D=3D9241=3D=3D  The main thread stack size used in this run was 8388608.
=3D=3D9241=3D=3D
=3D=3D9241=3D=3D HEAP SUMMARY:
=3D=3D9241=3D=3D     in use at exit: 8,455,718,298 bytes in 43 blocks
=3D=3D9241=3D=3D   total heap usage: 72 allocs, 29 frees, 33,822,869,786 by=
tes allocated
=3D=3D9241=3D=3D
=3D=3D9241=3D=3D Searching for pointers to 43 not-freed blocks
=3D=3D9241=3D=3D Checked 8,459,779,640 bytes
=3D=3D9241=3D=3D
=3D=3D9241=3D=3D LEAK SUMMARY:
=3D=3D9241=3D=3D    definitely lost: 0 bytes in 0 blocks
=3D=3D9241=3D=3D    indirectly lost: 0 bytes in 0 blocks
=3D=3D9241=3D=3D      possibly lost: 0 bytes in 0 blocks
=3D=3D9241=3D=3D    still reachable: 8,455,718,298 bytes in 43 blocks
=3D=3D9241=3D=3D         suppressed: 0 bytes in 0 blocks
=3D=3D9241=3D=3D Reachable blocks (those to which a pointer was found) are =
not shown.
=3D=3D9241=3D=3D To see them, rerun with: --leak-check=3Dfull --show-reacha=
ble=3Dyes
=3D=3D9241=3D=3D
=3D=3D9241=3D=3D ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 4 fro=
m 4)
--9241--
--9241-- used_suppression:      4 dl-hack3-cond-1
=3D=3D9241=3D=3D
=3D=3D9241=3D=3D ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 4 fro=
m 4)

/* SEGFAULT */
Erreur de segmentation

kmkz@kmkz:/home$ ls
 30M -rw-------  1 kmkz       kmkz        36M juin  30 14:06 vgcore.9241   =
          // my cheer core dump


 Once this core dump generated, I made a quick research with GDB-PEDA ( as =
a root user now):


root@kmkz:/tmp# gdb -q -c vgcore.9241
[New LWP 9241]
Core was generated by `'.
Program terminated with signal 11, Segmentation fault.
#0  0x0000000004e7540a in ?? ()
gdb-peda$ i s
#0  0x0000000004e7540a in ?? ()
Cannot access memory at address 0x7fe801ef8



root@kmkz:/tmp# gdb -q /bin/dash  vgcore.9241
[New LWP 9241]
Core was generated by `'.
Program terminated with signal 11, Segmentation fault.
#0  __find_specmb (format=3D<optimized out>) at printf-parse.h:99
99      printf-parse.h: Aucun fichier ou dossier de ce type.

gdb-peda$ checksec
CANARY     : disabled
FORTIFY     : disabled
NX             : ENABLED
PIE            : disabled
RELRO       : disabled

gdb-peda$ x/i $rip
=3D> 0x4e7540a <_IO_vfprintf_internal+154>:       call   0x4ebb5b0 <strchrn=
ul>

gdb-peda$ start
warning: no loadable sections found in added symbol-file system-supplied DS=
O at 0x7ffff7ffa000
[----------------------------------registers-------------------------------=
----]
RAX: 0x1c
RBX: 0x0
RCX: 0x4127e0 (mov    QWORD PTR [rsp-0x28],rbp)
RDX: 0x7fffffffe478 --> 0x7fffffffe6ef ("/bin/dash")
RSI: 0x1
RDI: 0x4022c0 (push   rbx)
RBP: 0x0
RSP: 0x7fffffffe458 --> 0x4024a5 (hlt    )
RIP: 0x401f80 (<__libc_start_main@plt>: jmp    QWORD PTR [rip+0x217692]    =
    # 0x619618 <__libc_start_main@got.plt>)
R8 : 0x4127d0 (repz ret )
R9 : 0x7ffff7deb310 (push   rbp)
R10: 0xd ('\r')
R11: 0x4
R12: 0x40247c (xor    ebp,ebp)
R13: 0x7fffffffe470 --> 0x1
R14: 0x0
R15: 0x0
EFLAGS: 0x202 (carry parity adjust zero sign trap INTERRUPT direction overf=
low)
[-------------------------------------code---------------------------------=
----]
   0x401f70 <read@plt>: jmp    QWORD PTR [rip+0x21769a]        # 0x619610 <=
read@got.plt>
   0x401f76 <read@plt+6>:       push   0x2c
   0x401f7b <read@plt+11>:      jmp    0x401ca0
=3D> 0x401f80 <__libc_start_main@plt>:    jmp    QWORD PTR [rip+0x217692]  =
      # 0x619618 <__libc_start_main@got.plt>
 | 0x401f86 <__libc_start_main@plt+6>:  push   0x2d
 | 0x401f8b <__libc_start_main@plt+11>: jmp    0x401ca0
 | 0x401f90 <memcmp@plt>:       jmp    QWORD PTR [rip+0x21768a]        # 0x=
619620 <memcmp@got.plt>
 | 0x401f96 <memcmp@plt+6>:     push   0x2e
 |->   0x401f86 <__libc_start_main@plt+6>:      push   0x2d
       0x401f8b <__libc_start_main@plt+11>:     jmp    0x401ca0
       0x401f90 <memcmp@plt>:   jmp    QWORD PTR [rip+0x21768a]        # 0x=
619620 <memcmp@got.plt>
       0x401f96 <memcmp@plt+6>: push   0x2e
                                                                  JUMP is t=
aken
[------------------------------------stack---------------------------------=
----]
0000| 0x7fffffffe458 --> 0x4024a5 (hlt    )
0008| 0x7fffffffe460 --> 0x7fffffffe468 --> 0x1c
0016| 0x7fffffffe468 --> 0x1c
0024| 0x7fffffffe470 --> 0x1
0032| 0x7fffffffe478 --> 0x7fffffffe6ef ("/bin/dash")
0040| 0x7fffffffe480 --> 0x0
0048| 0x7fffffffe488 --> 0x7fffffffe6f9 ("ORBIT_SOCKETDIR=3D/tmp/orbit-root=
")
0056| 0x7fffffffe490 --> 0x7fffffffe719 ("SSH_AGENT_PID=3D3474")
[--------------------------------------------------------------------------=
----]
Legend: code, data, rodata, value

Temporary breakpoint 1, 0x0000000000401f80 in __libc_start_main@plt ()
gdb-peda$ vmmap
Start              End                Perm      Name
0x00400000         0x0041a000         r-xp      /bin/dash
0x00619000         0x0061a000         rw-p      /bin/dash
0x0061a000         0x0061d000         rw-p      [heap]
0x00007ffff7a52000 0x00007ffff7bd3000 r-xp      /lib/x86_64-linux-gnu/libc-=
2.13.so
0x00007ffff7bd3000 0x00007ffff7dd3000 ---p      /lib/x86_64-linux-gnu/libc-=
2.13.so
0x00007ffff7dd3000 0x00007ffff7dd7000 r--p      /lib/x86_64-linux-gnu/libc-=
2.13.so
0x00007ffff7dd7000 0x00007ffff7dd8000 rw-p      /lib/x86_64-linux-gnu/libc-=
2.13.so
0x00007ffff7dd8000 0x00007ffff7ddd000 rw-p      mapped
0x00007ffff7ddd000 0x00007ffff7dfd000 r-xp      /lib/x86_64-linux-gnu/ld-2.=
13.so
0x00007ffff7fd4000 0x00007ffff7fd7000 rw-p      mapped
0x00007ffff7ff6000 0x00007ffff7ff8000 rw-p      mapped
0x00007ffff7ff8000 0x00007ffff7ffa000 r--p      [vvar]
0x00007ffff7ffa000 0x00007ffff7ffc000 r-xp      [vdso]
0x00007ffff7ffc000 0x00007ffff7ffd000 r--p      /lib/x86_64-linux-gnu/ld-2.=
13.so
0x00007ffff7ffd000 0x00007ffff7ffe000 rw-p      /lib/x86_64-linux-gnu/ld-2.=
13.so
0x00007ffff7ffe000 0x00007ffff7fff000 rw-p      mapped
0x00007ffffffde000 0x00007ffffffff000 rw-p      [stack]
0xffffffffff600000 0xffffffffff601000 r-xp      [vsyscall]


gdb-peda$ bt
#0  0x0000000000401f80 in __libc_start_main@plt ()
#1  0x00000000004024a5 in ?? ()
#2  0x00007fffffffe468 in ?? ()
#3  0x000000000000001c in ?? ()
#4  0x0000000000000001 in ?? ()
#5  0x00007fffffffe6ef in ?? ()
#6  0x0000000000000000 in ?? ()

It appear that the binary has only the NoeXecutable protection (and ASLR) w=
ith an interesting buffer overflow... that's why I'd like to
know how to make my small contribution on this subject.

Finaly, you can reproduce this bug easily whit a (so basic) Perl line in yo=
ur dash shell :

`perl -e '$i=3D0;while($i<=3D 500){print"DEAD"x10;}'`

Hoping to read you soon,

Best regards,

Mr BOURBON Jean-marie (kmkz)


BOURBON Jean-marie

ARMATURE Technologies
Fixe : +33 1 44 51 92 61
Fax : +33 9 85 69 68 85
www.armaturetech.com
55 rue de la Bo=E9tie, 75008 Paris
