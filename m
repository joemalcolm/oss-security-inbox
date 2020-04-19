X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3318" "Sunday" "19" "April" "2020" "16:59:48" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<1842330.usQuhbGJ8B@spectre>" "86" "[oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)" nil nil nil "4" "2020041914:59:48" "[oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)" (number mark "U       ago@gentoo.o Apr 19   86/3318  " thread-indent "\"[oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28515 invoked by uid 550); 19 Apr 2020 15:00:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28494 invoked from network); 19 Apr 2020 15:00:07 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sun, 19 Apr 2020 16:59:48 +0200
Message-ID: <1842330.usQuhbGJ8B@spectre>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] re2c: heap overflow in Scanner::fill (scanner.cc)

Description:
re2c is a tool for generating C-based recognizers from regular expressions.

There is an heap overflow reproducible with a crafted file.

~ $ re2c -o /tmp/out $FILE
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D43995=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address=20
0x629000004212 at pc 0x00000049937f bp 0x7ffc0521bc00 sp 0x7ffc0521b3c8
WRITE of size 18 at 0x629000004212 thread T0
    #0 0x49937e in __asan_memset /var/tmp/portage/sys-libs/compiler-rt-
sanitizers-9.0.0/work/compiler-rt-9.0.0.src/lib/asan/
asan_interceptors_memintrinsics.cc:26:3
    #1 0x67a291 in re2c::Scanner::fill(unsigned long) /var/tmp/portage/dev-
util/re2c-1.3/work/re2c-1.3/src/parse/scanner.cc:167:9
    #2 0x682a51 in re2c::Scanner::echo(re2c::Output&) /var/tmp/portage/dev-
util/re2c-1.3/work/re2c-1.3/src/parse/lex.cc:94:33
    #3 0x61d5f4 in re2c::compile(re2c::Scanner&, re2c::Output&, re2c::Opt&)=
 /
var/tmp/portage/dev-util/re2c-1.3/work/re2c-1.3/src/compile.cc:148:41
    #4 0x4cc668 in main /var/tmp/portage/dev-util/re2c-1.3/work/re2c-1.3/sr=
c/
main.cc:33:5
    #5 0x7f26392c9dca in __libc_start_main /var/tmp/portage/sys-libs/
glibc-2.29-r2/work/glibc-2.29/csu/../csu/libc-start.c:308:16
    #6 0x421d39  (/usr/bin/re2c+0x421d39)

0x629000004212 is located 0 bytes to the right of 16402-byte region=20
[0x629000000200,0x629000004212)
allocated by thread T0 here:
    #0 0x4c949d in operator new[](unsigned long) /var/tmp/portage/sys-libs/
compiler-rt-sanitizers-9.0.0/work/compiler-rt-9.0.0.src/lib/asan/
asan_new_delete.cc:102:3
    #1 0x67a0f2 in re2c::Scanner::fill(unsigned long) /var/tmp/portage/dev-
util/re2c-1.3/work/re2c-1.3/src/parse/scanner.cc:154:22
    #2 0x682a51 in re2c::Scanner::echo(re2c::Output&) /var/tmp/portage/dev-
util/re2c-1.3/work/re2c-1.3/src/parse/lex.cc:94:33
    #3 0x61d5f4 in re2c::compile(re2c::Scanner&, re2c::Output&, re2c::Opt&)=
 /
var/tmp/portage/dev-util/re2c-1.3/work/re2c-1.3/src/compile.cc:148:41
    #4 0x4cc668 in main /var/tmp/portage/dev-util/re2c-1.3/work/re2c-1.3/sr=
c/
main.cc:33:5
    #5 0x7f26392c9dca in __libc_start_main /var/tmp/portage/sys-libs/
glibc-2.29-r2/work/glibc-2.29/csu/../csu/libc-start.c:308:16

SUMMARY: AddressSanitizer: heap-buffer-overflow /var/tmp/portage/sys-libs/
compiler-rt-sanitizers-9.0.0/work/compiler-rt-9.0.0.src/lib/asan/
asan_interceptors_memintrinsics.cc:26:3 in __asan_memset

Affected version:
1.3

Fixed version:
Will be 2.0

Commit fix:
https://github.com/skvadrik/re2c/commit/
c4603ba5ce229db83a2a4fb93e6d4b4e3ec3776a

Credit:
This bug was discovered by Agostino Sarubbo.

CVE:
I don=E2=80=99t care anymore about a CVE. If you will obtain one about this=
 issue,=20
feel free to reach me. I will update this as well.

Timeline:
2020-04-17: bug discovered and reported to upstream
2020-04-17: upstream fixed the issue
2020-04-19: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This wor=
k=20
is also supported by the Core Infrastructure Initiative.

Permalink:
http://blogs.gentoo.org/ago/2020/04/19/re2c-heap-overflow-in-scannerfill-sc=
anner-cc/


