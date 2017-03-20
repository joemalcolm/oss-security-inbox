X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2671" "Monday" "20" "March" "2017" "10:26:26" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<762448.990109505-sendEmail@localhost>" "70" "[oss-security] libpcre: invalid memory read in match (pcre_exec.c)" nil nil nil "3" "2017032010:26:26" "[oss-security] libpcre: invalid memory read in match (pcre_exec.c)" (number mark "U       ago@gentoo.o Mar 20   70/2671  " thread-indent "\"[oss-security] libpcre: invalid memory read in match (pcre_exec.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5838 invoked by uid 550); 20 Mar 2017 10:26:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5661 invoked from network); 20 Mar 2017 10:26:43 -0000
Message-ID: <762448.990109505-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 20 Mar 2017 10:26:26 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-520624.864920141"
Subject: [oss-security] libpcre: invalid memory read in match (pcre_exec.c)

------MIME delimiter for sendEmail-520624.864920141
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
libpcre is a perl-compatible regular expression library.

A fuzz on libpcre1 through the pcretest utility revealed an invalid read in the library. For who is interested in a detailed description of the bug, will follow a feedback from upstream:

This was a genuine bug in the 32-bit library. Thanks for finding it. The crash was caused by trying to find a Unicode property for a code value greater than 0x10ffff, the Unicode maximum, when running 
in non-UTF mode (where character values can be up to 0xffffffff). The bug was in both PCRE1 and PCRE2. I have fixed both of them.

The complete ASan output:

# pcretest -32 -d $FILE
==14788==ERROR: AddressSanitizer: SEGV on unknown address 0x7f1bbffed4df (pc 0x7f1bbee3fe6b bp 0x7fff8b50d8c0 sp 0x7fff8b50d3a0 T0)
==14788==The signal is caused by a READ memory access.
    #0 0x7f1bbee3fe6a in match /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcre_exec.c:5473:18
    #1 0x7f1bbee09226 in pcre32_exec /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcre_exec.c:6936:8
    #2 0x527d6c in main /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcretest.c:5218:9
    #3 0x7f1bbddd678f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #4 0x41b438 in _init (/usr/bin/pcretest+0x41b438)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcre_exec.c:5473:18 in match
==14788==ABORTING

Affected version:
8.40 and 10.23

Fixed version:
8.41 and 10.24 (not released atm)

Commit fix for libpcre1:
https://vcs.pcre.org/pcre/code/trunk/pcre_internal.h?r1=1649&r2=1688&sortby=date
https://vcs.pcre.org/pcre/code/trunk/pcre_ucd.c?r1=1490&r2=1688&sortby=date

Commit fix for libpcre2:
https://vcs.pcre.org/pcre2/code/trunk/src/pcre2_ucd.c?r1=316&r2=670&sortby=date
https://vcs.pcre.org/pcre2/code/trunk/src/pcre2_internal.h?r1=600&r2=670&sortby=date

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-7186

Reproducer:
https://github.com/asarubbo/poc/blob/master/00204-pcre-invalidread1-pcre_exec

Timeline:
2017-02-23: bug discovered and reported to upstream
2017-02-24: upstream released a patch
2017-03-14: blog post about the issue
2017-03-19: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/03/14/libpcre-invalid-memory-read-in-match-pcre_exec-c

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-520624.864920141--

