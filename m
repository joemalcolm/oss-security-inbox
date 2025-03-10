Received: (qmail 30565 invoked by uid 550); 10 Mar 2025 23:13:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5320 invoked from network); 10 Mar 2025 23:07:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741648019; x=1742252819; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=UzCDVr8PfvLREJWx93DYQhQKgMuYFnzGXWkziAH4p9Q=;
        b=mKjHN1bItuNfprO8+CsPDuqV46lydfdUq0/P7rF7eWnP/6+0FBiIu06zoJujEMaPQz
         kTaV3jRiz49uoQQc0SLtir7BoNiYAXyFh3kuAVghmcMvhcEUqGTFM1zpLURpEOv6ns1v
         T+YtsvUdAVBhykoH/MUvHHc1o+jVUoq5ebF1MkRLZMR8Q6iaUkVF+Td+6UNm0uZCOQCr
         Y6FoBrKe9qwXG4RSLpOE8CzC6k0AZP9sSLdssEbno9ub4weas6/arsiSNJk1Ryp0Yoh5
         eCUBLAve8h3FnjHEBb3gKoKL8yM0cE2q2Nb7HRG56Z3AhL2/jlLw8Gw2HxtRHLU6eE/H
         iWVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741648019; x=1742252819;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UzCDVr8PfvLREJWx93DYQhQKgMuYFnzGXWkziAH4p9Q=;
        b=gGfBGCBXtQaYR94CCrtT2y0QkwSPi5ky73gO0eijJTaD/YEkRbpT7u+g4wT9x1N8ik
         KosUrc5thtYFKJlDGPOp+kLtmAqg9mk3f8Oj5DuXTLCQT4ugCl6wG6wHMchB1ZN1+dbk
         Fb2ouQ4rRFUMfoAGDdphz0OuLbmVOHxOf0+JDEodlshLGTuR/q9WIqGFvzaEgNmxBxd3
         W+3ozZika0MtrC6CoJB/yV06LPALGoHD144aa6sly40+wjBHO6o6zZmGJfjhoAaDNi8W
         l1fahUPRBYd2kpPD5hNzFshRkBI1UOcKlNxDAmLIvSKJlPbzqGQsaGlm/jrpKa87KTEf
         n66Q==
X-Gm-Message-State: AOJu0YykY8+3yoqILMekk8JRUbrp7i7z7LuPZb1vOwbSBP5qSMXKU4pg
	4wnQj2RSv+mBUX5Fden7ucBXQo9+Vz7PcnLCU1/pCnKCh+qcSK4ZXXTHQg==
X-Gm-Gg: ASbGncupoonwrr2ymbCqY/gtuCUwEoEUO6uD5vTE6ENvYoNEY4bavcAngxu1yyQVHat
	RXVFITrLoFv9jWRQvH79rNOwcSm8Bh/xpK7RLxMoCqUK5QqIsDZ2U/ts1lih43KDW5hTHTVI8F0
	0AxFBYvAX/qW6qYOVYnuH+nlQTutBMc6qjfYR986NWUJQGOoX1k+ARiKbGFvnieGIwZIIq63rc6
	pKNlJipHs69ABjJrno+xHFtJxFy9Qjcp4vJpNylb5FAQci4aqOmMwA1dTINUQkBHUPiZ1WFlvQH
	NMTqtsOqH8QfUeDxveuzeUuUCPKskWWoiIONqDJPyQ==
X-Google-Smtp-Source: AGHT+IH6Np+yf7fNB2PosumyK9j3Cj1Gen/D/6i53vSibU+hodDKvn4TKaQSXUYRphxhEY5MmI+lVw==
X-Received: by 2002:a05:6808:1a15:b0:3f8:b73b:682b with SMTP id 5614622812f47-3fa298c0161mr982169b6e.7.1741648018990;
        Mon, 10 Mar 2025 16:06:58 -0700 (PDT)
Message-ID: <30c9d060-2a43-48e9-b0c5-31e4a7d05349@gmail.com>
Date: Mon, 10 Mar 2025 18:06:55 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <ovqbvdsvupbr2dse76qem7ukiyidoqdynmm4rn7ah5kqiagugg@xbgvxewonj4p>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <ovqbvdsvupbr2dse76qem7ukiyidoqdynmm4rn7ah5kqiagugg@xbgvxewonj4p>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2025-1937+more: Numerous memory-safety issues
 in Firefox & Thunderbird

On 3/10/25 08:30, Valtteri Vuorikoski wrote:
> [...] However the only issue ranked
> critical only affects Android, looks like desktop versions top out at high.

My understanding is that the issue was *reported* by the Android 
project, but it affects *ALL* builds, including desktop.


-- Jacob


