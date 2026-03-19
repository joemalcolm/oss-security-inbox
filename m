Received: (qmail 22452 invoked by uid 550); 19 Mar 2026 17:29:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21990 invoked from network); 19 Mar 2026 17:10:20 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1773940210; cv=none;
        d=google.com; s=arc-20240605;
        b=eNHmmMupypwbBnEhQfLXtasdUklhqV61DOhnFiDRvYNjM17f+dRFoqrbddsVaP6KiU
         /JmM1bGOqKd0dhwcQlYcpWFW+2ojKGMO9NrdW1TfsX3i3QpmZhgvXKusRqVjGCDZEqPU
         cMIwxCCxlXCBtDny/csqnp59NEEGQzdAG7ONxhICrrn0D4yyxfV86savTsiuGugC2RzO
         qqXeQrbHePp/kpSkLOa/ammqWcuTnLffck8+vdkUpK4GCGszhiiiVqO1gHuLdkU7tL5I
         3zC8Xc/YaJRPZ9ZHujo0RE5uErzco5wcCxMWANAI9uDDPY1L8/w4jtNKDOQy4ggLBpN0
         Dktw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wINTWPr82odmQzaE33VcWhhCdjvZiYV8lpUUpca2xGY=;
        fh=lHnjcHyX0RTrm3XlASrpZiiWNs9SHX9ebMEjEdUNJFk=;
        b=iVCDojz9PlEy494fHFlZcU6jsQmKPSNeE7/EaZ3Jdx4LJVPxhOKn0SVcnBauMv3SQn
         nV1LkF5AfB92nztWNXA14FYeF4wK422KW4fPsijXu+wWUZpWcxk6YjiyVF4cxV5J6IkR
         W4Iocgue/ZjIxEwaMOfa5RJO/IVaFCX4SIlnDNPh7+uDjblks8/v49D8OlhKPGHd1l/B
         7p0I9jpBshex8wZ3qGy/bmvPCOiEayaf+sFvVvI/v/5lU1FKNhs3wk3yXukgIPmvi1+z
         HVVGWvEn9HfkS1duYV4uKfvqpBpW12ThZKmbwgPEPP5tu6Lja0RtA1uJo1c3U9M0P2yK
         TOFA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773940210; x=1774545010; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wINTWPr82odmQzaE33VcWhhCdjvZiYV8lpUUpca2xGY=;
        b=M77PdeTgztQcwrzjJJ0SNzSBNEUonJRDSceuaSigtzyaJyRlhZYN9e7F7+pBqXIegD
         TgcOKraY/6Q8pIY7XRiTcyAOxhU0B8emnbx5W3E9bTb4JcpD7YeXlmMbVbkb+HQ9fpKi
         LhGxSFqWSaFoVKLrnvvAW8zjZwMLwc7DWto0TNS2++K/B5dTTYpt4fydTbqQYMoYLtkP
         dL0U2/DkqmGFUqSOtBxfVDgCe3yF8oE6eQGb4xJosiPs+MIOhtN/Eas/2dqoXWlzdjAs
         u6ez3OiXGWHKtgW9P7vxe2yiPZE0JJS+ksxMmJZFa0oXzZFLj0qWvxpjzJFlGdI1bZgL
         UCpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773940210; x=1774545010;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wINTWPr82odmQzaE33VcWhhCdjvZiYV8lpUUpca2xGY=;
        b=ZT2PzKvVjGvQKhLgwvZAGhs4aX1Qzxoo1EnVoa3EAVk1gM8NBpnxASL0hY7WO7A1hZ
         GcFT1YF5XQIiOimQ5moJNJ5Mbnj/J8P3Ve8ZQBEO4mwajdkoJhGqOS9SW5YesYRPzcvf
         JzkSVaQlp6kCvKsitDbfE0KFHAEmX6w/YGLlXi03XO7FEY2mrv+LyZzkuuf/w3gNYCkH
         vqVgSTUmBZR/kV0saOonf5DnDW9IWanCU/vKWEe9LCObseeBaZNhBcjgYEryEIL+SAEt
         9+5uVOVkmTnHh15t1p2//onCHrLy8ltuT7GrFH6LAM3j1MUyJXm7UmoVWHMpzTN2gKSE
         zGBg==
X-Gm-Message-State: AOJu0YwjA8DbMcythibrXhM09gpcpYy5LyFmGK3btr0lovjy1bTTzl9F
	GjWkV2fPRdB16BZpj5+m6y4N4eAeeWjUJiO7A2L/Jb2VLWVJLCsAXRSkRzE6bC9sOisybpliPm/
	WgmzYsXIG82reEKrC0ODb8gZmpPTjLKsPggZK
X-Gm-Gg: ATEYQzzoVZAzMBZmE292RWiHMFJAoQ508b2HuKt8YaG0Czn87RghPQH0Eu1/cIthJyV
	Ngl6l87zdv5MbWJhVRvqN/re6iwXuGQV4AZ9IJWkyJJkHPkvJ+Now7fLmUw6TsHcaJUBzIZZeUL
	8+zm/k+Z4UZxM01l960sk5R2oc1+P5BqGaK7+1oYjxaOuAQ9dttlp4r7vjj21JjhAeMWTQ5hB5D
	+XbcL09RTnIdM7OHHBfg4wOGX/KfIPa6NqddSPMXWoaE2/itA3hFunnXZCXM7L/AcGh/OK7gLNQ
	IX7A/DrXCQxBPcDF
X-Received: by 2002:a05:7300:d517:b0:2bd:db75:c28b with SMTP id
 5a478bee46e88-2c1097ce7a6mr29829eec.7.1773940210110; Thu, 19 Mar 2026
 10:10:10 -0700 (PDT)
MIME-Version: 1.0
References: <CALrEReYUaSySTPo_N1qYv3ah_4MGf-sCTZbEEm6dkuVcHGtNVA@mail.gmail.com>
 <CALrERead3gyi7riXr8e_2B=Gs-NhAZRJKNWESF=nvaFD_FqcEg@mail.gmail.com> <CALrERebqPxOswzE41Xyn97KLmMkGs+E2TYzdBhN8xHVe9LpbhA@mail.gmail.com>
In-Reply-To: <CALrERebqPxOswzE41Xyn97KLmMkGs+E2TYzdBhN8xHVe9LpbhA@mail.gmail.com>
From: Ali Raza <elirazamumtaz@gmail.com>
Date: Thu, 19 Mar 2026 22:09:58 +0500
X-Gm-Features: AaiRm53UTpb0U361mOZ1QpRy_SRLOYqdXAnBhKmC6p75l75nu7nkCMKKldrpMyc
Message-ID: <CALrEReZGS86TGNLY8MAfskakDgV_=gmeHZDSiwb-U3XTrmoaEg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: s@saghul.net, info@bnoordhuis.nl, GitHub <security-advisories@github.com>
Content-Type: multipart/alternative; boundary="000000000000139418064d63a445"
Subject: [oss-security] Re: Off-by-one heap buffer overflow in libuv

--000000000000139418064d63a445
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

When I requested that my report be published and asked for a CVE for this
vulnerability, the maintainers (CC) closed my advisory report, saying:
> =E2=80=9CA zero byte is written past the end of the buffer, right? There=
=E2=80=99s not
much attack surface there since it=E2=80=99s in the TTY code. Users don=E2=
=80=99t regularly
pwn themselves, one would hope.=E2=80=9D

But I am still in favor as it's still a genuine heap buffer overflow: the
NUL byte lands one past the allocated region, which can corrupt heap
metadata or an adjacent allocation's first byte. In the right conditions
(e.g., an application embedding libuv that reads TTY input into a buffer
sized divisible by 3), this could lead to heap corruption. Low severity for
sure, but it's a real out-of-bounds write rather than a theoretical one and
the PoC confirms it reliably on every run.
Even CWE-193 (off-by-one) with a NUL byte has been assigned CVEs in similar
libraries before.

On Thu, 19 Mar 2026 at 21:56, Ali Raza <elirazamumtaz@gmail.com> wrote:

> It got patched and merged via this PR
> https://github.com/libuv/libuv/commit/ec0ab5d77d32d836a60b024fa43d54ed3ce=
3ce87
>
> Best,
>
> Ali Raza (@locus-x64)
>
> On Thu, 19 Mar 2026 at 21:48, Ali Raza <elirazamumtaz@gmail.com> wrote:
>
>> ### PoC
>>
>> Tested on Windows 10 22H2 x64, Visual Studio 2022 Build Tools, libuv v1.x
>> HEAD.
>>
>> This is a detection-only PoC =E2=80=94 it places a canary byte after the=
 buffer
>> and checks if the NUL overwrites it. No exploitation attempted.
>>
>> **1. Build libuv:**
>>
>> ```cmd
>> git clone https://github.com/libuv/libuv.git
>> cd libuv && git checkout v1.x
>> mkdir build && cd build
>> cmake .. -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=3DRelease
>> -DBUILD_TESTING=3DOFF -DLIBUV_BUILD_SHARED=3DOFF
>> nmake
>> cd ..
>> ```
>>
>> **2. Save as `poc\poc.c`:**
>>
>> ```c
>> #include <stdio.h>
>> #include <stdlib.h>
>> #include <string.h>
>> #include <stdint.h>
>> #include "uv.h"
>>
>> #define CJK_CHAR 0x4E2D  /* U+4E2D (=E4=B8=AD) =E2=80=94 3 UTF-8 bytes */
>>
>> static int test_overflow(size_t buf_size) {
>>   size_t num_chars =3D buf_size / 3;
>>   char *mem =3D (char *)malloc(buf_size + 16);
>>   uint16_t *utf16 =3D (uint16_t *)malloc(num_chars * sizeof(uint16_t));
>>   char *target;
>>   size_t target_len;
>>   unsigned char canary;
>>   int rc;
>>
>>   if (!mem || !utf16) { free(mem); free(utf16); return -1; }
>>
>>   memset(mem, 0xAA, buf_size + 16);
>>   for (size_t i =3D 0; i < num_chars; i++)
>>     utf16[i] =3D CJK_CHAR;
>>
>>   target =3D mem;
>>   target_len =3D buf_size;  /* reproduces the tty.c:558 pattern =E2=80=
=94 no -1 */
>>   rc =3D uv_utf16_to_wtf8(utf16, (ssize_t)num_chars, &target, &target_le=
n);
>>   canary =3D (unsigned char)mem[buf_size];
>>
>>   printf("  buf=3D%-5zu chars=3D%-4zu rc=3D%-3d byte_after=3D0x%02X %s\n=
",
>>          buf_size, num_chars, rc, canary,
>>          canary =3D=3D 0x00 ? "OVERFLOW" : "ok");
>>
>>   free(utf16);
>>   free(mem);
>>   return canary =3D=3D 0x00 ? 1 : 0;
>> }
>>
>> int main(void) {
>>   size_t sizes[] =3D {48, 96, 192, 384, 768, 1536, 3072, 6144};
>>   int n =3D sizeof(sizes) / sizeof(sizes[0]);
>>   int hits =3D 0;
>>
>>   printf("=3D=3D=3D uv_utf16_to_wtf8() off-by-one PoC =3D=3D=3D\n\n");
>>   printf("Test: buffer sizes divisible by 3 (should overflow):\n");
>>   for (int i =3D 0; i < n; i++)
>>     hits +=3D test_overflow(sizes[i]);
>>
>>   printf("\nControl: buffer size NOT divisible by 3:\n");
>>   test_overflow(100);
>>
>>   printf("\n%s: %d/%d overflows detected\n",
>>          hits > 0 ? "VULNERABLE" : "NOT VULNERABLE", hits, n);
>>   return hits > 0 ? 1 : 0;
>> }
>> ```
>>
>> **3. Compile and run (from x64 Native Tools Command Prompt for VS 2022):=
**
>>
>> ```cmd
>> mkdir poc && cd poc
>> cl /nologo /W3 /MD poc.c /I ..\include /link /LIBPATH:..\build libuv.lib
>> advapi32.lib iphlpapi.lib psapi.lib shell32.lib user32.lib userenv.lib
>> ws2_32.lib dbghelp.lib ole32.lib uuid.lib
>> poc.exe
>> ```
>>
>> **Output:**
>> SS Attached
>>
>> ### Impact
>>
>> Out-of-bounds heap write (1 NUL byte) triggered by console input on
>> Windows. The practical impact depends on heap layout and allocator behav=
ior
>> in the consuming application. Any Windows application using libuv's TTY
>> line reading with a read buffer size divisible by 3 is affected. Versions
>> v1.47.0 through current v1.x HEAD.
>>
>> Best,
>>
>> Ali Raza (@locus-x64)
>>
>> On Thu, 19 Mar 2026 at 21:45, Ali Raza <elirazamumtaz@gmail.com> wrote:
>>
>>> Last few days ago I found an off-by-one heap buffer overflow in libuv.
>>> Off-by-one NUL write past a heap buffer in `uv_utf16_to_wtf8()` when
>>> called from the Windows TTY line-read path. When a user types or pastes=
 CJK
>>> characters into a Windows console application backed by libuv, a 1-byte
>>> out-of-bounds NUL write occurs if the read buffer size is divisible by =
3.
>>>
>>> I found this while reading through the TTY code. `uv_utf16_to_wtf8()` in
>>> src/idna.c unconditionally writes a NUL terminator at:
>>> ```c
>>> *target++ =3D '\0';   // idna.c:550 -- writes at target[target_len] when
>>> buffer is full
>>> ```
>>>
>>> The function's own comment says `*target_len_ptr` should be the length
>>> _excluding_ space for NUL. Two callers in util.c handle this correctly:
>>> ```c
>>> utf8_len =3D *size_ptr - 1; /* Reserve space for NUL */    // util.c:126
>>> *size -=3D 1; /* Reserve space for NUL. */                   // util.c:=
1121
>>> ```
>>>
>>> But the TTY line-read path passes the full buffer size without the
>>> subtraction:
>>> ```c
>>> read_bytes =3D bytes;    // tty.c:558 =E2=80=94 should be bytes - 1
>>> uv_utf16_to_wtf8(utf16, read_chars,
>>>                  &handle->tty.rd.read_line_buffer.base,
>>>                  &read_bytes);
>>> ```
>>>
>>> The overflow happens when all the input characters encode to exactly 3
>>> UTF-8 bytes each (BMP characters in U+0800=E2=80=93U+FFFF range, like C=
JK
>>> ideographs). The TTY code computes `chars =3D bytes / 3` (tty.c:540), s=
o when
>>> `bytes % 3 =3D=3D 0`, the worst-case output `chars * 3` equals `bytes` =
exactly,
>>> and the NUL terminator writes one byte past the buffer.
>>>
>>> The buffer size comes from the application's `alloc_cb`. libuv suggests
>>> 8192 (not divisible by 3), but any application returning a size that's
>>> divisible by 3 hits this.
>>>
>>> Introduced in v1.47.0 (commit f3889085, PR #4021), still present on v1.x
>>> HEAD.
>>>
>>>
>>> Best
>>>
>>> Ali Raza (@locus-x64)
>>>
>>

--000000000000139418064d63a445--
