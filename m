Received: (qmail 22199 invoked by uid 550); 26 Sep 2023 18:35:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16207 invoked from network); 26 Sep 2023 17:16:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=citrix.com; s=google; t=1695748583; x=1696353383; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=mdmafulyYir0v8F63reNxH6A8CxMkGvtJ/FAgnTQ4hQ=;
        b=V/0ZccK0R7PK1iCXnKZ741odwu5QZtdvKOaj63tRmt5PMrr6UsXQEVedKV7y/KgUFv
         ut0CNRDpmM72Y4/5xsnzQsz1A8ZlgGpOEK2A7puQ15XcmZQj+JkoskQFILfpCgdFvs2n
         0aRRUG4F5j5WQIYhCAxgw1fH64/65K5GakENc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695748583; x=1696353383;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mdmafulyYir0v8F63reNxH6A8CxMkGvtJ/FAgnTQ4hQ=;
        b=Gcfv2Ecmq4a1GalxT3Z1jl+LMDcIW/MdiV+nL+kMdCF9vToRFlvnCl0fvOSHI8lU8n
         F9PbknIWAol4D88qy+v6xfNB6gqldKbuA8LjHaPldn5aljHrRQuo1tDXtN51YWXAlfzJ
         1c36AAp6NNQtgrQzc53CNGtGvzMY0/TObOAofNivTQx8+6js3726O+45REiZvj7tPish
         R4p495pZedGncfNvc1UfjqiWxlctUMvfYup8x7Tw1NTUCUUJSHOstDtfwcGs2/BcgNyc
         NDH6pNN4LDbtDAL4CbLQBfetQrCZIP47V01l26S+bU2CSUOvK7rO3znM0GpIRl/U6BRq
         rfGg==
X-Gm-Message-State: AOJu0Yx9M82MolOqzef1DA+4Pug5FnDwmmC0SL6LJ5ElcMTvqXiviCH3
	Z1mZZDzSlqVE7ArqjMDZQiR68W05isEsjtADhF0=
X-Google-Smtp-Source: AGHT+IFNtDFnNKvcohLpbW1NfNgCQN4G5R3Tsj7ehNrAwRcFVqc0L1+1HVuYEuXGlXaCf6YW9V4BEg==
X-Received: by 2002:a5d:414d:0:b0:31f:eb8d:481f with SMTP id c13-20020a5d414d000000b0031feb8d481fmr8789043wrq.29.1695748583324;
        Tue, 26 Sep 2023 10:16:23 -0700 (PDT)
Message-ID: <3df9034c-6fab-141c-ad69-ce00df0b81f9@citrix.com>
Date: Tue, 26 Sep 2023 18:16:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Andrew Cooper <andrew.cooper3@citrix.com>
Content-Language: en-GB
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,
 "Xen. org security team" <security-team-members@xen.org>
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org>
 <20230925163652.GA6750@openwall.com>
 <70e568d7-9e09-a1a9-030f-40473447a619@citrix.com>
 <20230925182834.GA8247@openwall.com>
 <3241bf87-b01b-4b65-e972-f0cede9e1855@citrix.com>
 <20230926160943.GA12790@openwall.com>
In-Reply-To: <20230926160943.GA12790@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) -
 x86/AMD: Divide speculative information leak

On 26/09/2023 5:09 pm, Solar Designer wrote:
> On Tue, Sep 26, 2023 at 01:15:55AM +0100, Andrew Cooper wrote:
>> On 25/09/2023 7:28 pm, Solar Designer wrote:
>>> Maybe directly probing for the bug is an option?  Perhaps can be done
>>> within one thread (where the bug doesn't have security impact, but is
>>> detectable anyway, no)?
>> Unfortunately, direct probing is usually the wrong thing to rely on.
>>
>> Under virt, one common scenario is that you boot on one system, then get
>> migrated to a different one.  Obviously, it's up to the hypervisor to
>> ensure that the architectural feature still match, but the
>> microarchitecture really does change.
>>
>> If you probe at boot and positively identify an issue to work around,
>> great.  But as a VM you may not get a heads up that you changed
>> microarchitecture, and even if you do, you don't rescan for everything
>> you ran at boot.
>>
>> The CPUID bits allow microarchitectural details to be expressed as
>> architectural, and allow a hypervisor to state "here or someone you
>> might move to, the following safety property does not hold."
> I was thinking re-probing after possible VM migration, just like you
> would presumably retest a CPUID bit.

I did enquire about this, but the Linux maintainers and Microsoft were
distinctly unreceptive to the idea.  Not that I blame them - it's hard
enough to do late microcode loading, livepatching and activation of new
safety properties when the uarch isn't moving underfoot.

> However, in this case probing can
> lead to false negatives if the other thread issues a DIV too or an
> unexpected context switch occurs.

Yes, many things become racy under virt, hence why we try our best to
stick to architecturally enumerated properties.

>>> Do you know if only the quotient leaks, or also the remainder?  In the
>>> below, I assume the remainder leaks as well.
>> I'm afraid I don't know.  The original paper says just the quotient, but
>> it also says there are no leaks across privilege boundaries.
> Is the original paper public?

https://www.usenix.org/system/files/usenixsecurity23-hofmann.pdf

Section 8.2.1 for the results specific to divides.

> Meanwhile, I observe a difference between Linux and Xen fixes - Linux
> uses native-sized DIV and you use byte-sized, as a clever way not to
> clobber RDX and maybe achieve lower latency.  Speaking of which:
>
> $ git clone https://github.com/InstLatx64/InstLatx64
> $ grep -r ': DIV .* 0/' InstLatx64/AuthenticAMD/*_Zen_*.txt
> InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  409 X86   : DIV r8  0/ 8b                 L: [no true dep.]   T:   4.14ns= 13.00c
> InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  413 X86   : DIV r8  0/ 4b                 L: [no true dep.]   T:   4.13ns= 13.00c
> InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  422 X86   : DIV r16  0/16b                L: [no true dep.]   T:   4.45ns= 14.00c
> InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  426 X86   : DIV r16  0/ 8b                L: [no true dep.]   T:   4.45ns= 14.00c
> InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  435 X86   : DIV r32  0/32b                L: [no true dep.]   T:   4.45ns= 14.00c
> InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  439 X86   : DIV r32  0/16b                L: [no true dep.]   T:   4.45ns= 14.00c
> InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  449 AMD64 : DIV r64  0/64b                L: [no true dep.]   T:   4.45ns= 14.00c
> InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  453 AMD64 : DIV r64  0/32b                L: [no true dep.]   T:   4.45ns= 14.00c
>
> Looks like maybe not that much difference, after all, if this data applies.

Agner Fogh's manuals have a little more information, and importantly
give the upper bound which tops out at 47 cycles.

There is at least a 1 cycle change in latency between the byte and
non-byte forms, which I suspect is down to the non-byte forms needing to
consume an extra input register before starting.

But the main reason for choosing the byte form is indeed fewer moving
parts to worry about in the critical sections, where one wrong
instruction can render all protections moot.

> Thank you for sharing so much detail and thoughts on this, Andrew!

You're welcome.

~Andrew
