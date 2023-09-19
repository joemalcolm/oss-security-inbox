Received: (qmail 24076 invoked by uid 550); 19 Sep 2023 17:31:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9507 invoked from network); 19 Sep 2023 07:48:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1695109678; x=1695714478; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rbvvNBq/hqgUc6CEmcDYMKHy+jEIkC7vBwiLWdwBQdQ=;
        b=iRsuLaM5nyUgq8Wm1yEjezMU2fupD1dp1d57ohEiFBntGJoJLXtdN486h6QcdeC8BD
         rbC3qmQW4ZI1tPTcduKbZiryjgdfcG8FRADsKReRY2reCV6rYcKnbR8JYnIM7K5fjCVK
         b9JXKJpVV+ioVfk8T+1jLlo0mem6w/NKMNtRFITw//uYyLX2SQPFhjp6zdQmdFblYIrj
         nXP1qRNsDtfEzbWd2cWorZEW0Cn2+9RW9lBnk+ni8Rb4eYjtScFnEygfT6wCJiZXluAK
         x5/+bidDP3KstUFtShZMAToeyT0gwdkST0DPH1gbcNID7mbxNekeIk4tHeZcLGHvzXM2
         IGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695109678; x=1695714478;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rbvvNBq/hqgUc6CEmcDYMKHy+jEIkC7vBwiLWdwBQdQ=;
        b=lbw7e6XTYcHCk0lBl9IXwoAl5R466LkQu+XuuYiTbItbJ3ufyyUozYp7jjIuEPPNQZ
         k31zEgrPPucKqqaIjytIvaispY7AbAKgpNhKoVgy9Jgt8C9jMxeWjv3S56ETrZ/YB2pS
         chrJqEHLykBy3+DtRMK2q1nI4y5Odo+bPs1MnWa/aLJ+fG/FVV6wSR3ZVKeu8ZQuVFh3
         /PFLpRO12kjFE/kgGQ46K/1B/TQrcWxBrfPrGPqhzlhSSp6e4zje+j29GkB6+SjvkLlT
         CbEfbZNPzPqOdvMC1txgWJ4rjQABLB7HOaA0/65a9Nv0W9eRv2bhZxsiodgPdU74n3H7
         /wAA==
X-Gm-Message-State: AOJu0YxmPuSJE0dr9eU5UeCk26R04ygVqVG9L5GjYcHe9ahvePUchjRV
	pNpR7d3s7W8n4ef1UPewRYs=
X-Google-Smtp-Source: AGHT+IEhlodweatAg0+bmPrhcoKt8oGIz9gqDRpWkcFrqNZuSb3kv4Zs4s7Q3qV14srqhc2f6DTNSw==
X-Received: by 2002:a05:651c:19ab:b0:2bf:f6b6:6c31 with SMTP id bx43-20020a05651c19ab00b002bff6b66c31mr7441521ljb.41.1695109677369;
        Tue, 19 Sep 2023 00:47:57 -0700 (PDT)
Message-ID: <4de172a2-afc4-24b8-572a-24390fc1a74c@googlemail.com>
Date: Tue, 19 Sep 2023 09:47:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US, de-DE
To: Steve Thompson <susurrus.of.qualia@gmail.com>
References: <CAA0MYJUHngYsTR0miEO31PpMp+TyCgj6ebt9F4b2289SFwy5TQ@mail.gmail.com>
Cc: oss-security@lists.openwall.com
From: Mathias Krause <minipli@googlemail.com>
In-Reply-To: <CAA0MYJUHngYsTR0miEO31PpMp+TyCgj6ebt9F4b2289SFwy5TQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Possible AMD Zen2 CVE

Hi Steve,

On 18.09.23 22:37, Steve Thompson wrote:
> [snip]  In a loop, the following code is found:
> 
>           nr_spin = t1lock_acquire(&obj.lock);
>     #if defined BROKEN
>           temp = ++obj.value;
>     #else
>           ++obj.value;
>     #endif
>           t1lock_release(&obj.lock);
> 
> If "BROKEN" is defined, you can see that an additional cache-line write
> is made with the assignment to 'temp'.  When this code path is enabled,
> the underlying cmpxchg operation in t1lock_acquire() occasionally
> succeeds when it shouldn't...

I think you're misinterpreting the generated binary. Looking only at the
difference in the core loop give us the following diff between good and bad:

$ objdump -wdr --no-show-raw-insn good
[...]
0000000000001580 <wr_thread>:
     ::
    1653:       incq   0x2a4e(%rip)        # 40a8 <obj+0x8>
    165a:       incw   (%rbx)

In 'good' the increment of obj.value at 1653 is followed by the
increment of obj.lock.ticket. Everything looking good so far.

$ objdump -wdr --no-show-raw-insn bad
[...]
0000000000001580 <wr_thread>:
     ::
    1653:       mov    0x2a4e(%rip),%rax        # 40a8 <obj+0x8>
    165a:       incw   (%rbx)
    165d:       inc    %rax
    1660:       mov    %rax,0x2a41(%rip)        # 40a8 <obj+0x8>
    1667:       mov    %rax,0x2a5a(%rip)        # 40c8 <temp>

In 'bad', however, obj.value is incremented only *after* obj.lock.ticket
was incremented and the lock thereby released, allowing further threads
to take it. This allows the data race between the read of obj.value in
1653, its increment in 165d (after the lock was released again) and
writing back the possibly out-of-date value to obj.value at 1660.

What's clear from the above code dump that the code is missing a memory
barrier. Adding it, like the patch at the end of the email does, gives
me the following:

$ objdump -wdr --no-show-raw-insn not_bad
[...]
0000000000001580 <wr_thread>:
     ::
    1653:       mov    0x2a4e(%rip),%rax        # 40a8 <obj+0x8>
    165a:       inc    %rax
    165d:       mov    %rax,0x2a44(%rip)        # 40a8 <obj+0x8>
    1664:       mov    %rax,0x2a5d(%rip)        # 40c8 <temp>
    166b:       incw   (%rbx)

It's basically the same instructions as for 'bad' but the lock release,
i.e. obj.lock.ticket++, was moved after the write operations to 166b,
preventing the data race of 'bad'.

Here's the fix:

--- a/bug_src.c
+++ b/bug_src.c
@@ -91,6 +91,7 @@ typedef struct {

 __inline__ void   t1lock_release(t1lock * oo)
 {
+   __asm__ ("" ::: "memory");
    oo->ticket++;

    return;

The code probably needs more memory barriers to prevent making the
compiler moving reads and writes outside of the critical section. But, I
guess, there are good online resources to read up the requirements, e.g.
what's written for the Linux kernel should be a good start:

 https://www.kernel.org/doc/Documentation/memory-barriers.txt

Cheers,
Mathias
