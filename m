X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/04/8
Message-ID: <P5bGsSq--J-9@londal.co>
Date: Wed, 4 Nov 2026 16:57:40 +0100 (CET)
From: nick@...dal.co
To: Oss Security <oss-security@...ts.openwall.com>
Subject: libtar: incomplete fix for CVE-2021-33643/CVE-2021-33644 (heap out-of-bounds read)
Content-Type: text/plain; charset=utf-8

Hello,

libtar's fix for CVE-2021-33643 and CVE-2021-33644 is incomplete. A crafted tar archive can still cause a heap out-of-bounds read, including on distro builds that carry that fix (confirmed on Debian 1.2.20-8+deb12u1).

libtar appears to be unmaintained. I reported this to the Debian security team on 2026-11-02, and they cleared it for publication on 2026-11-03. A CVE ID has been requested from MITRE and is pending.

Details

The existing fix rejects a GNU long-name or long-link record with a size of zero, but doesn't guarantee that the buffer is NUL-terminated. th_read() in lib/block.c allocates exactly blocks * 512 bytes and fills every byte from the archive:

    t->th_buf.gnu_longname = (char *)malloc(blocks * T_BLOCKSIZE);
    for (j = 0, ptr = t->th_buf.gnu_longname; j < blocks; j++, ptr += T_BLOCKSIZE)
        tar_block_read(t, ptr);

If the size is a positive multiple of 512 and the data contains no NUL bytes, the buffer is left unterminated. safer_name_suffix() in lib/decode.c then treats it as a C string and reads past the end of the allocation. It is reachable with default options through tar_open(), th_read(), and th_get_pathname() or th_get_linkname().

Reproducing

1. GNU long-name header: typeflag 'L', size 512, valid checksum
2. One 512-byte data block with no NUL bytes
3. A normal file header and trailing zero blocks

AddressSanitizer reports:

    ERROR: AddressSanitizer: heap-buffer-overflow ... READ of size 1
        #0 safer_name_suffix   lib/decode.c:39
        #1 th_get_pathname     lib/decode.c:60
    0x... is located 0 bytes after 512-byte region
      allocated by:
        #1 th_read             lib/block.c:192

Impact

A crash when processing an untrusted archive, and possibly adjacent heap data being exposed through the returned path. I haven't found an out-of-bounds write.

Fix

Allocate one extra byte and NUL-terminate the buffer after reading, for both gnu_longname and gnu_longlink:

    t->th_buf.gnu_longname = malloc(blocks * T_BLOCKSIZE + 1);
    ...
    t->th_buf.gnu_longname[blocks * T_BLOCKSIZE] = '\0';

The full advisory, patch and PoC are here:
https://github.com/nilondal/libtar-CVE-2021-33644-followup

Nicholas Londal
nick@...dal.co

