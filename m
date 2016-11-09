X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1766" "Wednesday" "9" "November" "2016" "15:49:31" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<4314977.YHaczL6dzr@blackgate>" "58" "[oss-security] libming: listmp3: divide-by-zero in printMP3Headers (listmp3.c)" nil nil nil "11" "2016110914:49:31" "[oss-security] libming: listmp3: divide-by-zero in printMP3Headers (listmp3.c)" (number mark "U       ago@gentoo.o Nov  9   58/1766  " thread-indent "\"[oss-security] libming: listmp3: divide-by-zero in printMP3Headers (listmp3.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9258 invoked by uid 550); 9 Nov 2016 14:49:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8093 invoked from network); 9 Nov 2016 14:49:49 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Wed, 09 Nov 2016 15:49:31 +0100
Message-ID: <4314977.YHaczL6dzr@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.26-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] libming: listmp3: divide-by-zero in printMP3Headers (listmp3.c)

If it is suitable for a CVE please assign one. Thanks.

Description:
libming is a Flash (SWF) output library. It can be used from PHP, Perl, Ruby, 
Python, C, C++, Java, and probably more on the way..

A fuzzing revealed a divide by zero in listmp3. The bug does not reside in any 
shared object but if you have a web application that calls directly the 
listmp3 binary to parse untrusted mp3, then you are affected.

The complete ASan output:

# listmp3 $FILE
ASAN:DEADLYSIGNAL
=================================================================
==29561==ERROR: AddressSanitizer: FPE on unknown address 0x0000004f19e8 (pc 
0x0000004f19e8 bp 0x000000000000 sp 0x7ffdf0ab6340 T0)
    #0 0x4f19e7 in printMP3Headers /var/tmp/portage/media-
libs/ming-0.4.7/work/ming-0_4_7/util/listmp3.c:172:54
    #1 0x4f1bee in main /var/tmp/portage/media-
libs/ming-0.4.7/work/ming-0_4_7/util/listmp3.c:191:3
    #2 0x7f49407a361f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #3 0x418ae8 in getenv (/usr/bin/listmp3+0x418ae8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: FPE /var/tmp/portage/media-
libs/ming-0.4.7/work/ming-0_4_7/util/listmp3.c:172:54 in printMP3Headers
==29561==ABORTING

Affected version:
0.4.7

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00045-libming-fpe-printMP3Headers

Timeline:
2016-08-13: bug discovered
2016-10-20: bug reported to upstream
2016-11-09: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/11/09/libming-listmp3-divide-by-zero-in-printmp3headers-listmp3-c
