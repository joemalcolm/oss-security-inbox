X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2624" "Friday" "22" "September" "2017" "07:49:50" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<38472.5740618421-sendEmail@localhost>" "68" "[oss-security] bento4: NULL pointer dereference in AP4_AtomSampleTable::GetSample (Ap4AtomSampleTable.cpp)" nil nil nil "9" "2017092207:49:50" "[oss-security] bento4: NULL pointer dereference in AP4_AtomSampleTable::GetSample (Ap4AtomSampleTable.cpp)" (number mark "U       ago@gentoo.o Sep 22   68/2624  " thread-indent "\"[oss-security] bento4: NULL pointer dereference in AP4_AtomSampleTable::GetSample (Ap4AtomSampleTable.cpp)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26305 invoked by uid 550); 22 Sep 2017 07:50:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26216 invoked from network); 22 Sep 2017 07:50:07 -0000
Message-ID: <38472.5740618421-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Fri, 22 Sep 2017 07:49:50 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-46780.4675727201"
Subject: [oss-security] bento4: NULL pointer dereference in AP4_AtomSampleTable::GetSample (Ap4AtomSampleTable.cpp)

------MIME delimiter for sendEmail-46780.4675727201
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
bento4 is a fast, modern, open source C++ toolkit for all your MP4 and MPEG DASH media format needs.

The complete ASan output of the issue:

# mp42aac $FILE out.aac
ASAN:DEADLYSIGNAL
=================================================================
==6365==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x0000005cf94c bp 0x7fff5857d580 sp 0x7fff5857d4c0 T0)
==6365==The signal is caused by a READ memory access.
==6365==Hint: address points to the zero page.
    #0 0x5cf94b in AP4_AtomSampleTable::GetSample(unsigned int, AP4_Sample&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomSampleTable.cpp
    #1 0x58d158 in AP4_Track::GetSample(unsigned int, AP4_Sample&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4Track.cpp:435:43
    #2 0x58d158 in AP4_Track::ReadSample(unsigned int, AP4_Sample&, AP4_DataBuffer&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4Track.cpp:469
    #3 0x5430ad in WriteSamples(AP4_Track*, AP4_SampleDescription*, AP4_ByteStream*) /tmp/Bento4-1.5.0-617/Source/C++/Apps/Mp42Aac/Mp42Aac.cpp:192:12
    #4 0x5430ad in main /tmp/Bento4-1.5.0-617/Source/C++/Apps/Mp42Aac/Mp42Aac.cpp:274
    #5 0x7f41deb72680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #6 0x44f3f8 in _start (/usr/bin/mp42aac+0x44f3f8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomSampleTable.cpp in AP4_AtomSampleTable::GetSample(unsigned int, AP4_Sample&)
==6365==ABORTING
Audio Track:
  duration: 7848 ms
  sample count: 169

Affected version:
1.5.0-617

Fixed version:
N/A

Commit fix:
https://github.com/axiomatic-systems/Bento4/commit/2f267f89f957088197f4b1fc254632d1645b415d

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14640

Reproducer:
https://github.com/asarubbo/poc/blob/master/00337-bento4-NULLptr-AP4_AtomSampleTable_GetSample

Timeline:
2017-09-08: bug discovered and reported to upstream
2017-09-14: blog post about the issue
2017-09-21: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/14/bento4-null-pointer-dereference-in-ap4_atomsampletablegetsample-ap4atomsampletable-cpp/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-46780.4675727201--

