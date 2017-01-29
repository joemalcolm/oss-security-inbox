X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1932" "Sunday" "29" "January" "2017" "17:51:29" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2944552.SWHvZueMFW@arcadia>" "63" "[oss-security] mp3splt: invalid free in free_options (options_manager.c)" nil nil nil "1" "2017012916:51:29" "[oss-security] mp3splt: invalid free in free_options (options_manager.c)" (number mark "U       ago@gentoo.o Jan 29   63/1932  " thread-indent "\"[oss-security] mp3splt: invalid free in free_options (options_manager.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24496 invoked by uid 550); 29 Jan 2017 16:51:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24306 invoked from network); 29 Jan 2017 16:51:46 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sun, 29 Jan 2017 17:51:29 +0100
Message-ID: <2944552.SWHvZueMFW@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] mp3splt: invalid free in free_options (options_manager.c)

Description:
mp3splt is a command line utility to split mp3 and ogg files without decoding.

A fuzz on it discovered an invalid free.

The complete ASan output:

# mp3splt -P -f -t 0.1 -a $FILE
==2631==ERROR: AddressSanitizer: attempting free on address which was not 
malloc()-ed: 0x000000d3ef65 in thread T0
    #0 0x4d3770 in free /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:47
    #1 0x50dbaa in free_options /tmp/portage/media-
sound/mp3splt-2.6.2/work/mp3splt-2.6.2/src/options_manager.c:67:9
    #2 0x515623 in free_main_struct /tmp/portage/media-
sound/mp3splt-2.6.2/work/mp3splt-2.6.2/src/data_manager.c:74:7
    #3 0x50ffa5 in process_confirmation_error /tmp/portage/media-
sound/mp3splt-2.6.2/work/mp3splt-2.6.2/src/print_utils.c:266:7
    #4 0x51df29 in main /tmp/portage/media-
sound/mp3splt-2.6.2/work/mp3splt-2.6.2/src/mp3splt.c:873:9
    #5 0x7f783aba361f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #6 0x41ad08 in _init (/usr/bin/mp3splt+0x41ad08)

AddressSanitizer can not describe address in more detail (wild memory access 
suspected).
SUMMARY: AddressSanitizer: bad-free /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:47 
in free
==2631==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00130-mp3splt-badfree-free_options

Timeline:
2017-01-01: private report to upstream via mail
2017-01-29: public upstream report on sourceforge
2017-01-29: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/01/29/mp3splt-invalid-free-in-free_options-options_manager-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
