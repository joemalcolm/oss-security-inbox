Received: (qmail 22340 invoked by uid 550); 6 Feb 2025 03:37:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1225 invoked from network); 6 Feb 2025 03:22:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738812150; x=1739416950; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kNn0N6W2FmBnl29AjAq+qSjDBIXWqngScPDOKWR2afk=;
        b=BpFnvT0AL0iAUYkvqPXG7QrmGjaUzSKWgtc7ioE4rndYZ2fk1D2teBG7qeDHsyTFYJ
         vkq+q7eGesXIT0UTCJQx1gYginvdVz3L6aAGAuTqq7uzUHamKkx5VFbTYrvVq2g9vqyw
         V4KxsZthV2eDNu97yHDBeM0dH8zExmKoPHanNW5Ai1D9G2r5alE9w0omB9uPJXphAcV2
         pOHiVJ9SJpsAkyIKUN8lspyNi4tPSCqLrZ2246NOzP42dgRm4gZiZTFLBGJJWasvt64M
         ZTJfbNMUgjTAb6gBYZcCgYUfESYr9+nsJMHTku/DCjFFvgEKrhETCK1woxBFdG4NzQ8I
         xsGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738812150; x=1739416950;
        h=in-reply-to:from:content-language:references:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kNn0N6W2FmBnl29AjAq+qSjDBIXWqngScPDOKWR2afk=;
        b=PzhwLKSbzpadTc3Pxh3RQ00VLvS1AqVipsTuMRb9WVmEq51pvKY8ansZ1q94XK8/YR
         vdSlMeZB9j3FCGO4GV6lReNe5pT5iRPM3jRDa5DTqVm5tHwaFhBkPnlTj0+yNSnq3hPw
         1gs/utMZsm8AIoN/8Jk+GCtiSvFhhp52CwEVquSTmFA0iXvgpv5uzTYuR42FjCxD8OBt
         XNO54j5v5bs8qsj95qlwPh2nL4+miqzZqQCiexuxYO/ildWQNp2bLWDNxmewjHFgalGl
         xSgG4woAZXQPBYvo+Ld2hg+t1qh24KcavOXIDbmHffbhVufB26z6AEXvqYMSEQnWnfkx
         HyCw==
X-Gm-Message-State: AOJu0Yx9YAw+acljpoJgbsMViwP1qVugyieO+eRhjcim8svwX8sr3Glz
	tMR2HY0aX4gCMWKi/ZMGPeIWsOoht6K6SpvADYrTlgqQ4Lq+FhQQjsdbBA==
X-Gm-Gg: ASbGncso+MDxK9s9z+pNAuUwG3qdgyxQGNQ/JXOzH3oVnyDRMxrrv2CoGacD4gnsNxI
	+mYxEATZYLfS9ij3HEZxgFEHsDPwY/xsh2Zp1GYF43KLlTcL1uwDf8UtNbW4wp1IbGGvDSOElD8
	BFuJZdbVAScNLmcqGv6vp+MUAWlDlOfs1QpePedN5Wm1BQtsQEFqtl/oMgYAF0UVZS9NUWJI8Ey
	XNiPvPHlyggF71T/o/n702KOPaGS/o9jBBcW+xqMfPoZqWeNNUiLrxUJ8OT8h43avNpWNS8ucqf
	nswq2dTyXHEn
X-Google-Smtp-Source: AGHT+IFByBv7VQUDP73fWixVmu9nqleCQ6WXAvCsnM50/7UfXZHAw9B3nZoUW/pfHpKjPbdz7V6TiQ==
X-Received: by 2002:a05:6830:6316:b0:716:1530:fc7e with SMTP id 46e09a7af769-726a4160053mr3758783a34.1.1738812149908;
        Wed, 05 Feb 2025 19:22:29 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------9wWRUqNuvyojoBbOxnoei9it"
Message-ID: <32e961ce-1088-4e21-803a-3539a0ceaa3a@gmail.com>
Date: Wed, 5 Feb 2025 21:22:21 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
References: <Z5BYg9WPFBF7JBEB@thinkstation.cmpxchg8b.net>
 <Z5B2PA7DHTBbvbOq@itl-email> <Z5EUUMd1xkSSKAEM@thinkstation.cmpxchg8b.net>
 <20250204101028.GA20864@openwall.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <20250204101028.GA20864@openwall.com>
Subject: Re: [oss-security] AMD Microcode Signature Verification Vulnerability

--------------9wWRUqNuvyojoBbOxnoei9it
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/4/25 04:10, Solar Designer wrote:
> On Wed, Jan 22, 2025 at 07:52:48AM -0800, Tavis Ormandy wrote:
>> [...]
>>
>> AMD SEV-SNP users can verify the fix by confirming TCB values for SNP in
>> their attestation reports (can be observed from a VM, consult AMD's
>> security bulletin for further details).
>>
>> [...]
> The corresponding AMD security bulletin is:
>
> https://www.amd.com/en/resources/product-security/bulletin/amd-sb-3019.html
>
>> [...] Additionally, an SEV firmware update
>> is required for some platforms to support SEV-SNP attestation. Updating
>> the system BIOS image and rebooting the platform will enable attestation
>> of the mitigation. A confidential guest can verify the mitigation has
>> been enabled on the target platform through the SEV-SNP attestation
>> report.

[*raises hand*]

If an attacker is able to control the hypervisor (necessary to load 
rogue microcode) and the processor microcode, how can the VM trust that 
it is actually verifying that attestation and not being sent down a "oh 
yes it is exactly what you want it to be" garden path?

Do the instructions necessary to obtain and verify that attestation not 
use microcode at all?


-- Jacob


--------------9wWRUqNuvyojoBbOxnoei9it--
