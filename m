X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4664" "Thursday" "21" "July" "2016" "21:42:44" "+0800" "Marco Grassi" "marco.gra@gmail.com" "<CAFkTriJ_Gdghr4XZY3VbdtsmWN46ZMmPo9TX9c-CPebpwVhz2A@mail.gmail.com>" "120" "[oss-security] mupdf library use after free" nil nil nil "7" "2016072113:42:44" "[oss-security] mupdf library use after free" (number mark "U       marco.gra@gm Jul 21  120/4664  " thread-indent "\"[oss-security] mupdf library use after free\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3376 invoked by uid 550); 21 Jul 2016 13:43:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3312 invoked from network); 21 Jul 2016 13:42:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=YusNh5pAmLjb5xDff5fjpIj7FTBRE1aL0qU2Sxmp1Ks=;
        b=NX7TUacMmCRZ6Y/1GKHWClExv1f7leF7X/4B5rp7dIt28+Ry9t9p152dXtOyppaWHl
         35STUnVLJZPnhWOs3VTRiS1vL0eXi2iz90FXgJSSXXxSZn0frF+X6YpTRaZulW8X1pNV
         SzsoumrKHapJeKpXD3Ry3P8GMjb9Dof4jb79rG+2jaEus1fCkqMSn6zeLPrO5gwAWNjk
         01IXo7i9rQWZdbuBrjtrVVvNnvYp/6EtQNQtA7R5f18bvFq/4DVgYAwK43nTmYvUXUbb
         hYM4JRv60CyVpcbx3xuHKJTgI9W8ma4GpWpiiLbGskSPH2IcHvD/Gkp2xyXyim5fYPX4
         wIeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=YusNh5pAmLjb5xDff5fjpIj7FTBRE1aL0qU2Sxmp1Ks=;
        b=WmKvXwHG+RlSByFcXwpQHAOWhJuS89qYSpRH3gOTBI8PEyBoAGNX8N/GV//UuafSRm
         J1qUuLK1gaksN30wpIFPwLhGdQA5Zz5Qb2EheLvgua0Xq4mkZ/0U2Q8qbQNdFrMMEIiZ
         xK6iCVXR8HtrAhhbz/s5q/7+NeKPkqcHYahb1TSnO6NWj6tmUpUA8U3YTiYbouZtwyGk
         lGvnaeMCxEXcmFu0HLhvSMwbacpfhw7Ek+cNEURgudVo6AlUD9I4WRaZB7pZrQ9vWQ0r
         naMLI7leGks1FyRXh/HC7bn5DeCTjpvbUzGQd8W0JbyQiC34cIr4OhL91MyhuDdoc+lv
         zopA==
X-Gm-Message-State: ALyK8tJgqgKbNIL+sKftMe2IguOlH7Tx+3pzUHYV8mNdsFUodq/dvi0QOTTvvi2OVYnRu8QbC1rIFDjA9EcLPA==
X-Received: by 10.28.134.14 with SMTP id i14mr17011340wmd.59.1469108564927;
 Thu, 21 Jul 2016 06:42:44 -0700 (PDT)
MIME-Version: 1.0
From: Marco Grassi <marco.gra@gmail.com>
Date: Thu, 21 Jul 2016 21:42:44 +0800
Message-ID: <CAFkTriJ_Gdghr4XZY3VbdtsmWN46ZMmPo9TX9c-CPebpwVhz2A@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a114416b82665790538257e3d
Subject: [oss-security] mupdf library use after free

--001a114416b82665790538257e3d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I disclosed a UAF in MuPDF, you can find the reproducer and report here:

http://bugs.ghostscript.com/show_bug.cgi?id=3D696941

I put a partially symbolicated ASAN report here for reference

Marco

-----

=E2=9E=9C  mupdf ./mupdf_debug/build/debug/mupdf-x11 mucrash1.pdf 2>&1 |
asan_symbolize-3.8
warning: broken xref section, proceeding anyway.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D24575=3D=3DERROR: AddressSanitizer: heap-use-after-free on address
0x61700000fda8 at pc 0x0000006b0a54 bp 0x7ffcb040dbb0 sp 0x7ffcb040dba8
READ of size 4 at 0x61700000fda8 thread T0
    #0 0x6b0a53 in pdf_load_xref
/media/bob/e4109b52-3574-43a8-b95d-33b3494128de/misc/mupdf/mupdf_debug/sour=
ce/pdf/pdf-xref.c:1188
    #1 0x6b0a53 in ?? ??:0
    #2 0x6aac73 in pdf_init_document
/media/bob/e4109b52-3574-43a8-b95d-33b3494128de/misc/mupdf/mupdf_debug/sour=
ce/pdf/pdf-xref.c:1440
    #3 0x6aac73 in ?? ??:0
    #4 0x6ad4ae in pdf_open_document
/media/bob/e4109b52-3574-43a8-b95d-33b3494128de/misc/mupdf/mupdf_debug/sour=
ce/pdf/pdf-xref.c:2347
    #5 0x6ad4ae in ?? ??:0
    #6 0x5183d2 in fz_open_document
/media/bob/e4109b52-3574-43a8-b95d-33b3494128de/misc/mupdf/mupdf_debug/sour=
ce/fitz/document.c:129
    #7 0x5183d2 in ?? ??:0
    #8 0x4fbb2b in pdfapp_open_progressive
/media/bob/e4109b52-3574-43a8-b95d-33b3494128de/misc/mupdf/mupdf_debug/plat=
form/x11/pdfapp.c:317
    #9 0x4fbb2b in ?? ??:0
    #10 0x4fb708 in pdfapp_open
/media/bob/e4109b52-3574-43a8-b95d-33b3494128de/misc/mupdf/mupdf_debug/plat=
form/x11/pdfapp.c:213
    #11 0x4fb708 in ?? ??:0
    #12 0x4f01df in main
/media/bob/e4109b52-3574-43a8-b95d-33b3494128de/misc/mupdf/mupdf_debug/plat=
form/x11/x11_main.c:888
    #13 0x4f01df in ?? ??:0
    #14 0x7f6b723ef82f in __libc_start_main
/build/glibc-GKVZIf/glibc-2.23/csu/../csu/libc-start.c:291
    #15 0x7f6b723ef82f in ?? ??:0
    #16 0x41ad98 in _start ??:?
    #17 0x41ad98 in ?? ??:0

0x61700000fda8 is located 296 bytes inside of 768-byte region
[0x61700000fc80,0x61700000ff80)
freed by thread T0 here:
    #0 0x4bad40 in __interceptor_cfree.localalias.0 asan_malloc_linux.cc.o:?
    #1 0x4bad40 in ?? ??:0
    #2 0x516018 in fz_free_default
/media/bob/e4109b52-3574-43a8-b95d-33b3494128de/misc/mupdf/mupdf_debug/sour=
ce/fitz/memory.c:225
    #3 0x516018 in ?? ??:0

previously allocated by thread T0 here:
    #0 0x4baec8 in malloc ??:?
    #1 0x4baec8 in ?? ??:0
    #2 0x515f68 in fz_malloc_default
/media/bob/e4109b52-3574-43a8-b95d-33b3494128de/misc/mupdf/mupdf_debug/sour=
ce/fitz/memory.c:213
    #3 0x515f68 in ?? ??:0
    #4 0x6b9aae in pdf_xref_find_subsection
/media/bob/e4109b52-3574-43a8-b95d-33b3494128de/misc/mupdf/mupdf_debug/sour=
ce/pdf/pdf-xref.c:740
    #5 0x6b9aae in ?? ??:0

SUMMARY: AddressSanitizer: heap-use-after-free
(/media/bob/e4109b52-3574-43a8-b95d-33b3494128de/misc/mupdf/mupdf_debug/bui=
ld/debug/mupdf-x11+0x6b0a53)
Shadow bytes around the buggy address:
  0x0c2e7fff9f60: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c2e7fff9f70: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c2e7fff9f80: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c2e7fff9f90: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c2e7fff9fa0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
=3D>0x0c2e7fff9fb0: fd fd fd fd fd[fd]fd fd fd fd fd fd fd fd fd fd
  0x0c2e7fff9fc0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c2e7fff9fd0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c2e7fff9fe0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
  0x0c2e7fff9ff0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c2e7fffa000: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:       fa
  Heap right redzone:      fb
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack partial redzone:   f4
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
  Left alloca redzone:     ca
  Right alloca redzone:    cb
=3D=3D24575=3D=3DABORTING

--001a114416b82665790538257e3d--
