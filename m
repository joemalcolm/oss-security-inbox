X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3522" "Wednesday" "25" "January" "2017" "10:39:01" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170125093901.GA30424@lorien.valinor.li>" "89" "Re: [oss-security] jasper: NULL pointer dereference in jp2_cdef_destroy (jp2_cod.c)" nil nil nil "1" "2017012509:39:01" "[oss-security] jasper: NULL pointer dereference in jp2_cdef_destroy (jp2_cod.c)" (number mark "U       carnil@debia Jan 25   89/3522  " thread-indent "\"Re: [oss-security] jasper: NULL pointer dereference in jp2_cdef_destroy (jp2_cod.c)\"\n") "<4852597.N8d9Bx2SxP@blackgate>" ("<4852597.N8d9Bx2SxP@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18245 invoked by uid 550); 25 Jan 2017 09:39:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18227 invoked from network); 25 Jan 2017 09:39:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=a/NRKuDwZvyacAiSM3g+IEUHhl7va0mEnFTY9PYh8KU=;
        b=TVINBUsfcAI/eawl0cs5/RatTPfPVbo9LRZBGPl8KZv21UcmwkSUPLkotiZF2uc1YS
         OB5yJjCJTgKjOYGf3IKdPedkob6KilfUbDjJQ21KbFR5a9CszPQKj0GUc2rTmCLwJrdp
         riotAiP9g5CGu3pfUCYc8+D4ZpgbT6vr/fz0qg9uofnQ4ckXF6yaZnOXK7KUdy56JR2k
         U/wS+TWf9rqHHEPj1lMUuVOvhCvcZ8Vzw1kB30cHoGTNFxJ0A9xRRCQL3OHMC2wl0VyZ
         bhmxmJ9AUCtzl+AHDrzMl9tZ30hVNpb1/HVMKihYOlY/PXrLmcUO0LJVOoqkJwTzGpzx
         XRMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=a/NRKuDwZvyacAiSM3g+IEUHhl7va0mEnFTY9PYh8KU=;
        b=RN+sINRDzj96mUpeYf7N/QNiQRd02y9HOFUKr5eKjiQpPLxow3FRBLigEgP0R8WNao
         EwGTpXdK1H7m2LsEQNJq2p+ljaosAxiVGGTgTDzWmkvMtAdjx38qDTJDWozWdLN7sfxZ
         lo00ERud9CC1zUxf09glmsPqe0SsOyuuny3F0xldWk1m/vER2WoW0ierP1nOXfjw6B1s
         LPuvb47Mjx6i/sQ3Z1BT9qG21phrBz/rxkDb/bBJTfUk/dKpfYW9l+8jv3vxdV9EVDiM
         rCfgPH7VMdg4MuAScNnIL792Ls1s7+0NF05bW8KJ3N3r35kME6F2QISRmQh+KJ6woRjr
         9WDA==
X-Gm-Message-State: AIkVDXK7l+j9hfL08UzHxWofKKeIa+7d0cxUrT6pgKCHI84PH3CGuQLkRLYqnEl9lpb/jw==
X-Received: by 10.13.219.213 with SMTP id d204mr29554859ywe.155.1485337143906;
        Wed, 25 Jan 2017 01:39:03 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 25 Jan 2017 10:39:01 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170125093901.GA30424@lorien.valinor.li>
References: <4852597.N8d9Bx2SxP@blackgate>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4852597.N8d9Bx2SxP@blackgate>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] jasper: NULL pointer dereference in
 jp2_cdef_destroy (jp2_cod.c)

Hi Agostino

On Wed, Jan 25, 2017 at 10:10:35AM +0100, Agostino Sarubbo wrote:
> Description:
> jasper is an open-source initiative to provide a free software-based reference 
> implementation of the codec specified in the JPEG-2000 Part-1 standard.
> 
> Another round of fuzzing shows that a crafted image causes a NULL pointer 
> access.
> 
> The complete ASan output:
> 
> # imginfo -f $FILE
> cannot parse box data
> ASAN:DEADLYSIGNAL
> =================================================================
> ==6697==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 
> 0x00000041da35 bp 0xbebebebebebebeae sp 0x7fff60ad6480 T0)
>     #0 0x41da34 in atomic_compare_exchange_strong /tmp/portage/sys-
> devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
> rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:81
>     #1 0x41da34 in 
> __asan::Allocator::AtomicallySetQuarantineFlagIfAllocated(__asan::AsanChunk*, 
> void*, __sanitizer::BufferedStackTrace*) /tmp/portage/sys-
> devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
> rt/lib/asan/asan_allocator.cc:468
>     #2 0x41da34 in __asan::Allocator::Deallocate(void*, unsigned long, 
> __sanitizer::BufferedStackTrace*, __asan::AllocType) /tmp/portage/sys-
> devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
> rt/lib/asan/asan_allocator.cc:522
>     #3 0x41da34 in __asan::asan_free(void*, __sanitizer::BufferedStackTrace*, 
> __asan::AllocType) /tmp/portage/sys-
> devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
> rt/lib/asan/asan_allocator.cc:725
>     #4 0x4d271c in free /tmp/portage/sys-
> devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
> rt/lib/asan/asan_malloc_linux.cc:50
>     #5 0x7f86ef11c995 in jp2_cdef_destroy /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jp2/jp2_cod.c:230:3
>     #6 0x7f86ef11e18e in jp2_box_destroy /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jp2/jp2_cod.c:212:3
>     #7 0x7f86ef11e18e in jp2_box_get /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jp2/jp2_cod.c:319
>     #8 0x7f86ef1219f6 in jp2_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jp2/jp2_dec.c:159:16
>     #9 0x7f86ef0e4214 in jas_image_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/base/jas_image.c:444:16
>     #10 0x50a3be in main /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/appl/imginfo.c:238:16
>     #11 0x7f86ee1c478f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-
> r3/work/glibc-2.23/csu/../csu/libc-start.c:289
>     #12 0x419cd8 in _start (/usr/bin/imginfo+0x419cd8)
> 
> AddressSanitizer can not provide additional info.
> SUMMARY: AddressSanitizer: SEGV /tmp/portage/sys-
> devel/llvm-3.9.1/work/llvm-3.9.1.src/projects/compiler-
> rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:81 in 
> atomic_compare_exchange_strong
> ==6697==ABORTING
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
> https://github.com/asarubbo/poc/blob/master/00124-jasper-nullptr-jp2_cdef_destroy
> 
> Timeline:
> 2017-01-18: bug discovered and reported upstream

This should be: https://github.com/mdadams/jasper/issues/112

Could you please reference as well the upstream issues, if they are
reported in an upstream issue tracker? That would help much in
tracking the issues.

Regards,
Salvatore
