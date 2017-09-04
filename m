X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2752" "Monday" "4" "September" "2017" "06:20:44" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170904042044.iz5eke67pq3ruk6z@lorien.valinor.li>" "63" "Re: [oss-security] unrar-free/unrar-gpl: directory traversal and other issues" nil nil nil "9" "2017090404:20:44" "[oss-security] unrar-free/unrar-gpl: directory traversal and other issues" (number mark "U       carnil@debia Sep  4   63/2752  " thread-indent "\"Re: [oss-security] unrar-free/unrar-gpl: directory traversal and other issues\"\n") "<20170820213432.0ec33271@pc1>" ("<20170820213432.0ec33271@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15619 invoked by uid 550); 4 Sep 2017 04:20:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15598 invoked from network); 4 Sep 2017 04:20:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=f1rgISsuZ7WcNZMQx55FUfR/A40bwt6Ze5K5VLpK32Q=;
        b=nROCzr+N7cI5/MjyvO4C/LHtdwnwEiABxT75R6JGFdniupOeUtl1jceqAVpVze3cZ+
         5sKmqexc7pyUQGD1gN/RJq+pFR2yZWSNYgFB3snM1t9oHVYJsneZU0J4z+k6JosBbGpJ
         f8j+ym5or97Tr2/4yWSNT7mWvyXgKlotGa9r6pRPxLybWGDSKkvtZ+HL9n8AnN4v+gja
         QAYIInqKYYCVe6LGsBDoryKJ/KA6rYST4yC2T1Y9+gur3LJov+t5TK+JoVuoiI9+Udkw
         ESUqW80D0Sqer1ACrhdCitzwfqQ40QZbY/DkxmuaAj1Kmif3iBm4VgaBBiAaYnNNiqQS
         oIfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=f1rgISsuZ7WcNZMQx55FUfR/A40bwt6Ze5K5VLpK32Q=;
        b=H+eeu216cUAtgIPUjpcMioD98myTXRDX/+QdtxQ6+2mPc00i/j+gTwbsJ3yTMwY2LZ
         7jzGMiUXTZCLCMbxX6FBkd7msvJKQeoTaygKVC8wJZ6ypRPn7kkVJTxttpQ9N2wj8h0n
         2u9iokNGZeCszrJvFj9wu7gP9OxP9Gs8/cdWTG0qAhKl0WSVuRP/4J3dYVZYRu+JOGS6
         MJhEr3E4jSy7oBMzh6YgTQXthMH8yvIUFgMjN5FkooKfLjSstmFnfZkIkfpGKn/o50zI
         wYL0Qjuy0RDQlh0oyEzR2S7MEz5p/kFScOZe9qCR591N3RCsiSalqKpztKyyzWdUEDB+
         nFdg==
X-Gm-Message-State: AHPjjUjkZqLxjayiNuGBDQYd1BBoKb3VcCRyfzNQuriObbGJdz440Jog
	ifFbsjyMiK3otyNO
X-Google-Smtp-Source: ADKCNb5EWRchquRWR6erFOKVjEQt52eZC2c8GgboIv/rfhgL0eZNPdCc4O65Kyh4nvAtIsBJ0fMCnA==
X-Received: by 10.223.198.80 with SMTP id u16mr4655132wrg.10.1504498846519;
        Sun, 03 Sep 2017 21:20:46 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 4 Sep 2017 06:20:44 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170904042044.iz5eke67pq3ruk6z@lorien.valinor.li>
References: <20170820213432.0ec33271@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170820213432.0ec33271@pc1>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] unrar-free/unrar-gpl: directory traversal and
 other issues

Hi

FTR three CVEs were assigned, and for Debian I raised the question if
unrar-free should be removed from the archive via:

https://bugs.debian.org/874065

On Sun, Aug 20, 2017 at 09:34:32PM +0200, Hanno Böck wrote:
> Issue 1: Directory Traversal
> 
> Creating a rar v2 archive with path names of the form ../[filename]
> will unpack them into the upper directory.

This was assigned CVE-2017-14120

> Issue 2: Stack overread
> 
> A malformed archive can cause a stack overread, detectable with asan.
> This issue doesn't happen reliably, I haven't investigated further.
> 
> ==2585==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7fff76184120 at pc 0x000000445d25 bp 0x7fff76183ef0 sp 0x7fff761836a0
> READ of size 519 at 0x7fff76184120 thread T0
>     #0 0x445d24 in __interceptor_strchr.part.33 (/r/unrar-gpl/unrar+0x445d24)
>     #1 0x516d0d in stricomp /f/unrar-gpl/unrar/src/unrarlib.c:851:19
>     #2 0x511613 in ExtrFile /f/unrar-gpl/unrar/src/unrarlib.c:745:20
>     #3 0x510b02 in urarlib_get /f/unrar-gpl/unrar/src/unrarlib.c:303:13
>     #4 0x50b249 in unrar_extract_file /f/unrar-gpl/unrar/src/unrar.c:343:8
>     #5 0x50be32 in unrar_extract /f/unrar-gpl/unrar/src/unrar.c:483:9
>     #6 0x50c69c in main /f/unrar-gpl/unrar/src/unrar.c:556:14
>     #7 0x7f632d3834f0 in __libc_start_main (/lib64/libc.so.6+0x204f0)
>     #8 0x419e19 in _start (/r/unrar-gpl/unrar+0x419e19)
> 
> Address 0x7fff76184120 is located in stack of thread T0 at offset 544 in frame
>     #0 0x516c1f in stricomp /f/unrar-gpl/unrar/src/unrarlib.c:844
> 
>   This frame has 2 object(s):
>     [32, 544) 'S1'
>     [608, 1120) 'S2' <== Memory access at offset 544 partially
>     underflows this variable

This was assigned CVE-2017-14122

> Issue 3: Null pointer
> 
> A malformed input file can cause a null pointer read.
> 
> ==3328==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000020 (pc 0x00000051ed2c bp 0x000000278b18 sp 0x7fffc410e300 T0)
> ==3328==The signal is caused by a READ memory access.
> ==3328==Hint: address points to the zero page.
>     #0 0x51ed2b in DecodeNumber /f/unrar-gpl/unrar/src/unrarlib.c:1649:16
>     #1 0x5186f5 in Unpack /f/unrar-gpl/unrar/src/unrarlib.c:1148:4
>     #2 0x511c47 in ExtrFile /f/unrar-gpl/unrar/src/unrarlib.c:799:10
>     #3 0x510b02 in urarlib_get /f/unrar-gpl/unrar/src/unrarlib.c:303:13
>     #4 0x50b249 in unrar_extract_file /f/unrar-gpl/unrar/src/unrar.c:343:8
>     #5 0x50be32 in unrar_extract /f/unrar-gpl/unrar/src/unrar.c:483:9
>     #6 0x50c69c in main /f/unrar-gpl/unrar/src/unrar.c:556:14
>     #7 0x7f0a337df4f0 in __libc_start_main (/lib64/libc.so.6+0x204f0)
>     #8 0x419e19 in _start (/r/unrar-gpl/unrar+0x419e19)

This was assigned CVE-2017-14121

Regards,
Salvatore
