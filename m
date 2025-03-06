Received: (qmail 19642 invoked by uid 550); 6 Mar 2025 05:56:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1847 invoked from network); 6 Mar 2025 05:51:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741240251; x=1741845051; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OPHJVx69Rqd75SfhjuURsZXqEKsXNIVgatpbV1xWW8U=;
        b=DFh1YcEi5aPeDwF0Bzla26QTXh6GubAIs1fTnCS1AQn3mEb9EajjYG8UsuWqR2Mb2Z
         Wjlgjv6oVPjPlrQ+KMdGqagTh+Um/hil6O34FYCeTxN9Y+jBYiiRdIHTFLZgbmof9DPM
         kZ5QPThomhRvdnNHQVl0STO8m013VVH9H7ym9zhgly4r/Rg0YfPq/Ez6QQsBvwih+iRP
         It8CYnsBqLoKE+kSFOkLfd+sRbhmExk3dLubK9fmjLW/LoWgr5hKXbvJJkRY3IRulkyL
         /fDKUCioVTfBLq9uZzRYGRed+LJnNH9tOAAMx1s+A2wISw+C+kJZKrsPSXIRtoF/xu8T
         h5tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741240251; x=1741845051;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OPHJVx69Rqd75SfhjuURsZXqEKsXNIVgatpbV1xWW8U=;
        b=LbFu0pmwfx+g6pXf76IHMMOqqhdPaeIKOFde6YlcbmU5bmpodrWdq+1ab1BQaZVP6i
         nvShthHxLkD/7Vnn6Nu5sVA+Np1fo7rXI84boftI/A0+fwCfoBESXyfuOpH5MF/JrMom
         dWs0t7ZvmmPYgmx0yikVfiG6a8NckV4yCywXHtFFS3sIug+sIvZdVklRT5NoWf4g8gXv
         jV44PQv4/OkQ5sAhXZPKGSFR3iIiFo6z5d+8mXV/ilmwIDOnGA0HpyuZbhKOj7UWNDgG
         Y1JuDWS9FIa9R/6drbReS66g4cPXRdbMkj6zhiRSL8/JqvoiD4rMdSBUjzdZAFI+M+RT
         igOg==
X-Gm-Message-State: AOJu0YwyxWtHkGnv/8crGtBM1cNK+lHIz20kr8sPnXYCa1327o3X2NDq
	8HKXchAjyaG3Bxayw17wTwokNQehOqO2Zoe+01v4HvWWpyBYUiG1
X-Gm-Gg: ASbGncuASWof4xsNzRRpUHXc/T9k9KZsSZzgDa3otQ/TiTwGRZadldGV3Ewx4jy4VGd
	6Uv4y02CW/LIw9aeO7TVxyIQLgC453TVZSsJelA2Oi0aX0f4RWd0UJFdW3XyNYiLdb9GbWA32oc
	rW0LcvHn+yZDG0YxSbCBOfaLJ4fV6w58NGg7NZoTpkukpUKY7+MxtW3AhzbC00CTcRORlcJnLyu
	gLJsL91nzOn/b3emc7HzeJtPgzEdO98VbNS3Ss6PySWRZBVyb82an8Dohs2RZXZXOY4qUiH1A5q
	nJJTglJrcli8hFGfr+8rm7h4M3rFAVSDkMCFywFsbA==
X-Google-Smtp-Source: AGHT+IF8DMML3c8d9RgyrTx3+YQTc8To+7etDiPH0TU2UcoDdtuf89XhNNEBJ3hzStanBoVFJymydg==
X-Received: by 2002:a05:6830:2696:b0:72a:1143:85fb with SMTP id 46e09a7af769-72a1fcada3fmr3667805a34.20.1741240250926;
        Wed, 05 Mar 2025 21:50:50 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------2Edlm06aSLqUWq4KbDfX2O0C"
Message-ID: <97c9b035-2a68-4182-93c8-0495abdd193f@gmail.com>
Date: Wed, 5 Mar 2025 23:50:45 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, Tavis Ormandy <taviso@gmail.com>
References: <Z5BYg9WPFBF7JBEB@thinkstation.cmpxchg8b.net>
 <Z5B2PA7DHTBbvbOq@itl-email> <Z5EUUMd1xkSSKAEM@thinkstation.cmpxchg8b.net>
 <20250204101028.GA20864@openwall.com> <20250306033000.GA4987@openwall.com>
 <6f9ffc49-ad46-45eb-9d6f-7d58769c3671@gmail.com>
 <20250306053416.GA6682@openwall.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <20250306053416.GA6682@openwall.com>
Subject: Re: [oss-security] AMD Microcode Signature Verification Vulnerability

--------------2Edlm06aSLqUWq4KbDfX2O0C
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/5/25 23:34, Solar Designer wrote:
> On Wed, Mar 05, 2025 at 11:03:49PM -0600, Jacob Bachmeyer wrote:
>>> [...]
>>>> Forging On
>>>> We noticed that the key from an old Zen 1 CPU was the example key of the
>>>> NIST SP 800-38B publication (Appendix D.1 2b7e1516 28aed2a6 abf71588
>>>> 09cf4f3c) and was reused until at least Zen 4 CPUs. [...]
>> They... used... the... example... key... in... a... real...
>> production... system...
>>
>> [I have no words.]
> It appears they didn't realize the key's secrecy would matter for their
> use case (or else they probably wouldn't use CMAC in the first place),
> so it "made sense" to stick with a "standard" tested key.  Given that
> misunderstanding, I wouldn't blame them for choosing an example key.

The purpose of "keys" in cryptosystems is to concentrate the need for 
secrecy in a small, easily-guarded value, and assume the attacker knows 
everything else about the system.

> [...]
> The real issue is the use of CMAC without understanding its properties,
> not the key choice.

The fact that it is called a "key" (and not a "public key") should be 
the hint that it must be kept secret, which means do not use an example 
value, just like you do not set your password to "password" or your PIN 
to 1-2-3-4-5 unless you really mean to have no security on that system.

> Indeed, HMAC wouldn't be any weaker than its underlying hash on its own
> even when used with a publicly known example key.  So I can see how they
> could have (wrongly) expected the same from CMAC.

If the system is no weaker if the HMAC key is known, then you should not 
be using HMAC and you should be using a plain digest instead.  (Or am I 
missing something?  What would HMAC with a known key give you that a 
plain digest does not?)


-- Jacob


--------------2Edlm06aSLqUWq4KbDfX2O0C--
