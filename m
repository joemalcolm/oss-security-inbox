X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/32
Message-ID: <CAAHN_R3ru4aOYCXrTA=ZGzRS2Ku-qR20s2EesbuKJJ2uWbb=ZQ@mail.gmail.com>
Date: Tue, 17 Nov 2026 17:39:07 -0500
From: Siddhesh Poyarekar <siddhesh.poyarekar@...il.com>
To: oss-security@...ts.openwall.com
Subject: The GNU C Library security advisories update for 2026-11-17
Content-Type: text/plain; charset=utf-8

The following security advisories have been published:

GLIBC-SA-2026-0029:
===================
CP949 decoder may read past input

Converting crafted CP949 input to UTF-8 character encoding and ignoring
invalid characters, in the GNU C Library version 2.1 or later may result
in the converter reading past the end of the input buffer, causing the
calling application to crash.

When the CP949 decoder encounters an invalid input byte sequence like
'\xa2\xe8' it ends up advancing the pointer tracking the read buffer
position twice.  If //IGNORE is set on the destination encoding and this
sequence is at the end of the input buffer, the decoder may then end up
reading past the bounds of the input buffer.  To exploit this, the
target iconv function needs to set //IGNORE on the destination of the
conversion and the input and encoding needs to be attacker controlled.

CVE-Id: CVE-2026-121757
Public-Date: 2020-11-17
Vulnerable-Commit: 918b9d72a9980efd4622bd25506da9531a952dbe (2.0.92-117)
CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H - 5.9
Reported-By: Dickson Wu (SEAL & CertiK)


GLIBC-SA-2026-0030:
===================
ISO-2022-CN-EXT decoder may read past input

Converting crafted ISO-2022-CN-EXT input to UTF-8 character encoding, in
the GNU C Library version 2.2 through 2.44 may result in the converter
reading past the end of the input buffer, causing the calling
application to crash.

When the ISO-2022-CN-EXT decoder encounters an invalid input byte
sequence like '\x0e' it ends up advancing the pointer tracking the read
buffer position twice.  If this sequence is at the end of the input
buffer, the decoder may then end up reading past the bounds of the input
buffer.  To exploit this, the input and encoding needs to be attacker
controlled.

CVE-Id: CVE-2026-121758
Public-Date: 2020-10-21
Vulnerable-Commit: c0d99958f9f329400d25040b3d422fa937522b65 (2.1.93-124)
Fix-Commit: 170ee485fa89b95c3bb7d5606c9812c6c100c9be (2.45)
CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H - 5.9
Reported-By: Ksawery Radziwiłowicz


GLIBC-SA-2026-0031:
===================
IBM1390/IBM1399 encoders may read past input

Converting crafted input from UCS-4 to IBM1390 or IBM1399 character
encoding, in the GNU C Library version 2.3.3 and later may result in
the converter reading past the end of the input buffer, causing the
calling application to crash.

When converting from UCS-4, these encoders may encounter a combining
base such as U+00E6 and jump ahead by 4 bytes to check the next UCS-4
code point.  The check for end of buffer however does not account for
this, which may result in a buffer overread if the following code point
has less than 4 bytes remaining.  Exploitation of this bug not only
requires attacker control of input and encoding, but also strict control
over layout of the input in memory.

CVE-Id: CVE-2026-124024
Public-Date: 2020-10-29
Vulnerable-Commit: 0ecb606cb6cf65de1d9fc8a919bceb4be476c602 (2.3.3-1501)
CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H - 5.9
Reported-By: slaythemole


Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD
