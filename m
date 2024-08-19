Received: (qmail 16315 invoked by uid 550); 19 Aug 2024 11:04:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25782 invoked from network); 19 Aug 2024 02:23:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724034226; x=1724639026; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DruaBqdjVq02NVV5yu8Fvtai1MDTLEH87j1aBEckrCw=;
        b=fWBlYC9UMJ/pBmdivYVr2WIzz59EwhcvGhPuFMdgk/f3eMbQiRJrUIOb1yGoAudxLk
         vveRBG9nLH8CzU465JtJ3kbdxPyY5M4iL6BwpYpe/leqmmSotHdFp7iARdXV9r15Err5
         eD7yRIwN0iOxJg9kKzaXrz2FjstApHd1b++LGydE4Qs4c7swN/Ygr95ggFRayawziPLV
         +hGhneGFE8IXCRnp1vdvedZ502+8yxr4Z/nSdTNUfGY63+wFbo14KZFRbm3jEmU+hbjA
         yZ+OsJmeuw6VV0EGft5F+OpfkxgjVWQOc47Ld5BaY/E3N/F/ji2ERO4SjHiqm6xubqov
         hdRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724034226; x=1724639026;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DruaBqdjVq02NVV5yu8Fvtai1MDTLEH87j1aBEckrCw=;
        b=jPvgGHbr72x1lDLnLxRIfy4BWSu3veYPXQ8plEjTmX17kjhCkRR8YI0NvoF+aTPCYc
         VgyKpTXsKECxPooFW90tASIWU7gD4B8GDgWpp1aY2aYwAYVMVQ4ErUQtkPYXe2sYjDIP
         aK2vSpiayLPpI9fO3DARPf2GgBo3/Lv7PNzmOfddxPUyMFxxlXi6XMRC4KIM918jcuhz
         x9T5OANHALQJMOz9Nte0FhYi2OjSSdK+lyRXDFM24quVJTr11IhICKtVnKBW1OlcL+pK
         0h7kT0mN/9108koMPRlp+qF0mwPVaUdOpj4pA6d1zXkeF09boWN+uvgmSd6ARDUAeCLA
         skIw==
X-Gm-Message-State: AOJu0YwIck04V7qQzRj+6xmJ/NBfIPfu9KwflKHF1WmrF/r1MgtlwGQe
	DGzzKWJs4vB0gKulleK+Vc9GWapJvk8wC4gAPm2fcZD73bTFGGpkUfJJdA==
X-Google-Smtp-Source: AGHT+IFpwIHI0/CpY1+R8O5CFkO2zPeS/p05G+jlhReEXYt3LbuSJrUCBhKICwYHnGd8Zpis7DMo9w==
X-Received: by 2002:a05:6830:390c:b0:703:c26b:6e05 with SMTP id 46e09a7af769-70cac860580mr12456238a34.18.1724034225884;
        Sun, 18 Aug 2024 19:23:45 -0700 (PDT)
Message-ID: <66C2ACB0.2040203@gmail.com>
Date: Sun, 18 Aug 2024 21:23:44 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
CC: Neil Horman <nhorman@openssl.org>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com> <20240815111847.406cf6c1@computer> <66BECFB0.3080704@gmail.com> <CAH8yC8ndnyhyMNaQu3N_uUM_yXhd32PwR9odEOeoDe7jC5fQLw@mail.gmail.com> <66C02F68.1050609@gmail.com> <ME0P300MB0713D8A7D829DC25E6520BA3EE832@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
In-Reply-To: <ME0P300MB0713D8A7D829DC25E6520BA3EE832@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Peter Gutmann wrote:
> Jacob Bachmeyer <jcb62281@gmail.com> writes:
>   
>> The AtE mode has problems, but is still supported in TLS1.2.  (Why was EtA
>> not also introduced in TLS1.2?)
>>     
>
> It was:
>
> https://datatracker.ietf.org/doc/html/rfc7366
>
> So you don't need any new modes, just an extension to signal its presence and
> swapping the order of the processing operations if present.
>   

I see.  TLS1.2 supports *both* AtE and EtA.

My question (here expressed yet another way) still stands unanswered:  
excluding cipher suites (and the use of concatenated SHA1+MD5) what, if 
any, parts of TLS1.0/1.1 are not also required to implement TLS1.2?

Removing support for TLS1.0/1.1 has definite costs in compatibility, 
costs that hit particularly hard with legacy embedded devices for which 
no updates will be available.  Given that TLS1.2 is to remain supported, 
what benefits to maintainability are to be had?  How much of the 
TLS1.0/1.1 support does *not* overlap with the TLS1.2 support?  How much 
of it *should* overlap if the code were to be optimally refactored?


-- Jacob

