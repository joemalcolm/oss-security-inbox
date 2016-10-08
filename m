X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1198" "Saturday" "8" "October" "2016" "22:30:54" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<2504156.RvxX7vydSL@arcadia>" "50" "[oss-security] potrace: memory allocation failure" nil nil nil "10" "2016100820:30:54" "[oss-security] potrace: memory allocation failure" (number mark "U       ago@gentoo.o Oct  8   50/1198  " thread-indent "\"[oss-security] potrace: memory allocation failure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7283 invoked by uid 550); 8 Oct 2016 20:30:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6105 invoked from network); 8 Oct 2016 20:30:44 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sat, 08 Oct 2016 22:30:54 +0200
Message-ID: <2504156.RvxX7vydSL@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.20; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] potrace: memory allocation failure

Description:
potrace is a utility that transforms bitmaps into vector graphics.

A crafted image, through a fuzz testing, causes the memory allocation to fa=
il.

This is the first case where my ASan symbolyzer didn=E2=80=99t start up cor=
rectly. I=E2=80=99m=20
reporting only what it prints at the end (not useful at all but demostrates=
 a=20
bit that the issue exist)

# potrace $FILE
potrace: warning: 2.hangs: premature end of file
=3D=3D13660=3D=3DERROR: AddressSanitizer failed to allocate 0x200003000 (85=
89946880)=20
bytes of LargeMmapAllocator (error code: 12)
=3D=3D13660=3D=3DAddressSanitizer CHECK failed: /var/tmp/portage/sys-
devel/llvm-3.8.1/work/llvm-3.8.1.src/projects/compiler-
rt/lib/sanitizer_common/sanitizer_common.cc:183 "((0 && "unable to mmap")) =
!=3D=20
(0)" (0x0, 0x0)

Affected version:
1.13

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Timeline:
2016-08-26: bug discovered
2016-08-27: bug reported privately to upstream
2016-08-29: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/08/29/potrace-memory-allocation-failure/


