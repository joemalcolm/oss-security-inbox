X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3900" "Wednesday" "16" "January" "2019" "16:00:49" "+0100" "Alexander Potapenko" "glider@google.com" "<CAG_fn=XwtjiiqtRveFpvbpg_gE9McZbNUOckS0ox4ZdDvu4tHA@mail.gmail.com>" "101" "Re: [oss-security] Heap based buffer overflow in wolfSSL" nil nil nil "1" "2019011615:00:49" "[oss-security] Heap based buffer overflow in wolfSSL" (number mark "U       glider@googl Jan 16  101/3900  " thread-indent "\"Re: [oss-security] Heap based buffer overflow in wolfSSL\"\n") "<CAG8b5tRb__-uRn5B7hqN1q+yt3s7MPeC-GBEzfK3Ua9NkBm1hw@mail.gmail.com>" ("<CAG8b5tRb__-uRn5B7hqN1q+yt3s7MPeC-GBEzfK3Ua9NkBm1hw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16259 invoked by uid 550); 16 Jan 2019 15:01:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16236 invoked from network); 16 Jan 2019 15:01:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=KXnknNXqua45C7cQ8UaCGhy4CmJA/H+JIPXTZQyUjyY=;
        b=GDTlQ1h9hRizB1iOpXRJkCHn447doX/L8FcS8I3GP17ezwV4ootYGzX0nsyqHegEc+
         XpsYtJzDCxMo6Qg/sYpIA/o3sP7jfKa6sDjevhelc+hiP/l5yDS/kvNTzWMXdlPV2cL9
         4CxeSLoZyWm95GwsE9a+FN1ANtg8ypXOcf+aXbKfEOw8hGkiEHrV+AFrvucy4NbXDq/n
         lfaEVywSgiIfXZ5acAYzQVA1EciVQEw8GOLHmBd0XiGr5sCPT59A9RiyiS13Fb7lMOXP
         sNTd2S8CStKrJSVQwer3xCq9WSUKQU7pbM36FteuvRsFQ5rSuRJK8CywFneTrR7mpwW4
         35sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=KXnknNXqua45C7cQ8UaCGhy4CmJA/H+JIPXTZQyUjyY=;
        b=JfthAXsjWNT6q2dQWXWfhmKY3VHmOPWp0NW9J24Nr6A/LTbqw/J9brO7JvcAxoknO+
         C3a7oD1ve7tLQ8AF5j/fqGw48sbzEN2Cpw0FL3sMh1BdVfz5WKF4PzkYAyNBcr4ML+aW
         oo0ySSb5qyJf1FCar1GvlinA/7ystArut4ef3YuGDe1lFr80i1/Vw+O+7luXiKeOuoRe
         UEM7t3eQOxM+FqoGuI3ozVJIIp4AbTD6wLdZKsjaMWEMdyS9ej7EGDEGN4fPqIsAT+jX
         0ykL/sS323KwpwMMFCzdDL9ZTyWysh85HPcVhcCb/yo0fcoMCsEQCkAW46JurFd3LwHF
         TBFQ==
X-Gm-Message-State: AJcUukdaFLddps+o108CqHicWM0SQ1nNjzdJYeFv35mhCZposZcq0d9d
	KdO5UL/2QpybUXsmlayQaf5diVoau/WAxN7NHW4YUCvcX+iD7g==
X-Google-Smtp-Source: ALg8bN7NFGE9T0Su70ItsXnv8yg2fDkdkZqC2sOFF2GRPR6Xfn9pwMkX4kuPymi2+2gaabolswTLPxG6mjdQB461RP8=
X-Received: by 2002:a67:3cd6:: with SMTP id w83mr3997170vsh.39.1547650862395;
 Wed, 16 Jan 2019 07:01:02 -0800 (PST)
MIME-Version: 1.0
References: <CAG8b5tRb__-uRn5B7hqN1q+yt3s7MPeC-GBEzfK3Ua9NkBm1hw@mail.gmail.com>
In-Reply-To: <CAG8b5tRb__-uRn5B7hqN1q+yt3s7MPeC-GBEzfK3Ua9NkBm1hw@mail.gmail.com>
From: Alexander Potapenko <glider@google.com>
Date: Wed, 16 Jan 2019 16:00:49 +0100
Message-ID: <CAG_fn=XwtjiiqtRveFpvbpg_gE9McZbNUOckS0ox4ZdDvu4tHA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Heap based buffer overflow in wolfSSL

On Wed, Jan 16, 2019 at 12:44 PM Dhiraj Mishra
<mishra.dhiraj95@gmail.com> wrote:
>
> Hi List,
Hello,

I cannot judge whether this is a real problem or not, but the report
below is definitely missing critical information, like symbols,
filenames and line numbers.
Without those it's even impossible to tell a bug in wolfSSL code from
a bug in the benchmark itself.
You can refer to
https://clang.llvm.org/docs/AddressSanitizer.html#symbolizing-the-reports
for the instructions on how to get symbol information.

HTH,
Alex
> ## Summary:
> wolfSSL is an C-language-based SSL/TLS library targeted at IoT, embedded,
> and RTOS environments a heap-based-buffer overflow was observed in
> tls_bench.c which is a benchmark tool in wolfSSL.
>
> ## ASAN
> =3D=3D4088=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address
> 0x619000000480 at pc 0x00000050ff16 bp 0x7fef206fdbf0 sp 0x7fef206fdbe8
> WRITE of size 1 at 0x619000000480 thread T2
>     #0 0x50ff15  (/wolfssl/examples/benchmark/tls_bench+0x50ff15)
>     #1 0x4dfa52  (/wolfssl/examples/benchmark/tls_bench+0x4dfa52)
>     #2 0x7fef243ac6da  (/lib/x86_64-linux-gnu/libpthread.so.0+0x76da)
>     #3 0x7fef23ab188e  (/lib/x86_64-linux-gnu/libc.so.6+0x12188e)
>
> 0x619000000480 is located 0 bytes to the right of 1024-byte region
> [0x619000000080,0x619000000480)
> allocated by thread T2 here:
>     #0 0x4d1fa0  (/wolfssl/examples/benchmark/tls_bench+0x4d1fa0)
>     #1 0x50f277  (/wolfssl/examples/benchmark/tls_bench+0x50f277)
>     #2 0x4dfa52  (/wolfssl/examples/benchmark/tls_bench+0x4dfa52)
>
> Thread T2 created by T0 here:
>     #0 0x435490  (/wolfssl/examples/benchmark/tls_bench+0x435490)
>     #1 0x50cbf5  (/wolfssl/examples/benchmark/tls_bench+0x50cbf5)
>     #2 0x5101d0  (/wolfssl/examples/benchmark/tls_bench+0x5101d0)
>     #3 0x7fef239b1b96  (/lib/x86_64-linux-gnu/libc.so.6+0x21b96)
>
> SUMMARY: AddressSanitizer: heap-buffer-overflow
> (/wolfssl/examples/benchmark/tls_bench+0x50ff15)
> Shadow bytes around the buggy address:
>   0x0c327fff8040: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>   0x0c327fff8050: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>   0x0c327fff8060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>   0x0c327fff8070: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>   0x0c327fff8080: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> =3D>0x0c327fff8090:[fa]fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c327fff80a0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c327fff80b0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c327fff80c0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c327fff80d0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c327fff80e0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
> Shadow byte legend (one shadow byte represents 8 application bytes):
>   Addressable:           00
>   Partially addressable: 01 02 03 04 05 06 07
>   Heap left redzone:       fa
>   Freed heap region:       fd
>   Stack left redzone:      f1
>   Stack mid redzone:       f2
>   Stack right redzone:     f3
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
> =3D=3D4088=3D=3DABORTING
>
> References:
> https://github.com/wolfSSL/wolfssl
> https://github.com/wolfSSL/wolfssl/issues/2032
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-6439
>
>
> Thank you
> @mishradhiraj_



--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg
