X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2080" "Sunday" "29" "January" "2017" "17:50:41" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<9288234.IgCNv62ja1@arcadia>" "64" "[oss-security] mp3splt: NULL pointer dereference in splt_cue_export_to_file (cue.c)" nil nil nil "1" "2017012916:50:41" "[oss-security] mp3splt: NULL pointer dereference in splt_cue_export_to_file (cue.c)" (number mark "U       ago@gentoo.o Jan 29   64/2080  " thread-indent "\"[oss-security] mp3splt: NULL pointer dereference in splt_cue_export_to_file (cue.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18008 invoked by uid 550); 29 Jan 2017 16:50:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17972 invoked from network); 29 Jan 2017 16:50:58 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sun, 29 Jan 2017 17:50:41 +0100
Message-ID: <9288234.IgCNv62ja1@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] mp3splt: NULL pointer dereference in splt_cue_export_to_file (cue.c)

Description:
mp3splt is a command line utility to split mp3 and ogg files without decoding.

A fuzz on it discovered a NULL pointer access.

The complete ASan output:

# mp3splt -P -f -t 0.1 -a $FILE
==2581==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 
0x7f36fb0a159a bp 0x7ffdc2708cb0 sp 0x7ffdc2708438 T0)
==2581==The signal is caused by a READ memory access.
==2581==Hint: address points to the zero page.
    #0 0x7f36fb0a1599 in strlen /var/tmp/portage/sys-libs/glibc-2.22-
r4/work/glibc-2.22/string/../sysdeps/x86_64/strlen.S:76
    #1 0x47a571 in __interceptor_fopen64 /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_common_interceptors.inc:5167
    #2 0x7f36fbf0d27e in splt_cue_export_to_file /tmp/portage/media-
libs/libmp3splt-0.9.2/work/libmp3splt-0.9.2/src/cue.c:725
    #3 0x7f36fbf0911b in mp3splt_export /tmp/portage/media-
libs/libmp3splt-0.9.2/work/libmp3splt-0.9.2/src/mp3splt.c:1665
    #4 0x51d5f0 in main /tmp/portage/media-
sound/mp3splt-2.6.2/work/mp3splt-2.6.2/src/mp3splt.c:901:13
    #5 0x7f36fb04061f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #6 0x41ad08 in _init (/usr/bin/mp3splt+0x41ad08)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/sys-libs/glibc-2.22-
r4/work/glibc-2.22/string/../sysdeps/x86_64/strlen.S:76 in strlen
==2581==ABORTING

Affected version:
0.9.2

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00129-mp3splt-nullptr-splt_cue_export_to_file

Timeline:
2017-01-01: private report to upstream via mail
2017-01-29: public upstream report on sourceforge
2017-01-29: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/01/29/mp3splt-null-pointer-dereference-in-splt_cue_export_to_file-cue-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
