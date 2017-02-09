X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2155" "Thursday" "9" "February" "2017" "14:48:10" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<4623205.KGy1lP8IPD@blackgate>" "68" "[oss-security] zziplib: NULL pointer dereference in zzip_mem_entry_new (memdisk.c)" nil nil nil "2" "2017020913:48:10" "[oss-security] zziplib: NULL pointer dereference in zzip_mem_entry_new (memdisk.c)" (number mark "U       ago@gentoo.o Feb  9   68/2155  " thread-indent "\"[oss-security] zziplib: NULL pointer dereference in zzip_mem_entry_new (memdisk.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28370 invoked by uid 550); 9 Feb 2017 13:48:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28118 invoked from network); 9 Feb 2017 13:48:27 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Thu, 09 Feb 2017 14:48:10 +0100
Message-ID: <4623205.KGy1lP8IPD@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] zziplib: NULL pointer dereference in zzip_mem_entry_new (memdisk.c)

Description:
zziplib is an intentionally lightweight library that offers the ability to 
easily extract data from files archived in a single zip file.

A fuzz on it discovered an NULL pointer access.

The complete ASan output:

# unzzipcat-mem $FILE
==7955==ERROR: AddressSanitizer: SEGV on unknown address 0x00000000001a (pc 
0x7fcfc78e3c50 bp 0x7ffdf55d4f70 sp 0x7ffdf55d4e40 T0)
==7955==The signal is caused by a READ memory access.
==7955==Hint: address points to the zero page.
    #0 0x7fcfc78e3c4f in zzip_mem_entry_new /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:182:21
    #1 0x7fcfc78e3c4f in zzip_mem_disk_load /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:137
    #2 0x7fcfc78e38b7 in zzip_mem_disk_open /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:89:5
    #3 0x50982d in main /tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/bins/unzzipcat-mem.c:82:12
    #4 0x7fcfc6a2361f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #5 0x419748 in _init (/usr/bin/unzzipcat-mem+0x419748)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/zzip/memdisk.c:182:21 in zzip_mem_entry_new
==7955==ABORTING

also, the undefined behavior sanitizer says about:

# unzzipcat-mem $FILE
/tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/zzip/memdisk.c:182:21: runtime error: member access 
within null pointer of type 'struct zzip_file_header'

Affected version:
0.13.62

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00154-zziplib-nullptr-zzip_mem_entry_new

Timeline:
2017-01-17: bug discovered and poked upstream
2017-02-09: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/09/zziplib-null-pointer-dereference-in-zzip_mem_entry_new-memdisk-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
