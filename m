Received: (qmail 10073 invoked by uid 550); 1 Jul 2024 20:46:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10055 invoked from network); 1 Jul 2024 20:46:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grsecurity.net; s=grsec; t=1719866804; x=1720471604; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:to:subject:from:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g55mXK5DEPN5Lcxy0MhGQzDFOQhSzsWajbRdh8nqCsU=;
        b=S96BBCOiF8z+2+2+wL5Zi4gHAUccsy8ByJwVxpVkfvwMEE+LoljBtAO2k+pkh73VV6
         VDpd+GPNIO+69BBzeAt2JvLdYOD+2jOX7ykUkuyK/FMZBA+wdmGBokXBKqjZlG6jjokl
         1dBk7Qwvnw/de+NobnC6rq0HGy1eJRaWtaHh1xoNA26dEnewIi7oMzOLnhtGEE+8CPXi
         ZTtVMTV6Bn2ZUVGHVOiRWCtb+weMCSQ07JN4+DRrLZ/Wgkx7s8YFK5qeZHP9yb4UwwCV
         E+Twgmf/2CqB1AYRBxJ11uGyvp+03TpTnbHJ5mLc3p+U4injEIzNix31INXeBwly7iLe
         ka2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719866804; x=1720471604;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g55mXK5DEPN5Lcxy0MhGQzDFOQhSzsWajbRdh8nqCsU=;
        b=hwR76QActZGb0tAUZhj13AL8AyNNF7ijdN1iJJqt9wzw94kgCa52zOw9rzQmJXfgaa
         h0h/0GjsITVDMA16ZrrbA17UJHKgLWPAiTHwYXber4+jigOIMSNCi43oCGLL9HQh+V5v
         GTzZnD1T1sqpiwLUg8HsAJeGPoHDOzhMzk2FRbyftaHuxl3Yirdo3hNxg+vcjidCCs3O
         MuPhweQqpyvFNHQIgxwKRRhy0uCcAiH3YoEw61geLvErwGQA7MXAnFNerLyN/R903ZRh
         zEzq0GEiK98m4v6rc/AhhUexWHlkqfdBWDSeHvDHlJwWNYgJ5al8X2FxqNeEU9cUf9P0
         f40g==
X-Gm-Message-State: AOJu0YzURrqTNZois7fIrKluSzeyisWbk2JnO/ilfOZC/JAnT3XUY432
	Gavyp4gGbNlfAm5SyIwUtkBa5/Bv4UsbrUAiIZ3lVUk9P6aKW5Gw4Mqnk5vJknSlPPKwOTcNbnE
	Q
X-Google-Smtp-Source: AGHT+IH4XJ2zlnDtiUA6hxgzqDixIMfJ/GD09LEFjLk2IcEu0rzdJOQaQssUB/7kvKTnTMI8L4fjuw==
X-Received: by 2002:a05:600c:5115:b0:421:7f30:7cf2 with SMTP id 5b1f17b1804b1-4257a021450mr42952105e9.1.1719866804122;
        Mon, 01 Jul 2024 13:46:44 -0700 (PDT)
Message-ID: <aef747a9-2ed5-44f6-9f10-d045566aa18c@grsecurity.net>
Date: Mon, 1 Jul 2024 22:46:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Mathias Krause <minipli@grsecurity.net>
To: oss-security@lists.openwall.com
References: <20240701083838.GA12787@localhost.localdomain>
 <48e4430f-72b7-4a5c-a4c5-a8fca4094c62@dustri.org>
Content-Language: en-US, de-DE
Autocrypt: addr=minipli@grsecurity.net; keydata=
 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
 RzDVkdgPJkL/NFTKZHo5foFXNi89kA==
In-Reply-To: <48e4430f-72b7-4a5c-a4c5-a8fca4094c62@dustri.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on
 glibc-based Linux systems

On 01.07.24 17:36, jvoisin wrote:
> [...]
> I gave a cursory look at the musl libc (https://musl.libc.org/) with the
> help of the lovely #musl people, and it doesn't seem to be affected:
> 
> - Its syslog implementation (
> https://git.musl-libc.org/cgit/musl/tree/src/misc/syslog.c ) doesn't
> seem to (sub)call async-signal-unsafe functions.

Just wanted to provide some comment on the below, as there still seem to
be misunderstandings related to what kernel and userland bugs / features
lead to reduced ASLR. Focusing solely on the thp_get_unmapped_area()
kernel related one isn't sufficient -- especially when we're looking at
old distros, as the Qualys folks did.

> - Thanks to its small size, it's not affected by ALSRn't.

As pointed out in the blog[1], file size is far from the only factor to
weaken ASLR. Userland bugs -- pardon me, "features" -- make the kernel
play the devils advocate. And Alpine Linux at least from v2.6 (back then
still making use of uClibc) up to v3.8 fell for the binutils trap:

~ # cat /etc/alpine-release
3.8.5
~ # ./paxtest/contrib/check_align.sh /lib/libc* /usr/sbin/sshd
/lib/libc.musl-x86_64.so.1 (max align=0x200000)
/lib/libcrypto.so.43 (max align=0x200000)
/lib/libcrypto.so.43.0.1 (max align=0x200000)
/usr/sbin/sshd (max align=0x200000)
~ #

Fortunately (-- a bug?, a feature?) does musl's runtime linker ignore
alignment requirements of loaded DSOs and so it's only the behaviour of
recent'ish kernels (v5.10+) that will make sure the program interpreter
-- which also happens to be musl's libc, oh well -- and the binary's
PT_LOAD segments get properly aligned and their ASLR bits reduced
accordingly.

Oh, well... But sure, Alpine Linux 3.8 is out of support for 4+ years by
now. Nobody should be affected by any of this any more, less so run it
on recent kernels.

Cheers,
Mathias

[1] https://grsecurity.net/toolchain_necromancy_past_mistakes_haunting_aslr
