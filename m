Received: (qmail 26513 invoked by uid 550); 19 Mar 2026 17:02:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28658 invoked from network); 19 Mar 2026 16:56:51 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1773939401; cv=none;
        d=google.com; s=arc-20240605;
        b=ZHYzdH7D+c5OXRtl+opy2q4+0SFF0Ve2PclWJOyEIPL5zHxSHdZzBvk6a/MAdMSAdC
         y5NNY64hd9qx08cB8GPyLtSq0vaZaEjWehIabcKwxTSC76LEY2nuZ756gNzFOKYIm7YT
         6n0/ESpYx088Dt4JBNiJupO8AJZIEY6bIQqBfrDz+KsQkYDlA5mjLrmzPaBBHGUAkYQ/
         M/F0tUTs9aVXrGXlCuluFNyw1h0jTey6yDFnKFQX3oC8D3TXS06UCZSc59pkqIG23nWK
         JsNkPuUeyC9h8J9jFJy/Y95oUFcKokffO2rCQn/gHzbdaFFhdDb6YNWrLqgr6pcVEosd
         S8Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=8ysKkV2S23ljlY/L+rNb7VRz5FMQlvAqL1/VPdCcJVI=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=R7LlZuJRKWx/yJo0y4fxFaRiPhLjTGPyaNMs3wpfDH+N55QEEGoZLHSqPnWgLjQuwb
         r3BOjM4G9dJ2w5NEsp8ExCo4fWukJs8d9P8OTOkkLrsHFRkeTZ8znZC7fxlHkvRNqKg/
         ZQnnCb0jWVg82+aAMgDhab/7FvUm20hotmX3UoftwC/WNXP/ljayu4h3Qu7JC74S2ztP
         Yh8Q88Oyic6jnE/gyjrocV7yN1xJBZT3N2R6phSAqpsRWSMufRhh8uax/zdvnfSArTjB
         iYUVVTBLu8QH968NWNsraMYRFrVvBvIHTWXTeW4z3MlgDHCj1/OoFleFXZNpcsfyTqb7
         /C9w==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773939401; x=1774544201; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ysKkV2S23ljlY/L+rNb7VRz5FMQlvAqL1/VPdCcJVI=;
        b=QHs8pLlGqwfzuoQFHL0Rund47qkr+GFeDBFcRnL3amWDBEFk4ncAeNKBgJfm83eLar
         /Vh6KQictSUiVsddEXJfKTQ9vjqmcMggR+gomxVZEKyRLIWG+Pp4F49+1Dz1WhT5vvR9
         mSQSK/alw3Z7WB3w26LC/6BU4FnXiT/QvqPTvwzbj0yhddwUjOrnOBbifYrUjQo76VC1
         e4wBA4Dj2UA/3+k5S8swXQ0cEPCpTL7luO5UoeUJ9z1+YXgvLAoVcvnnVFNIP9ELn4Yl
         G16KzJobthuD+o9mZ7ZHcUoQc5g/SZfZ+s7wwq5VLHzDvg6P5Jz0whDHBxJJa1ufQA4L
         TkyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773939401; x=1774544201;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ysKkV2S23ljlY/L+rNb7VRz5FMQlvAqL1/VPdCcJVI=;
        b=Yge3qonFQBMGh82PgRXludeHzDbq7BrcGoVX9VUW5h+/tClfNzblnLGgIv0y12TjLP
         QsP81TM/MuzYpEjppmiWAeWLG447a1FKv0lhu8fQKAGhr03+EAVkWGHZms7B6djaCJ01
         qnW5cwCs821UOT4jwGitaFrSu/cpBgsPAct4LwfKJGHeH9cugQH8Q8IEKurZoOaXvKcj
         kTPdIW5QxU39OTj1hkzlFtI3mSqFRdWz6PuLPgTphu34Qrz22OhP1O0Vemn89zPlQmRx
         bn0/40TRVV4OiwhgN5lcZtX5x3BdgVyMPcrSOEbORiJnQokyp7MAYJpWEU2u6GksG+c/
         ExIA==
X-Gm-Message-State: AOJu0YySVcNwhCnyEbIbR3kqfoX0+M7nqgy5nUfn/bYutg/mJVLXMDiw
	1x2OsCZzJ+Ojkpyen6Fx/TiLWK8lTQAk3NpSU1cykSCRjDRqtwJ96UAV4/1D4KkPJp7xDBBHMyB
	WHRf44NvpLZdhQ90VJaxtlnOi7VPKhhkbtu2Y
X-Gm-Gg: ATEYQzwXJPpPGbyqZbLWU99ymDD3YIhA86kTjzMiQbX1w/z8WXqSJE3T8ft/gfyEuJz
	Ot+KyL1vsQ/+uuT6Lg/DPrQ+L6QKC8MLIeVHCg1i4s8k4icpAlgXfKdDThG3axe/W29HvA7n3nR
	Y5SgC3Rat4AcQV6wvdBKN7Cpl9TMVHRjkqLvZxb9OhqR7mnJQ9nsJndnM80qyPW7VPq8X/AYydu
	oK3kanGJYDrEnYs5fK4+DbEGKdSvI7Sb3YnhLNXIxm2aq2ndxK8FfWI/1STFaW8ZdjTt5KpJXm0
	0fG2WA==
X-Received: by 2002:a05:7301:9f06:b0:2ba:7d5a:a816 with SMTP id
 5a478bee46e88-2c1096d8e1fmr18898eec.4.1773939401249; Thu, 19 Mar 2026
 09:56:41 -0700 (PDT)
MIME-Version: 1.0
References: <CALrEReYUaSySTPo_N1qYv3ah_4MGf-sCTZbEEm6dkuVcHGtNVA@mail.gmail.com>
 <CALrERead3gyi7riXr8e_2B=Gs-NhAZRJKNWESF=nvaFD_FqcEg@mail.gmail.com>
In-Reply-To: <CALrERead3gyi7riXr8e_2B=Gs-NhAZRJKNWESF=nvaFD_FqcEg@mail.gmail.com>
From: Ali Raza <elirazamumtaz@gmail.com>
Date: Thu, 19 Mar 2026 21:56:28 +0500
X-Gm-Features: AaiRm53QqTZ2BladRzdc4rgTk63FIdu_wh0K5oq_9-pLytPbfmnGvJ34aLDzKPo
Message-ID: <CALrERebqPxOswzE41Xyn97KLmMkGs+E2TYzdBhN8xHVe9LpbhA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000dd573e064d63738a"
Subject: [oss-security] Re: Off-by-one heap buffer overflow in libuv

--000000000000dd573e064d63738a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It got patched and merged via this PR
https://github.com/libuv/libuv/commit/ec0ab5d77d32d836a60b024fa43d54ed3ce3c=
e87

Best,

Ali Raza (@locus-x64)

On Thu, 19 Mar 2026 at 21:48, Ali Raza <elirazamumtaz@gmail.com> wrote:

> ### PoC
>
> Tested on Windows 10 22H2 x64, Visual Studio 2022 Build Tools, libuv v1.x
> HEAD.
>
> This is a detection-only PoC =E2=80=94 it places a canary byte after the =
buffer
> and checks if the NUL overwrites it. No exploitation attempted.
>
> **1. Build libuv:**
>
> ```cmd
> git clone https://github.com/libuv/libuv.git
> cd libuv && git checkout v1.x
> mkdir build && cd build
> cmake .. -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=3DRelease
> -DBUILD_TESTING=3DOFF -DLIBUV_BUILD_SHARED=3DOFF
> nmake
> cd ..
> ```
>
> **2. Save as `poc\poc.c`:**
>
> ```c
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <stdint.h>
> #include "uv.h"
>
> #define CJK_CHAR 0x4E2D  /* U+4E2D (=E4=B8=AD) =E2=80=94 3 UTF-8 bytes */
>
> static int test_overflow(size_t buf_size) {
>   size_t num_chars =3D buf_size / 3;
>   char *mem =3D (char *)malloc(buf_size + 16);
>   uint16_t *utf16 =3D (uint16_t *)malloc(num_chars * sizeof(uint16_t));
>   char *target;
>   size_t target_len;
>   unsigned char canary;
>   int rc;
>
>   if (!mem || !utf16) { free(mem); free(utf16); return -1; }
>
>   memset(mem, 0xAA, buf_size + 16);
>   for (size_t i =3D 0; i < num_chars; i++)
>     utf16[i] =3D CJK_CHAR;
>
>   target =3D mem;
>   target_len =3D buf_size;  /* reproduces the tty.c:558 pattern =E2=80=94=
 no -1 */
>   rc =3D uv_utf16_to_wtf8(utf16, (ssize_t)num_chars, &target, &target_len=
);
>   canary =3D (unsigned char)mem[buf_size];
>
>   printf("  buf=3D%-5zu chars=3D%-4zu rc=3D%-3d byte_after=3D0x%02X %s\n",
>          buf_size, num_chars, rc, canary,
>          canary =3D=3D 0x00 ? "OVERFLOW" : "ok");
>
>   free(utf16);
>   free(mem);
>   return canary =3D=3D 0x00 ? 1 : 0;
> }
>
> int main(void) {
>   size_t sizes[] =3D {48, 96, 192, 384, 768, 1536, 3072, 6144};
>   int n =3D sizeof(sizes) / sizeof(sizes[0]);
>   int hits =3D 0;
>
>   printf("=3D=3D=3D uv_utf16_to_wtf8() off-by-one PoC =3D=3D=3D\n\n");
>   printf("Test: buffer sizes divisible by 3 (should overflow):\n");
>   for (int i =3D 0; i < n; i++)
>     hits +=3D test_overflow(sizes[i]);
>
>   printf("\nControl: buffer size NOT divisible by 3:\n");
>   test_overflow(100);
>
>   printf("\n%s: %d/%d overflows detected\n",
>          hits > 0 ? "VULNERABLE" : "NOT VULNERABLE", hits, n);
>   return hits > 0 ? 1 : 0;
> }
> ```
>
> **3. Compile and run (from x64 Native Tools Command Prompt for VS 2022):**
>
> ```cmd
> mkdir poc && cd poc
> cl /nologo /W3 /MD poc.c /I ..\include /link /LIBPATH:..\build libuv.lib
> advapi32.lib iphlpapi.lib psapi.lib shell32.lib user32.lib userenv.lib
> ws2_32.lib dbghelp.lib ole32.lib uuid.lib
> poc.exe
> ```
>
> **Output:**
> SS Attached
>
> ### Impact
>
> Out-of-bounds heap write (1 NUL byte) triggered by console input on
> Windows. The practical impact depends on heap layout and allocator behavi=
or
> in the consuming application. Any Windows application using libuv's TTY
> line reading with a read buffer size divisible by 3 is affected. Versions
> v1.47.0 through current v1.x HEAD.
>
> Best,
>
> Ali Raza (@locus-x64)
>
> On Thu, 19 Mar 2026 at 21:45, Ali Raza <elirazamumtaz@gmail.com> wrote:
>
>> Last few days ago I found an off-by-one heap buffer overflow in libuv.
>> Off-by-one NUL write past a heap buffer in `uv_utf16_to_wtf8()` when
>> called from the Windows TTY line-read path. When a user types or pastes =
CJK
>> characters into a Windows console application backed by libuv, a 1-byte
>> out-of-bounds NUL write occurs if the read buffer size is divisible by 3.
>>
>> I found this while reading through the TTY code. `uv_utf16_to_wtf8()` in
>> src/idna.c unconditionally writes a NUL terminator at:
>> ```c
>> *target++ =3D '\0';   // idna.c:550 -- writes at target[target_len] when
>> buffer is full
>> ```
>>
>> The function's own comment says `*target_len_ptr` should be the length
>> _excluding_ space for NUL. Two callers in util.c handle this correctly:
>> ```c
>> utf8_len =3D *size_ptr - 1; /* Reserve space for NUL */    // util.c:126
>> *size -=3D 1; /* Reserve space for NUL. */                   // util.c:1=
121
>> ```
>>
>> But the TTY line-read path passes the full buffer size without the
>> subtraction:
>> ```c
>> read_bytes =3D bytes;    // tty.c:558 =E2=80=94 should be bytes - 1
>> uv_utf16_to_wtf8(utf16, read_chars,
>>                  &handle->tty.rd.read_line_buffer.base,
>>                  &read_bytes);
>> ```
>>
>> The overflow happens when all the input characters encode to exactly 3
>> UTF-8 bytes each (BMP characters in U+0800=E2=80=93U+FFFF range, like CJK
>> ideographs). The TTY code computes `chars =3D bytes / 3` (tty.c:540), so=
 when
>> `bytes % 3 =3D=3D 0`, the worst-case output `chars * 3` equals `bytes` e=
xactly,
>> and the NUL terminator writes one byte past the buffer.
>>
>> The buffer size comes from the application's `alloc_cb`. libuv suggests
>> 8192 (not divisible by 3), but any application returning a size that's
>> divisible by 3 hits this.
>>
>> Introduced in v1.47.0 (commit f3889085, PR #4021), still present on v1.x
>> HEAD.
>>
>>
>> Best
>>
>> Ali Raza (@locus-x64)
>>
>

--000000000000dd573e064d63738a--
