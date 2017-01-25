X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6218" "Wednesday" "25" "January" "2017" "10:41:17" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170125094117.GC30424@lorien.valinor.li>" "137" "Re: [oss-security] jasper: heap-based buffer overflow in jpc_dec_decodepkt (jpc_t2dec.c)" nil nil nil "1" "2017012509:41:17" "[oss-security] jasper: heap-based buffer overflow in jpc_dec_decodepkt (jpc_t2dec.c)" (number mark "U       carnil@debia Jan 25  137/6218  " thread-indent "\"Re: [oss-security] jasper: heap-based buffer overflow in jpc_dec_decodepkt (jpc_t2dec.c)\"\n") "<2979113.NTRsFXjtRy@blackgate>" ("<2979113.NTRsFXjtRy@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3680 invoked by uid 550); 25 Jan 2017 09:41:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3608 invoked from network); 25 Jan 2017 09:41:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=j5RgOHGZGfXp7pG/lPk3tPDJM+OsuNGRc3oj3dX96XU=;
        b=q1dcu31nr3CqWmxTkXnGWr3tV1U9ePO5UWAJCEUICYn/JL0RyQsOn1FlYU4P+Ev6pY
         /Cmpq80YEo5og3FhKyOMd/FwS6dXWVb9kNJ9WJZiVtrw6XAjqGlts0h4iKZpygJwGNIU
         ynk1+UPBU7N16ktH4B0ZLyUj2J0yQ7JqgR6M55P6RKPgMUcQeygADRdHNOTG+fFGB7T9
         fNpNNM0M4PmDZcTTXHpM2EkA49c4wieZ/gyPyPlh2df43i6t4Kr2YxvVPC44/xjoSi1s
         gOUKGXTxziaTySeDE0/qj/MnytHJUVFhYTXc1YAPqFuqlf4Vl9Ud4WcHhVxTFmt05i/6
         eHAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=j5RgOHGZGfXp7pG/lPk3tPDJM+OsuNGRc3oj3dX96XU=;
        b=kRYHqIpzfiYA/9kr30C6hHQ97uB4RVV0MKfRtDDwDoeeqWEiaLrDFxQxECxYZOo5hh
         sz/rTaiXJiFkU0PT/78CfPLVtqASMKaI+w3AtP3iljvQ2+sOIgJJBdgFrmux/7YsvdIJ
         qc2Ki6kSg5zRtP/i1syld2CqMNaNlYoAhHmSNSOtwjqBUe/slMAzcgwYFgNTHpxc3CSw
         7fF3cXJ6HlWlxYRhIAlD96e4mBjyQZgSTjcMD5c+2KmsdJq/gKhvzSrQz5YeawPWba5u
         FsGGcJKBOTQccA/2JVXz9H/X1ORpFB18UEwnZmRs5E2gp9CJ2+nbeMgpAokwyDtb4TPU
         skwA==
X-Gm-Message-State: AIkVDXIBbxjpSXJkNbzgMYHEU4CGJfJdCDftbVrF13U05SYSf1J/h6eQ9AANVZEJ2MEiQA==
X-Received: by 10.37.104.193 with SMTP id d184mr29340783ybc.148.1485337279984;
        Wed, 25 Jan 2017 01:41:19 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 25 Jan 2017 10:41:17 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170125094117.GC30424@lorien.valinor.li>
References: <2979113.NTRsFXjtRy@blackgate>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2979113.NTRsFXjtRy@blackgate>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] jasper: heap-based buffer overflow in
 jpc_dec_decodepkt (jpc_t2dec.c)

On Wed, Jan 25, 2017 at 10:16:01AM +0100, Agostino Sarubbo wrote:
> Description:
> jasper is an open-source initiative to provide a free software-based reference 
> implementation of the codec specified in the JPEG-2000 Part-1 standard.
> 
> Another round of fuzzing shows that a crafted image causes a read overflow.
> 
> The complete ASan output:
> 
> # imginfo -f $FILE
> warning: ignoring unknown marker segment (0xff70)
> type = 0xff70 (UNKNOWN); len = 35;00 01 43 72 65 61 74 6f 74 3a 30 4a 61 73 50 
> 65 72 00 01 00 00 73 69 6f 6e 20 31 2e 39 30 30 2e 39 warning: trailing 
> garbage in marker segment (3 bytes)
> warning: trailing garbage in marker segment (8 bytes)
> warning: trailing garbage in marker segment (6 bytes)
> =================================================================
> ==30315==ERROR: AddressSanitizer: heap-buffer-overflow on address 
> 0x61a00001f808 at pc 0x7fb7b2667e54 bp 0x7ffd0a9ab890 sp 0x7ffd0a9ab888
> READ of size 8 at 0x61a00001f808 thread T0
>     #0 0x7fb7b2667e53 in jpc_dec_decodepkt /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_t2dec.c:245:14
>     #1 0x7fb7b2667e53 in jpc_dec_decodepkts /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_t2dec.c:454
>     #2 0x7fb7b25ccd37 in jpc_dec_process_sod /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:628:6
>     #3 0x7fb7b25d6853 in jpc_dec_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:425:10
>     #4 0x7fb7b25d6853 in jpc_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:262
>     #5 0x7fb7b25a6231 in jp2_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jp2/jp2_dec.c:218:21
>     #6 0x7fb7b2568214 in jas_image_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/base/jas_image.c:444:16
>     #7 0x50a3be in main /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/appl/imginfo.c:238:16
>     #8 0x7fb7b164878f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-
> r3/work/glibc-2.23/csu/../csu/libc-start.c:289
>     #9 0x419cd8 in _start (/usr/bin/imginfo+0x419cd8)
> 
> 0x61a00001f808 is located 48 bytes to the right of 1368-byte region 
> [0x61a00001f280,0x61a00001f7d8)
> allocated by thread T0 here:
>     #0 0x4d2a98 in malloc /tmp/portage/sys-
> devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
> rt/lib/asan/asan_malloc_linux.cc:64
>     #1 0x7fb7b2575160 in jas_malloc /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/base/jas_malloc.c:242:11
>     #2 0x7fb7b2575160 in jas_alloc2 /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/base/jas_malloc.c:275
>     #3 0x7fb7b25ca2bf in jpc_dec_tileinit /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:841:24
>     #4 0x7fb7b25ca2bf in jpc_dec_process_sod /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:594
>     #5 0x7fb7b25d6853 in jpc_dec_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:425:10
>     #6 0x7fb7b25d6853 in jpc_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:262
>     #7 0x7fb7b25a6231 in jp2_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jp2/jp2_dec.c:218:21
>     #8 0x7fb7b2568214 in jas_image_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/base/jas_image.c:444:16
>     #9 0x50a3be in main /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/appl/imginfo.c:238:16
>     #10 0x7fb7b164878f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-
> r3/work/glibc-2.23/csu/../csu/libc-start.c:289
> 
> SUMMARY: AddressSanitizer: heap-buffer-overflow /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_t2dec.c:245:14 in 
> jpc_dec_decodepkt
> Shadow bytes around the buggy address:
>   0x0c347fffbeb0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>   0x0c347fffbec0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>   0x0c347fffbed0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>   0x0c347fffbee0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>   0x0c347fffbef0: 00 00 00 00 00 00 00 00 00 00 00 fa fa fa fa fa
> =>0x0c347fffbf00: fa[fa]fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c347fffbf10: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c347fffbf20: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c347fffbf30: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c347fffbf40: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c347fffbf50: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
> Shadow byte legend (one shadow byte represents 8 application bytes):
>   Addressable:           00
>   Partially addressable: 01 02 03 04 05 06 07 
>   Heap left redzone:       fa
>   Heap right redzone:      fb
>   Freed heap region:       fd
>   Stack left redzone:      f1
>   Stack mid redzone:       f2
>   Stack right redzone:     f3
>   Stack partial redzone:   f4
>   Stack after return:      f5
>   Stack use after scope:   f8
>   Global redzone:          f9
>   Global init order:       f6
>   Poisoned by user:        f7
>   Container overflow:      fc
>   Array cookie:            ac
>   Intra object redzone:    bb
>   ASan internal:           fe
>   Left alloca redzone:     ca
>   Right alloca redzone:    cb
> ==30315==ABORTING
> 
> Affected version:
> 2.0.10
> 
> Fixed version:
> N/A
> 
> Commit fix:
> N/A
> 
> Credit:
> This bug was discovered by Agostino Sarubbo of Gentoo.
> 
> CVE:
> N/A
> 
> Reproducer:
> https://github.com/asarubbo/poc/blob/master/00126-jasper-heapoverflow-jpc_dec_decodepkt
> 
> Timeline:
> 2017-01-25: bug discovered and reported upstream
> 2017-01-25: blog post about the issue
> 
> Note:
> This bug was found with American Fuzzy Lop.
> 
> Permalink:
> https://blogs.gentoo.org/ago/2017/01/25/jasper-heap-based-buffer-overflow-in-jpc_dec_decodepkt-jpc_t2dec-c

This one should be https://github.com/mdadams/jasper/issues/114

Regards,
Salvatore
