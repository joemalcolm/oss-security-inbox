Received: (qmail 6016 invoked by uid 550); 16 Aug 2024 13:57:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23962 invoked from network); 16 Aug 2024 04:04:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723781036; x=1724385836; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4b8BsDuS38R/ELS6/MpuQUiTcpSiHpfWzSmTayZnXuA=;
        b=QlA1AyXzIb7WMsH6+6s70HU/2zRCWQEfMVN0VWTWZymWfagSAIHXwaBwUjU1RPHckz
         9tVmpUHfj3joJxVQ2hZyXCbo1PEfm9YySln+jJC83BqOD87Z5GIY3U7qY/kEBo98UxOA
         6EJ7tn1J85dkhZNgl/wIQr51qFjNct38rwAB0BxNM3ZseyNZnjPdh6bm2BTNfXvvBkko
         NNYous0HT5kMzSdUBWbveU+hamjG1pMFKNDuhx5Ny2Mk8h+Amf6vXpSzUAleVmYJrPHF
         orZYF9KB/mBcCwG87roW/QhRaziBJh1X1wP3YbS3SWZXMqwmGvqVr3ope65RNn3gmumE
         EaeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723781036; x=1724385836;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4b8BsDuS38R/ELS6/MpuQUiTcpSiHpfWzSmTayZnXuA=;
        b=fEEaIBLp0VeDoOnmPxjdnVkdtnClqE7c4figj+e0iUQJmXAaUHPvwAvwRblmnb0S5d
         SkgTiuJ0hOwuLaEXnxR/vFJOpXopIKhF+p1sUpUGO5xc1hF4THjI0qu+z5UgyVZUpTDl
         ue/GcZSD+XVkBWjZFEVzygD3QGldguUTOHr8fxTEEaazNP6gi4Uw8JxStGVN5druOaaI
         PQzzwRsGpTAnT74fVGMz24qBUFpoWvTvJyLZf1LwpahLVVar9i0sZwJEhPpG1XVaazvY
         EEXhZv36M5vxAQGsBuQVDC0yIbgPCUAlp7MneEXW3paCyQhebqOgCvbDxanB9e4dJS4F
         aFmw==
X-Gm-Message-State: AOJu0Yw+X2KnMXn3iP0SvFFPBVNFK9MDDXpKJRs5DtSdeZz69+GiASk3
	jC8u5a2ztAT8ZF6JpqTlzgsmfDpUYUF7Xo1jwuq8jel3iM7QiTzrVbM9aw==
X-Google-Smtp-Source: AGHT+IGKNawUW5PYrjq/uUZXTfT1bXbYFjPywJtfQhBMTsmEA4M+MJZX/Qr9qg0QSbCpGsu8L9YWBQ==
X-Received: by 2002:a05:6820:168a:b0:5c6:9320:53a3 with SMTP id 006d021491bc7-5da9800e818mr2217531eaf.4.1723781036183;
        Thu, 15 Aug 2024 21:03:56 -0700 (PDT)
Message-ID: <66BECFA9.9080708@gmail.com>
Date: Thu, 15 Aug 2024 23:03:53 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
CC: Peter Gutmann <pgut001@cs.auckland.ac.nz>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com> <20240806171232.6bd08942@zbook> <ZrJv8PDeCxQQJVxH@itl-email> <20240807144047.GA12108@test> <20240807174807.GA4206@openwall.com> <CADz+4x8wo6KaCU9b2s_+VkB08X7U4WWJHj66UfyvRU1qKUUd-A@mail.gmail.com> <20240807201640.1RD27ogN@steffen%sdaoden.eu> <E3810E68-25CC-456F-9DC4-A03752C43E79@redhat.com> <20240808190532.Uwg8_Ylc@steffen%sdaoden.eu> <20240808205540.267A1153AD7@kent.sdaoden.eu> <ME0P300MB0713B2849ACB451ACDC81707EEBA2@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
In-Reply-To: <ME0P300MB0713B2849ACB451ACDC81707EEBA2@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] collision confounders (was: feedback requested
 regarding deprecation of TLS 1.0/1.1)

Peter Gutmann wrote:
> steffen <steffen@sdaoden.eu> writes:
>
>   
>> That is: whether "vulnerability" thus means to create a fake packet with
>> identical MD-5 and SHA-1 hashes (it seems TLSv1.1 always uses both
>> concurrently, at least for RSA) as the cryptographically verifiable one that
>> ships with the packet.
>>
>> It seems to me this is hard stuff, especially for "the occasional attack".
>>     
>
> It's not just hard, for TLS it's pretty much impossible.  The collision
> attacks against SHA-1 have been chosen-prefix and very much offline which you
> can't do with TLS.  Even then, it's only the handshake which uses SHA-1, the
> rest uses HMAC-SHA1 which, even for MD5, is still secure.  Finally, TLS < 1.2
> uses MD5+SHA1 in combination, which no-one has found an actual attack on yet.
> So in this case TLS 1.2 is actually weaker than TLS 1.1.
>   

This actually raises an interesting question from my perspective.  If 
concatenating MD5+SHA1 (which I would guess was done because the TLS 
designers were unsure which would hold up better) proves sufficient to 
confound attacks, how strong does such a confounding digest need to be?

More specifically, could even a non-cryptographic function, such as CRC 
or Fowler-Noll-Vo, be sufficient to prevent an SHA1 (or even MD5) 
collision attack?  While second (and even first) preimages are 
straightforward for CRC, would the cryptographic attack on SHA1 (or MD5) 
conflict with maintaining the non-cryptographic digest value?

I ask because CRC (and FNV) are extremely cheap to compute compared to 
actual cryptographic digests.  Would a combination with a 
non-cryptographic digest significantly strengthen a cryptographic digest?


-- Jacob
