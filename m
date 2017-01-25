X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3081" "Wednesday" "25" "January" "2017" "10:39:56" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170125093956.GB30424@lorien.valinor.li>" "80" "Re: [oss-security] jasper: invalid memory read in jas_matrix_bindsub (jas_seq.c)" nil nil nil "1" "2017012509:39:56" "[oss-security] jasper: invalid memory read in jas_matrix_bindsub (jas_seq.c)" (number mark "U       carnil@debia Jan 25   80/3081  " thread-indent "\"Re: [oss-security] jasper: invalid memory read in jas_matrix_bindsub (jas_seq.c)\"\n") "<3307797.rmYh5dmluK@blackgate>" ("<3307797.rmYh5dmluK@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25937 invoked by uid 550); 25 Jan 2017 09:40:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25872 invoked from network); 25 Jan 2017 09:40:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0jnmOVBbs+cvFdSDaZeyEt0RWQQa1pNX2GL9Tk5jP8c=;
        b=ZOkkEm5zdXxI0cfUeKLGVhF8VJKF/oG9zHNd87+c7q8ukpjtc7DeTsWIW2Bkw8npty
         kdWoa59UBQGF9nlfeq+FLm2Jocra2ZvF2esvPCs9zRco+LK80E0Ki6HQNBCGnH00FqMN
         dLy3Q4Xy7n9bknvU8WOQj2zfU9mn03kBGy/R9P29qKgs9IyWMW0kQLddbDZLSBH9mU/f
         rkUDqh/WxzrCcKyxUuFS2tfS8lhpamuLUFfpTmfsDu9ha3Os76FsA8iCnMnQhtNICLfI
         415biW1M65zqmbuzZOcrljr94+zshR4XL9MUbRFM6rJO9uax1wTyZDGPyFSKwWY0h7g2
         5eig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=0jnmOVBbs+cvFdSDaZeyEt0RWQQa1pNX2GL9Tk5jP8c=;
        b=HhXCcrDCVO7uJLWloCpwRgt61RLvOoGUuFV4RfsTbAPC+VJSMimsxJSVVSeF99LvZg
         ca3RP4xS24Y8ZAZWKISwTP6QAAz5+MvXVBlFl3P234pbGa0J7US+0rx9MH7BpLJ7b2q0
         hf2tYPHi2kz0Ai+A+omi+QsGhjtUrB2eu9NWOnB6YbKXkmINcReBUXlBMF7ibREHr7Bc
         yyyYM/r3f5Boc+feJNTjxCc1aM26mk1OGPEMNzaO+dkyYHT/B6aIGQwtF3G4iQYs4g/L
         j1nLG6XtA26tWc5fEkS/vimrwYIks45a/o9jzra1hoS1oCLNF+DfmxGHANhCXplNWRE+
         GTYA==
X-Gm-Message-State: AIkVDXKYq9NY4bjzTcnBfI3nAmiuSDqXHszxf7Q5ml59SbAtOXzioWPrzvzYR0EFgiH5kw==
X-Received: by 10.13.202.195 with SMTP id m186mr28708672ywd.11.1485337198426;
        Wed, 25 Jan 2017 01:39:58 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 25 Jan 2017 10:39:56 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170125093956.GB30424@lorien.valinor.li>
References: <3307797.rmYh5dmluK@blackgate>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3307797.rmYh5dmluK@blackgate>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] jasper: invalid memory read in jas_matrix_bindsub
 (jas_seq.c)

Hi

On Wed, Jan 25, 2017 at 10:12:23AM +0100, Agostino Sarubbo wrote:
> Description:
> jasper is an open-source initiative to provide a free software-based reference 
> implementation of the codec specified in the JPEG-2000 Part-1 standard.
> 
> Another round of fuzzing shows that a crafted image causes an invalid memory 
> read.
> 
> The complete ASan output:
> 
> # imginfo -f $FILE
> warning: ignoring unknown marker segment (0xff59)
> type = 0xff59 (UNKNOWN); len = 20;00 40 40 00 00 00 00 69 00 00 00 00 00 00 00 
> 00 00 00 warning: ignoring unknown marker segment (0xff46)
> type = 0xff46 (UNKNOWN); len = 20;01 40 40 00 00 00 00 00 00 00 00 00 00 00 12 
> 00 94 7f ASAN:DEADLYSIGNAL
> =================================================================
> ==22653==ERROR: AddressSanitizer: SEGV on unknown address 0x60180000ec30 (pc 
> 0x7f410df421b7 bp 0x7ffdc80abaf0 sp 0x7ffdc80aba60 T0)
> ==22653==The signal is caused by a READ memory access.
>     #0 0x7f410df421b6 in jas_matrix_bindsub /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/base/jas_seq.c:254:18
>     #1 0x7f410df951a1 in jpc_dec_tileinit /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:835:5
>     #2 0x7f410df951a1 in jpc_dec_process_sod /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:594
>     #3 0x7f410dfa1853 in jpc_dec_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:425:10
>     #4 0x7f410dfa1853 in jpc_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:262
>     #5 0x7f410df71231 in jp2_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jp2/jp2_dec.c:218:21
>     #6 0x7f410df33214 in jas_image_decode /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/base/jas_image.c:444:16
>     #7 0x50a3be in main /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/appl/imginfo.c:238:16
>     #8 0x7f410d01378f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-
> r3/work/glibc-2.23/csu/../csu/libc-start.c:289
>     #9 0x419cd8 in _start (/usr/bin/imginfo+0x419cd8)
> 
> AddressSanitizer can not provide additional info.
> SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-
> libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/base/jas_seq.c:254:18 in 
> jas_matrix_bindsub
> ==22653==ABORTING
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
> https://github.com/asarubbo/poc/blob/master/00125-jasper-invalidread-jas_matrix_bindsub
> 
> Timeline:
> 2017-01-21: bug discovered and reported upstream
> 2017-01-25: blog post about the issue
> 
> Note:
> This bug was found with American Fuzzy Lop.
> 
> Permalink:
> https://blogs.gentoo.org/ago/2017/01/25/jasper-invalid-memory-read-in-jas_matrix_bindsub-jas_seq-c

This one should be https://github.com/mdadams/jasper/issues/113

Regards,
Salvatore
