X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9467" "Friday" "22" "September" "2017" "07:48:55" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<317939.544885547-sendEmail@localhost>" "104" "[oss-security] bento4: NULL pointer dereference in AP4_Atom::SetType (Ap4Atom.h)" nil nil nil "9" "2017092207:48:55" "[oss-security] bento4: NULL pointer dereference in AP4_Atom::SetType (Ap4Atom.h)" (number mark "U       ago@gentoo.o Sep 22  104/9467  " thread-indent "\"[oss-security] bento4: NULL pointer dereference in AP4_Atom::SetType (Ap4Atom.h)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19869 invoked by uid 550); 22 Sep 2017 07:49:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19764 invoked from network); 22 Sep 2017 07:49:12 -0000
Message-ID: <317939.544885547-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Fri, 22 Sep 2017 07:48:55 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-350595.78305027"
Subject: [oss-security] bento4: NULL pointer dereference in AP4_Atom::SetType (Ap4Atom.h)

------MIME delimiter for sendEmail-350595.78305027
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
bento4 is a fast, modern, open source C++ toolkit for all your MP4 and MPEG DASH media format needs.

The complete ASan output of the issue:

# mp42aac $FILE out.aac
ASAN:DEADLYSIGNAL
=================================================================
==23307==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000008 (pc 0x0000005c9865 bp 0x7fffd01b90d0 sp 0x7fffd01b9020 T0)
==23307==The signal is caused by a WRITE memory access.
==23307==Hint: address points to the zero page.
    #0 0x5c9864 in AP4_Atom::SetType(unsigned int) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4Atom.h:247:52
    #1 0x5c9864 in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned int, unsigned int, unsigned long long, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:499
    #2 0x5c7fbd in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned long long&, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:220:14
    #3 0x60c29f in AP4_ContainerAtom::ReadChildren(AP4_AtomFactory&, AP4_ByteStream&, unsigned long long) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:193:12
    #4 0x575855 in AP4_SampleEntry::Read(AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4SampleEntry.cpp:115:9
    #5 0x57d624 in AP4_VisualSampleEntry::AP4_VisualSampleEntry(unsigned int, unsigned int, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4SampleEntry.cpp:742:5
    #6 0x57d624 in AP4_AvcSampleEntry::AP4_AvcSampleEntry(unsigned int, unsigned int, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4SampleEntry.cpp:994
    #7 0x5cbf58 in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned int, unsigned int, unsigned long long, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:305:24
    #8 0x5c7fbd in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned long long&, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:220:14
    #9 0x586a2c in AP4_StsdAtom::AP4_StsdAtom(unsigned int, unsigned char, unsigned int, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4StsdAtom.cpp:100:13
    #10 0x58566f in AP4_StsdAtom::Create(unsigned int, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4StsdAtom.cpp:56:16
    #11 0x5ca71c in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned int, unsigned int, unsigned long long, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:422:20
    #12 0x5c7fbd in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned long long&, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:220:14
    #13 0x60c29f in AP4_ContainerAtom::ReadChildren(AP4_AtomFactory&, AP4_ByteStream&, unsigned long long) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:193:12
    #14 0x60b1d2 in AP4_ContainerAtom::AP4_ContainerAtom(unsigned int, unsigned long long, bool, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:138:5
    #15 0x60b1d2 in AP4_ContainerAtom::Create(unsigned int, unsigned long long, bool, bool, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:87
    #16 0x5ca44c in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned int, unsigned int, unsigned long long, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:751:20
    #17 0x5c7fbd in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned long long&, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:220:14
    #18 0x60c561 in AP4_ContainerAtom::ReadChildren(AP4_AtomFactory&, AP4_ByteStream&, unsigned long long) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:193:12
    #19 0x60b1d2 in AP4_ContainerAtom::AP4_ContainerAtom(unsigned int, unsigned long long, bool, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:138:5
    #20 0x60b1d2 in AP4_ContainerAtom::Create(unsigned int, unsigned long long, bool, bool, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:87
    #21 0x5ca44c in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned int, unsigned int, unsigned long long, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:751:20
    #22 0x5c7fbd in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned long long&, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:220:14
    #23 0x60c561 in AP4_ContainerAtom::ReadChildren(AP4_AtomFactory&, AP4_ByteStream&, unsigned long long) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:193:12
    #24 0x60b1d2 in AP4_ContainerAtom::AP4_ContainerAtom(unsigned int, unsigned long long, bool, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:138:5
    #25 0x60b1d2 in AP4_ContainerAtom::Create(unsigned int, unsigned long long, bool, bool, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:87
    #26 0x5ca44c in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned int, unsigned int, unsigned long long, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:751:20
    #27 0x5c7fbd in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned long long&, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:220:14
    #28 0x60c561 in AP4_ContainerAtom::ReadChildren(AP4_AtomFactory&, AP4_ByteStream&, unsigned long long) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:193:12
    #29 0x60c099 in AP4_ContainerAtom::AP4_ContainerAtom(unsigned int, unsigned long long, bool, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:138:5
    #30 0x58e6ed in AP4_TrakAtom::AP4_TrakAtom(unsigned int, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4TrakAtom.cpp:165:5
    #31 0x5c8e3b in AP4_TrakAtom::Create(unsigned int, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4TrakAtom.h:58:20
    #32 0x5c8e3b in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned int, unsigned int, unsigned long long, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:377
    #33 0x5c7fbd in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned long long&, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:220:14
    #34 0x60c561 in AP4_ContainerAtom::ReadChildren(AP4_AtomFactory&, AP4_ByteStream&, unsigned long long) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:193:12
    #35 0x60c099 in AP4_ContainerAtom::AP4_ContainerAtom(unsigned int, unsigned long long, bool, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4ContainerAtom.cpp:138:5
    #36 0x5521b0 in AP4_MoovAtom::AP4_MoovAtom(unsigned int, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4MoovAtom.cpp:79:5
    #37 0x5cad1d in AP4_MoovAtom::Create(unsigned int, AP4_ByteStream&, AP4_AtomFactory&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4MoovAtom.h:56:20
    #38 0x5cad1d in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned int, unsigned int, unsigned long long, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:357
    #39 0x5c7fbd in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, unsigned long long&, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:220:14
    #40 0x5c75c0 in AP4_AtomFactory::CreateAtomFromStream(AP4_ByteStream&, AP4_Atom*&) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4AtomFactory.cpp:150:12
    #41 0x54ea2c in AP4_File::ParseStream(AP4_ByteStream&, AP4_AtomFactory&, bool) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4File.cpp:104:12
    #42 0x54f0fa in AP4_File::AP4_File(AP4_ByteStream&, bool) /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4File.cpp:78:5
    #43 0x542552 in main /tmp/Bento4-1.5.0-617/Source/C++/Apps/Mp42Aac/Mp42Aac.cpp:242:32
    #44 0x7f048a8bf680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #45 0x44f3f8 in _start (/usr/bin/mp42aac+0x44f3f8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/Bento4-1.5.0-617/Source/C++/Core/Ap4Atom.h:247:52 in AP4_Atom::SetType(unsigned int)
==23307==ABORTING

Affected version:
1.5.0-617

Fixed version:
N/A

Commit fix:
https://github.com/axiomatic-systems/Bento4/commit/be7185faf7f52674028977dcf501c6039ff03aa5

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14638

Reproducer:
https://github.com/asarubbo/poc/blob/master/00336-bento4-NULLptr-AP4_Atom_SetType

Timeline:
2017-09-08: bug discovered and reported to upstream
2017-09-14: blog post about the issue
2017-09-21: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/14/bento4-null-pointer-dereference-in-ap4_atomsettype-ap4atom-h/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-350595.78305027--

