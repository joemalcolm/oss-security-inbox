Received: (qmail 4041 invoked by uid 550); 17 May 2025 02:58:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17561 invoked from network); 17 May 2025 02:52:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747450342; x=1748055142; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=lz4iSYw3Bd3g9Yxdl0+LD6hwT99TS5KyZ2mOP4Yxxrg=;
        b=bHe4/v0fdBlTE1cYmNNkDQbVAGRntHlPjXLkt+V/wd4ndp38Y22IrAu+AL3IJWBTk/
         hscVkBYhxMBzkPO+d3RUHhOtgkjUwl4uyNFmyZxldqQ2g83F2O9wzEZIaNBtF5dcZhjq
         X+DmCFVldFKKcoVAl2xlpxDej/Qv+A7iTrJPhcb3Z7sqwlVBuflNqu7YA9XN+vQakRlG
         UFlmvvA1pIpSfM+zkEoRTb5jld4DGBZJAwkOmf/qNL9oI6xMVpcJQYTSkOwh0fAGgW/A
         GPRlGd2EuKnROMDfLnHnnXE2wGTYTEMpoH6zJT+2bvmQNcax6yce3txpmYNUXRpa3Nng
         C2+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747450342; x=1748055142;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lz4iSYw3Bd3g9Yxdl0+LD6hwT99TS5KyZ2mOP4Yxxrg=;
        b=xFeH7oaNlhR8US79VhQC7to4tigndwMJlXTQvgYmTa9DgdLxwSzdEawU/aiTrqpz1P
         3uQvgI2sVZ7lxOQqrrpA9lx0yiQweirLpOjtXE5OF+btjQV1YwOvRpf9rW9wPxSBFzdh
         CWGchE2i7MKKurXETj5wNNWvrBFVS3JHudM/OWIR2wxWYtm5v4FxU+ckzmRt3dodi+mZ
         eQomV5/p5zj0PWKeAK/mNKrSNrj/EVEpDnXmjWlSgAk3g+PNEvrILcCDaM2vAFF+Uqii
         aIVf4QTWu/aYZXewF8IFiihHDCr7hE/r8y6tqL38MQoQmCqtTHq5hwa6ZlbHe9knM92+
         TXcA==
X-Gm-Message-State: AOJu0YzE41wETm/GQuaRVDgZAPxZ4xkVOGnxOxDNYhXOHiJvBFyakGrh
	Bm0y6a0aYddho07Q01AVc4zPbNyDVXzE5UE01XxkayBPY3MCw9/HsnklWyVTbA==
X-Gm-Gg: ASbGncvwDQczHWGTnbiWNnUlKNNRV7Mh4j0rxN1ylyItvlFItlAR5z6xw3ajNwR9i0R
	7670OOLpPvvrLuWImncmpTZlXAKlQDSPqtLQcUJIKxPduJO8nNGZ5qUldqZiESv2XrbFAZTNogJ
	Ud6Y0RMPGFlpVzD4MAn+A1H03UvJcgrtbTsFzVzTgzUXO1ILbPzMmJWhvHH7E0RThDKEj8SvRHk
	G+KsPp6ke7zkrU0sGrydKQUGM4r9p6d55D3bDa4LSvKLbitb5IPAREhzrs6MVzkvLh6b4FYdbP5
	YMWb1zSQkH2fEWVlSq/9mD8Jem1leInEtDqg2j+dcf1n/R+B3J2U8oNOdbI=
X-Google-Smtp-Source: AGHT+IHt3Bg6sO0puLwKhASFoklltgfvDvB40BIH2Z6ui4MysJG74RxCd6Noi4xySIYNOIfw9+D51A==
X-Received: by 2002:a05:6820:1b08:b0:607:6268:c0a5 with SMTP id 006d021491bc7-609f46fb3d4mr2764929eaf.0.1747450341879;
        Fri, 16 May 2025 19:52:21 -0700 (PDT)
Message-ID: <8ea7f8f5-7645-4d5d-af38-d0b434636e40@gmail.com>
Date: Fri, 16 May 2025 21:52:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Eli Schwartz <eschwartz@gentoo.org>
References: <20250516163157.BA80D8564D@mail.netbsd.org>
 <35a41210-9cd1-4845-bc6d-fdbff2d0c407@gentoo.org>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <35a41210-9cd1-4845-bc6d-fdbff2d0c407@gentoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] describing affected systems (was: screen: Multiple
 Security Issues in Screen (mostly affecting release 5.0.0 and setuid-root
 installations))

On 5/16/25 13:07, Eli Schwartz wrote:
> On 5/16/25 12:31 PM, Taylor R Campbell wrote:
> [...]
>> (a) the same pkgsrc packages are available on, e.g., NetBSD 9.x (which
>>      is not EOL); and
>>
>> (b) pkgsrc is used on platforms other than NetBSD, including macOS,
>>      SmartOS, and various Linux distributions (e.g., for unprivileged
>>      use on HPC clusters where it is more flexible and up-to-date than
>>      the Linux distribution's package manager).
>>
>> That is why it would be more accurate for the report to say
>> `pkgsrc-2025Q1', not `NetBSD 10.1'.
>
> I strongly dispute this. It should instead list both, as both are
> affected.

Would "systems using pkgsrc-2025Q1, notably including NetBSD 9.x and 
NetBSD 10.1" have been a fair way of describing that set?

> (Again, b is the same distinction as "Gentoo, but also
> portage-20250508, are both affected".)

Am I mistaken that portage is unique to Gentoo, while pkgsrc is also 
used for applications on systems other than its native NetBSD?


-- Jacob


