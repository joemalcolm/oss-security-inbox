Received: (qmail 4046 invoked by uid 550); 27 Sep 2025 11:31:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5526 invoked from network); 27 Sep 2025 00:06:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758931589; x=1759536389; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=llhZ6opdvnYTBql1BgbRBgiSychBdBdEBNUgsMTtMrM=;
        b=MTT1Rh5zPDPxdc5aEDd8PxB8U1jXnw/aQwF/t73D5MhdeyNqarabq7xS1gqglIgvWY
         dh0+A1VqeWfe2sLxn2EV6wMGW4GC+gb6vVP0cDQhjgXtTzNI48RZfeaZjoJMy7CD5s+S
         61fc/tBEOse+uu0fJFLhEtPSipHX4dK6pqnqfkadyVV7NejRq1Xada7Xq5ZN/LSGczt6
         nCnvsnGqn+ND9hGQJbNM5QHRdIVgYmQIXH+kvwwCHcAI0NDZCdTFlIv9E2NFyUEO+4VR
         HRIhqGyx2drwyFy9e/hNVeFluC/Ey4I1Dm3HbO/jdmKnoerkbPAAKtwXofsGQI20Azum
         gZEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758931589; x=1759536389;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=llhZ6opdvnYTBql1BgbRBgiSychBdBdEBNUgsMTtMrM=;
        b=H5tEWiNEFYAJF1N+oczUqF1d2Ux8Kjx2TVRqoQGIV+8kSiyt3Vw0hr0BTDlUFf53sN
         wGeOH/eY3t/4/uuw2ZDwYYMkcX4oI/WzMfI+Yg2Upnp7QY523J+TLeFwckGQ3afaAnAO
         TcnV9u8FOWFmFN+/ziLgJCHLGQBPxkjMgnjBqvCdp6xUDsNhgczfm4zqjGdlOIL52bhw
         XGgGUwOwaf7gfGFBOK1nV3YpxQz9is7bYowj0bWKXOCTnTaWNzJK7qHCv/jq13aTNnnY
         ULLV/abVYJr7esLdlblqzzOPXi0zDfLwXCLMpq/pUbdqwToB2HkfBuuYgopALuas6+FC
         LTgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfdNcNl9eM7WLxKplZHkJRUifauUycKyxEdXO051j3ugx+3XgnFfQAfZxHABOS1OrEkshXE3Lqihkw1Kk=@lists.openwall.com
X-Gm-Message-State: AOJu0YxBwaZznJDwKg3Eu3rUfpJEJoY6dSEJjfFdwa6A1tRyrmoDWK+A
	zR9HW5Kd/T2T2Vn6M8+sPDXMfINmC3Jk9jtTJqLHeEqaiKU+8S3xl3dB
X-Gm-Gg: ASbGncukGOdJxctjVoIl/40ugmvviaqAEHlavo914zZ77CT6ggZwkMLseevfud6NoTH
	Df4O77phpFE2WgKFym7p1Xyvqaf4K9FpUR9g18itsLIoM4l0QiHmh0jHm/xOIS+wpFh4fq3ZgCn
	3cFtd6ZiBWD78pcnCE+MFh9hiBfVxOr/ILxwmeAArIF2PmDZ2tRRTEgM6e/96QZ+1T4HiUpyFQU
	oU2sPdBIRf9cOT3VFoa2cfrPoN8B93aPUJqtdrJww3KzsdxbujoERqaChU/+CdGxKWIf1hvC0Op
	UglBg7Yh+Mentr6cb73pSUV1uqQnyu6zcK4RpJG5KC6fiiz81pe/iCDOyk0Jl6D+PczeNCtPHE3
	80kvZPbWqT2cJWPzlCLzobWz0cB/9IBTnRLKAhyWv
X-Google-Smtp-Source: AGHT+IHd/NLpgWN0hSe3UAqil5lqNZRSKAz8BqoaQsY9Lv3hJ7jc+SqKmd8hsUev3+hlUT/SdfIODA==
X-Received: by 2002:a05:690c:6b84:b0:764:e42f:22d9 with SMTP id 00721157ae682-764e42f2437mr83208807b3.32.1758931589444;
        Fri, 26 Sep 2025 17:06:29 -0700 (PDT)
Message-ID: <06836fd6-a1eb-4af8-a5f9-012b37a6c162@gmail.com>
Date: Fri, 26 Sep 2025 19:06:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Demi Marie Obenour <demiobenour@gmail.com>,
 oss-security@lists.openwall.com, Peter Gutmann <pgut001@cs.auckland.ac.nz>,
 "Adiletta, Andrew" <ajadiletta@wpi.edu>, Solar Designer
 <solar@openwall.com>, Andrew Cooper <andrew.cooper3@citrix.com>
Cc: "openssh@openssh.com" <openssh@openssh.com>, "Tol, Caner" <mtol@wpi.edu>,
 "Sunar, Berk" <sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>,
 "Todd C. Miller" <Todd.Miller@courtesan.com>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
 <BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com>
 <43743160-7c83-4c4e-ad77-52e5058636c5@gmail.com>
 <ME0P300MB0713919015F954023D6D63FAEE1CA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <0ea3da20-739e-4608-8869-9d5882a8f003@gmail.com>
 <544d9d89-2a0a-4901-84ab-40c07c9c7bcd@gmail.com>
 <a715936d-759a-4c2f-8498-6da12f0fba3a@gmail.com>
 <dac51d5e-e9a9-4e8d-b044-7da3316c9252@gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <dac51d5e-e9a9-4e8d-b044-7da3316c9252@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH

On 9/26/25 09:19, Demi Marie Obenour wrote:
> On 9/25/25 22:33, Jacob Bachmeyer wrote:
> [...]
>> It seems highly likely that Rowhammer is an inherent consequence of DRAM
>> density beyond a certain limit and highly *unlikely* that reducing DRAM
>> density below the "Rowhammer threshold" will prove to be an acceptable
>> solution.
> See https://arxiv.org/pdf/2407.09995 for the proper solution: store a
> per-row activation counter alongside the row itself, and when any row
> in a bank exceeds the threshold, take action.

I am somewhat skeptical about this, simply because there have been many 
"proper solutions" to Rowhammer that have thus far failed.

>> [...]
>>
>>
>> The stack is intrinsically aligned on much finer than page granularity;
>> introducing additional "jitter" to the locations of stack variables (and
>> spilled registers) is a solution available today with minimal cost.  All
>> you need is "size_t slide_size=random_stack_slide_size(); void *
>> slide=alloca(slide_size); memset(slide,0,slide_size);" near the top of
>> main (and possibly other functions to "mix it up" more) and a function
>> random_stack_slide_size() that gives an appropriate unpredictable value.
>>
>> The key is to avoid trying to prevent bits from being flipped (that
>> proverbial ship has sailed on current hardware) but instead prevent an
>> attacker from being able to predict accomplishing something useful with
>> those bit-flips.
> I suspect that in general this is provably impossible.

You suspect that ASLR is generally provably useless?  "Sliding" the 
stack is the same basic principle as ASLR.

The "Rowhammer Mayhem" attack evades ASLR by exploiting the kernel's 
physical page allocation policy, effectively converting the significant 
address to an ordinal page number ("Nth page allocated") and offset 
instead of a virtual or physical address.

> My hope is that
> EU regulations like CRA and PLD will force hardware recalls when defects
> like Rowhammer are detected.

You realize that legal cudgels like that could very well kill the entire 
computing industry if it turns out that Rowhammer is due to physical 
limitations, right?


-- Jacob


