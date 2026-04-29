Received: (qmail 26127 invoked by uid 550); 29 Apr 2026 03:19:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26070 invoked from network); 29 Apr 2026 03:19:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777432736; x=1778037536; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rRQ/rmwh3IToQjBSJLsVmuii2FWjZ1bfTvmBPriqfCQ=;
        b=aV1KT1dZAxnOFS7JyUhY8eco95U3JgQx7VRwh+GFwOJ4hc/yQ1Q0sYyAXWA5H7tn9p
         16PlcisTZH/ItK92mJobrh7ypSNLKC2GT2b7aEa15PFzPdlmc23bB7ILLWsZlCs6AK/6
         SLEmp/mu6eYxdMCyUNBCVnnF/TtnKwiUGVlU5eAKR1Gpv9NWo3Uirv+vtatOUGkJ4/ZB
         NK2H8FfHb70tPyiijnuirXR7DGdh5dlvJtlBnH/I9Iv3ghQuDIYLdQlZZiXk0yYvzSpu
         TxgUuDbIfIqPyDJBFN2A35ij1xOJMxsyLCZ8Rkxn6Eh2O9Chcs+E52270eKKDeQriWHP
         lQ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777432736; x=1778037536;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rRQ/rmwh3IToQjBSJLsVmuii2FWjZ1bfTvmBPriqfCQ=;
        b=PfyKewxFqR8cngNZN0bor3GcKXb9fPx4yhOLyUAKZJ5yDA19uYxFxlyKzuE6pzCDGX
         hitxES99acVI5oDelREsedm44uznfYBZH1mHmv0splz3fdlq0o3xZOOLFgUkukXrfwny
         UGoVsDASGLC7CJF3GqvEQ15FA2qG4Cgbc9hOJoxQrYIlRKwp9jZPjlJtDtO0itI3aBU6
         XxnXhSbDl9kpNpvHRh9KUbBYpQtd5ukl5qMV5WRApJC7rK0+xTMhGh9GSKrAPkCOCRpb
         gqlKQb/TWI9DhU8L91QjJXJvVM/XuR9z1sK6tFfk2aujReI0aaKOQIHhjIokcNFPVEDg
         Ke4A==
X-Gm-Message-State: AOJu0YxA8wU0BC2+2iw5DaRKciqahBwqBbW9dKK3+X6yACBukAggYCJ7
	T5VGlnpTmn99i2jmDsPZyS1cVCsP+SHen73Jyiu6RYEiaBUu4cGlv+/mMQPHv6bE
X-Gm-Gg: AeBDiev9pTpREY7Vq8G6MIPWhaigEB7TKhRDKh/6iwbdxuX7qu2Z/IlIEHVlmr+MwKS
	3Bo3rMbbnfwD2owo5Nj2P2NErshmBQgC6+Kj5w+pf9PA6HDYD3woDramwiUntwC2PBiEWDmoq21
	H0+Xh48wGRyi3n5bitLDLREN0SGOAPQPrsqZUM9tpqV0ym4bO9YA7rdmtmJBOV1nUDZ2G+hgm4R
	23hK8GUaxBPlRIhxiKpPo61dCxK4KVN5C1JQrmBHH/s6Yjvj0hmo61XLM41gUUODBaly0TWUZrR
	POKglDcMPAqBeBFMhMiqPT6cJXd/C5TFXARAwEuJu7tQ+FiNZ6cNpz1Unv0WmVwuCBKIRXQTtnd
	zDNvIn4AH533smTpLuWggNF4VaiibEMgSghOCdHzcEPQv7N9rQYXULEXSuJJtytQ1pm7uBNRGP1
	oXgOWsUBb7CX0vfF+muL6lReQbiCve
X-Received: by 2002:a05:6808:d4a:b0:479:a90b:a011 with SMTP id 5614622812f47-47c29044165mr3126430b6e.41.1777432736670;
        Tue, 28 Apr 2026 20:18:56 -0700 (PDT)
Message-ID: <91b42b0c-9103-4ef3-a806-26e9de10e177@gmail.com>
Date: Tue, 28 Apr 2026 22:18:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com,
 MOHAMED AZIZ RAHMOUNI <mohamedaziz.rahmouni@insat.ucar.tn>,
 secalert@redhat.com, Dmitry@butskoy.name
References: <CAJBym6AuYxQE1pvsUj6zhRpJd1UqY-iNXD4HhhALJjB-9N=Y+Q@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CAJBym6AuYxQE1pvsUj6zhRpJd1UqY-iNXD4HhhALJjB-9N=Y+Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: =?UTF-8?Q?Re=3A_=5Boss-security=5D_=5BSECURITY=5D_Out-of-Bounds_Rea?=
 =?UTF-8?Q?d_in_MPLS_Extension_Parsing_=E2=80=94_traceroute_2=2E1=2E2?=

On 4/28/26 17:03, MOHAMED AZIZ RAHMOUNI wrote:
> Hello,
>
> I am reporting a security vulnerability I discovered in traceroute 
> 2.1.2 during manual code review and dynamic fuzzing.
>
> [...]
>
> I am following a 90-day responsible disclosure policy. I intend to 
> publish details publicly on 2026-07-27 unless a patch is available 
> sooner, at which point I will coordinate the disclosure timeline with you.
>
> Please confirm receipt of this report.

Oops.  The oss-security mailing list is public.  If you want to do 
coordinated disclosure, you might want to avoid sending the initial 
report to a public mailing list.  :-)

It is very fortunate that, as Dmitry Butskoy indicated in his reply, 
your copy appears to have been tampered with and the official sources do 
not have this problem.


-- Jacob


