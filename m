X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3356" "Wednesday" "28" "July" "2021" "15:01:51" "+0300" "Alexandr Savca (chinarulezzz)" "alexandr.savca89@gmail.com" nil "88" "Re: [oss-security] Polipo: denial-of-service using range" nil nil nil "7" nil nil (number mark "U       alexandr.sav Jul 28   88/3356  " thread-indent "\"Re: [oss-security] Polipo: denial-of-service using range\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Polipo: denial-of-service using range" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28471 invoked by uid 550); 28 Jul 2021 12:49:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14199 invoked from network); 28 Jul 2021 12:03:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=345h2H7C7f6+fiamwSFyupsSOAQ+bqaU6AZX19M+KiI=;
        b=u/c/Kf936J0dhY+NkwCATCD4osDdkU6WTKrqIpIjQhIp1YqgE+l99uY7Uv3w+z/BCt
         1q3lFraGaYZDSFm3v3H+slvBwGlyv/xjIoiPdaAJQCYk93eVunNTdv45J41ziiQmvu9c
         wQJSTiFjgWSDZ8St7HOA0suYPBa3QgSOuBOzWxUFxzdRh71zvLmJIIr1SZnnvohA370g
         iL5aS5izB7Wu8vCloPHZi9FR6oL4tRJC28NTYK8bV63bh8pXJxF8reWs26KGsS/1F/Lh
         BxyKKLOSb6GNR5jcQAMXfEXm/dhACiVvsobduDCkQ4ytKbbRgUrExvyBpmTYJb2hB43O
         flwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=345h2H7C7f6+fiamwSFyupsSOAQ+bqaU6AZX19M+KiI=;
        b=rqccxhEBFP5z0/B16fdpBhjz0ZZ32zgUE22sr98CoqlnbZX0rD/AVWi5FFZkF8Hvgy
         OrIN6ByfmVO0ekMpqm6cypE4HBiZuD20CZduW4hhrbVCNQdikYYKniYKDbtgXTpAL/u9
         ymubksLwFddkS0fljiMrYD0oUGwGGIZogKj0dy5WZtB6PNLUgygh+1KKrD6NAh6QROQS
         JCgQU433N+2n55dqVsAiKRgHMx49U+hHF882c/cmjoii2ieTsbeshGHVALm2S1XoK94p
         8J73GaZST6P5CdyoF9bo0Oa79h9zXxT4g3WFG68VKiEvgBNr6igRkipMkDYmfVSQjl9u
         sOAw==
X-Gm-Message-State: AOAM533VSaZtc+4tBMocYbyDbbnZxLyI1JLyDvnHy+AvpLCzIXHeNYmA
	gnsMZcR94dSVmz6ALr3oF+I=
X-Google-Smtp-Source: ABdhPJyEdDzQROzROWzNcHW8xg8w3niWl2td3KqjmhZM0LObjLLruNrFvpTiPEoz851KnN2BaEBBZA==
X-Received: by 2002:a17:906:9bf0:: with SMTP id de48mr26888419ejc.260.1627473793314;
        Wed, 28 Jul 2021 05:03:13 -0700 (PDT)
Date: Wed, 28 Jul 2021 15:01:51 +0300
From: "Alexandr Savca (chinarulezzz)" <alexandr.savca89@gmail.com>
To: Jeffrey Walton <noloader@gmail.com>
Cc: oss-security@lists.openwall.com, jchelmert3@posteo.net
Message-ID: <20210728150151.3eadaae2@gmail.com>
In-Reply-To: <CAH8yC8nDTF9-aBtuKG+81rEYmf4QigMfwB3EEw8hwYiGHP+AeQ@mail.gmail.com>
References: <20201118171206.443be0215d1b142b5ce7584e@gmail.com>
	<CAH8yC8nDTF9-aBtuKG+81rEYmf4QigMfwB3EEw8hwYiGHP+AeQ@mail.gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Polipo: denial-of-service using range

Hi Jeff,

There is Heap Buffer Overflow:

<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

==2450==ERROR: AddressSanitizer: heap-buffer-overflow on address
0x602000000277 at pc 0x7fe440a56332 bp 0x7ffd71e73b10 sp 0x7ffd71e732c8
WRITE of size 10 at 0x602000000277 thread T0
    #0 0x7fe440a56331  (/usr/lib/libasan.so.6+0x42331)
    #1 0x5582d71d4b05  (/usr/bin/polipo+0x150b05)
    #2 0x5582d71d0de7  (/usr/bin/polipo+0x14cde7)
    #3 0x5582d71c34d2  (/usr/bin/polipo+0x13f4d2)
    #4 0x7fe43ff05e09 in __libc_start_main (/lib/libc.so.6+0x23e09)
    #5 0x5582d71c3c99  (/usr/bin/polipo+0x13fc99)

0x602000000277 is located 0 bytes to the right of 7-byte region [0x602000000270,0x602000000277)
allocated by thread T0 here:
    #0 0x7fe440ac61a7 in __interceptor_malloc (/usr/lib/libasan.so.6+0xb21a7)
    #1 0x5582d72a876c  (/usr/bin/polipo+0x22476c)

SUMMARY: AddressSanitizer: heap-buffer-overflow (/usr/lib/libasan.so.6+0x42331)
Shadow bytes around the buggy address:
  0x0c047fff7ff0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0c047fff8000: fa fa 00 00 fa fa fd fd fa fa 00 00 fa fa 00 00
  0x0c047fff8010: fa fa 00 00 fa fa fd fd fa fa 00 00 fa fa 00 00
  0x0c047fff8020: fa fa 00 00 fa fa fd fa fa fa fd fa fa fa fd fa
  0x0c047fff8030: fa fa fd fd fa fa fd fd fa fa fd fd fa fa 00 fa
=>0x0c047fff8040: fa fa 01 fa fa fa 00 02 fa fa fd fa fa fa[07]fa
  0x0c047fff8050: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff8060: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff8070: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff8080: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff8090: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:       fa
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
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
  Shadow gap:              cc
==2450==ABORTING

<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

Built with CFLAGS: -O2 -march=x86-64 -pipe -fdiagnostics-color=always -fsanitize=address
-fsanitize=leak -fsanitize=undefined -fsanitize-recover=address -DNDEBUG


Kind Regards,
Alex.


On Mon, 19 Jul 2021 14:18:05 -0400
Jeffrey Walton <noloader@gmail.com> wrote:

> > I found a vulnerability in the Polipo [1],
> > lightweight, caching web proxy.
> > ...
> >
> > Polipo doesn't ignore/reject the malformed header. Instead, it has
> > an assertion:
> >
> >     server.c:1473: assert(from >= 0 && (to < 0 || to > from));
> >
> > So, a malformed Range header ("Range: bytes=3-2" for example) will
> > cause an assertion failed.  This error handling allows an attacker
> > to cause a denial of service.
> 
> I would be interested to know what happens when NDEBUG is defined so
> the assert goes away. Does the server crash, does it lead to memory
> corruption, an information leakage (like a private key), or something
> else?
> 
> Jeff
