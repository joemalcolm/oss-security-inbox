X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5929" "Wednesday" "28" "November" "2018" "13:31:45" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20181128133145.2f53802b@computer>" "135" "[oss-security] memory safety bugs in bc" "^Date:" nil nil "11" "2018112812:31:45" "[oss-security] memory safety bugs in bc" (number mark "        hanno@hboeck Nov 28  135/5929  " thread-indent "\"[oss-security] memory safety bugs in bc\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5329 invoked by uid 550); 28 Nov 2018 12:31:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5294 invoked from network); 28 Nov 2018 12:31:54 -0000
Message-ID: <20181128133145.2f53802b@computer>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 Nov 2018 13:31:45 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] memory safety bugs in bc
To: Oss-Security <oss-security@lists.openwall.com>

Hi,

bc is a command line calculator that is commonly available on Linux
systems.

I reported various memory safety bugs and crashes a long time ago, some
got also fixed but some more got ignored.

(I'm aware it's debatable whether a tool like bc should be considered
attack surface, as there are probably not many situations where it's fed
attacker controlled input.)


-----------------------------

echo 'define p(a[],u){}p(a[],0,0)'|./bc

Causes a heap out of bounds read, also segfaults without asan.

ASAN stack trace:

=3D=3D2068=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address 0x=
6020000001e8 at pc 0x5593e5e43b32 bp 0x7fffa5908ed0 sp 0x7fffa5908ec0
READ of size 8 at 0x6020000001e8 thread T0
    #0 0x5593e5e43b31 in process_params /mnt/ram/bc-1.07.1/bc/storage.c:1061
    #1 0x5593e5e39718 in execute /mnt/ram/bc-1.07.1/bc/execute.c:157
    #2 0x5593e5e44d26 in run_code /mnt/ram/bc-1.07.1/bc/util.c:295
    #3 0x5593e5e2df52 in yyparse ../../bc/bc.y:134
    #4 0x5593e5e2d0ea in main /mnt/ram/bc-1.07.1/bc/main.c:260
    #5 0x7f2b653a24ca in __libc_start_main (/lib64/libc.so.6+0x234ca)
    #6 0x5593e5e2c419 in _start (/mnt/ram/bc-1.07.1/bc/bc+0x9419)

0x6020000001e8 is located 8 bytes to the left of 16-byte region [0x60200000=
01f0,0x602000000200)
allocated by thread T0 here:
    #0 0x7f2b65636b10 in malloc (/usr/lib/gcc/x86_64-pc-linux-gnu/8.2.0/lib=
asan.so.5+0xedb10)
    #1 0x5593e5e46ac2 in bc_malloc /mnt/ram/bc-1.07.1/bc/util.c:652
    #2 0x5593e5e43c01 in nextarg /mnt/ram/bc-1.07.1/bc/util.c:58
    #3 0x5593e5e3e83a in load_code /mnt/ram/bc-1.07.1/bc/load.c:261
    #4 0x5593e5e44bf6 in generate /mnt/ram/bc-1.07.1/bc/util.c:277
    #5 0x5593e5e2fed8 in yyparse ../../bc/bc.y:352
    #6 0x5593e5e2d0ea in main /mnt/ram/bc-1.07.1/bc/main.c:260
    #7 0x7f2b653a24ca in __libc_start_main (/lib64/libc.so.6+0x234ca)

-----------------------------

echo -e 'define a(s,t){if(0)0}for(s=3D0;;){j(a(),0)}\ns'|./bc

Causes a null pointer deref, also crashes without asan.

ASAN trace:
=3D=3D2091=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000000=
0000 (pc 0x56201e2aafc8 bp 0x7fffb04d6d60 sp 0x7fffb04d6d40 T0)
=3D=3D2091=3D=3DThe signal is caused by a READ memory access.
=3D=3D2091=3D=3DHint: address points to the zero page.
    #0 0x56201e2aafc7 in load_var /mnt/ram/bc-1.07.1/bc/storage.c:653
    #1 0x56201e2a37c7 in execute /mnt/ram/bc-1.07.1/bc/execute.c:324
    #2 0x56201e2add26 in run_code /mnt/ram/bc-1.07.1/bc/util.c:295
    #3 0x56201e296f52 in yyparse ../../bc/bc.y:134
    #4 0x56201e2960ea in main /mnt/ram/bc-1.07.1/bc/main.c:260
    #5 0x7fbdbe7124ca in __libc_start_main (/lib64/libc.so.6+0x234ca)
    #6 0x56201e295419 in _start (/mnt/ram/bc-1.07.1/bc/bc+0x9419)

-----------------------------

echo -e 'define t(x,y,d,s){f()}\ndefine f(){t()}\nfor(s=3D0;;){f()}\nfor(s=
=3D0;;){}' | ./bc

null pointer read, but doesn't crash without asan.

=3D=3D6340=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000000=
0000 (pc 0x55fdb8a43d49 bp 0x7fffae7307e0 sp 0x7fffae7307d0 T0)
=3D=3D6340=3D=3DThe signal is caused by a READ memory access.
=3D=3D6340=3D=3DHint: address points to the zero page.
    #0 0x55fdb8a43d48 in bc_free_num /mnt/ram/bc-1.07.1/lib/number.c:92
    #1 0x55fdb8a3d32a in store_var /mnt/ram/bc-1.07.1/bc/storage.c:461
    #2 0x55fdb8a368cf in execute /mnt/ram/bc-1.07.1/bc/execute.c:339
    #3 0x55fdb8a40d26 in run_code /mnt/ram/bc-1.07.1/bc/util.c:295
    #4 0x55fdb8a29f52 in yyparse ../../bc/bc.y:134
    #5 0x55fdb8a290ea in main /mnt/ram/bc-1.07.1/bc/main.c:260
    #6 0x7f763973b4ca in __libc_start_main (/lib64/libc.so.6+0x234ca)
    #7 0x55fdb8a28419 in _start (/mnt/ram/bc-1.07.1/bc/bc+0x9419)

-----------------------------

echo -e 'define t(x,y,d,s,t){if(0){}\nfor(;0<y;)f(0)}define f(x){(t())}for(=
s=3D0;;){t(0,1,0,0,0)}\nt()'|./bc

null pointer read, but doesn't crash without asan.

=3D=3D6365=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000000=
0000 (pc 0x55d4e78cfd9c bp 0x7ffc83b7d590 sp 0x7ffc83b7d560 T0)
=3D=3D6365=3D=3DThe signal is caused by a READ memory access.
=3D=3D6365=3D=3DHint: address points to the zero page.
    #0 0x55d4e78cfd9b in pop_vars /mnt/ram/bc-1.07.1/bc/storage.c:921
    #1 0x55d4e78c91e8 in execute /mnt/ram/bc-1.07.1/bc/execute.c:538
    #2 0x55d4e78d1d26 in run_code /mnt/ram/bc-1.07.1/bc/util.c:295
    #3 0x55d4e78baf52 in yyparse ../../bc/bc.y:134
    #4 0x55d4e78ba0ea in main /mnt/ram/bc-1.07.1/bc/main.c:260
    #5 0x7f9c3f6bb4ca in __libc_start_main (/lib64/libc.so.6+0x234ca)
    #6 0x55d4e78b9419 in _start (/mnt/ram/bc-1.07.1/bc/bc+0x9419)

-----------------------------

echo 'define m(x){for(;;)0}m(b[])'|./bc

null pointer read, but doesn't crash without asan.

=3D=3D6373=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000000=
0000 (pc 0x7f7fd8cdaec2 bp 0x7ffd4d86c230 sp 0x7ffd4d86b958 T0)
=3D=3D6373=3D=3DThe signal is caused by a READ memory access.
=3D=3D6373=3D=3DHint: address points to the zero page.
    #0 0x7f7fd8cdaec1  (/usr/lib/gcc/x86_64-pc-linux-gnu/8.2.0/libasan.so.5=
+0x108ec1)
    #1 0x7f7fd8c1f76c  (/usr/lib/gcc/x86_64-pc-linux-gnu/8.2.0/libasan.so.5=
+0x4d76c)
    #2 0x7f7fd8c200a4 in __interceptor_vfprintf (/usr/lib/gcc/x86_64-pc-lin=
ux-gnu/8.2.0/libasan.so.5+0x4e0a4)
    #3 0x561fe31fc5e6 in rt_error /mnt/ram/bc-1.07.1/bc/util.c:788
    #4 0x561fe31f8aed in process_params /mnt/ram/bc-1.07.1/bc/storage.c:1050
    #5 0x561fe31ee718 in execute /mnt/ram/bc-1.07.1/bc/execute.c:157
    #6 0x561fe31f9d26 in run_code /mnt/ram/bc-1.07.1/bc/util.c:295
    #7 0x561fe31e2f52 in yyparse ../../bc/bc.y:134
    #8 0x561fe31e20ea in main /mnt/ram/bc-1.07.1/bc/main.c:260
    #9 0x7f7fd8a2b4ca in __libc_start_main (/lib64/libc.so.6+0x234ca)
    #10 0x561fe31e1419 in _start (/mnt/ram/bc-1.07.1/bc/bc+0x9419)


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
