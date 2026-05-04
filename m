Received: (qmail 20369 invoked by uid 550); 4 May 2026 16:07:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3329 invoked from network); 4 May 2026 07:14:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777878862; x=1778483662; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WolpqoCneMnItnSSSFSP2/B/Fsn6HEOtBfvx8to2RII=;
        b=I938FayD0jq0GkH52l3kAJIXOz+sNMi2PwXHdWgdjXJYa8Lwbi4NmkfQfnO2dIfsmL
         tu1Y080njQDt05VDKfeJKy8YeeIbkfLQ/aEZ4jmlq4F273Sxw036sCVMxNEMHCxksLyX
         44KRBrbxIW+X0FWPZaBoA7b6pRFjAkItLiB4Ty25nYWkohLK+CjzWBWA1QjF/0ioVRQO
         RD4BZYBP+PjqZFuQUmH4UENBObJVqrZpm2pr20C/243OulUcywxZ7CVg6qtgb262ZJjI
         tNEc8v4OpA7Ucx1AMdOs2mpbU2+iXzXyCo0IDwavr2XY9qzF9AfV8J92enTn8dme+3R6
         IwwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777878862; x=1778483662;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WolpqoCneMnItnSSSFSP2/B/Fsn6HEOtBfvx8to2RII=;
        b=e9InNtP9FD4deE7W0YdidUuXGI5RlXmHwU+TWXWysXATVhQBcRhmEdXNq807X3VKiI
         sjzSejJK7sgH6Lr/kMOySX9WlQRx/XdZS6iBGjC4xaavmRIKb05SXojzhhLInYG7BYN5
         6hmT5LXgiZ8vLH/ebGcaxno34Bg1cSeOWvp98VRHtMhPfzObzpYEcAloLuTBXqvO6z6/
         lnbsrprOpNMwLA3sa/bcN1Sd5Hah27YXdl7njGL/EtAbnFiRTenEeOdb1adW9ZsCveK/
         iGBsuRbDK9WNYu+FcRZdPvHhLAFcumlnwtA3U35NN6ii2dSaMPBFTePys6k17H1eTw8k
         f1+A==
X-Gm-Message-State: AOJu0YxaqdGekNAuisoyHqw5NKiWqVXT1wMu0BUPxQxPKUXpwjF1QQye
	KwzVWHKJBktUM4BaHPFuF71m/74Ljb6udAM0jSwV45raSEfydcH5+SB1
X-Gm-Gg: AeBDiespJsy8gaukEDFas8SI4mIFBQ2Jzbm3g2JOGkdRzX6nUvcSHnic+l5ltIw9vHL
	qG9xL+udylz9KHVFG7kAfmM/kz8imBoc74k+W+x5FEPRNkkYxFKGr3dqQvz13P/G7cxvCQYBnkK
	9XCV3pmKug8xsurZCI2+SvdH1pqRUnwThppWmP00EwbvmeSoGWF2J3HXP2QWohukJAR10SOQUEi
	kxf0KpnMTNGmwKhV+wogQrzmjet3ShnfTmc1k/XSV0IRwJyB9G7R0AVZXvc/eW7ZqXcFhaWqFgk
	Cf9vE4TPz8Wcxo6tN5twyBQkWsVfmieJxUrK7Iz9IuSIktf/tolabcsm1iBpZepBmTVCU2fk1ST
	prhDuQe0IxRKS2RJRD1HDN6mr8xHndn9935YkHhUiH6COQg03Uq/1tctohpZIbwPNpiteUm8UnW
	nZkZiB8FduY/W18xuEkKLGgQL4VoceiQFnERb8TzE=
X-Received: by 2002:a17:906:f595:b0:bb7:be6a:7671 with SMTP id a640c23a62f3a-bbff8dc5c7cmr485192266b.6.1777878861389;
        Mon, 04 May 2026 00:14:21 -0700 (PDT)
Message-ID: <7f31ae12-f1af-40cb-9131-04a548930ddd@gmail.com>
Date: Mon, 4 May 2026 09:14:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Eric Biggers <ebiggers@kernel.org>,
 Demi Marie Obenour <demiobenour@gmail.com>
Cc: oss-security@lists.openwall.com, Jan Schaumann <jschauma@netmeister.org>,
 iwd@lists.linux.dev
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan> <20260430071917.GB54208@sol>
 <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com> <20260501180028.GA2260@sol>
 <19837ef5-e5b6-45f4-8336-3ce07423dfb1@gmail.com>
 <021503ca-8a9b-4f9d-8b8e-81661572a018@gmail.com>
 <16a713ee-4cf3-4f40-a532-8a937eaffd21@gmail.com>
 <20260504064346.GA112568@sol>
Content-Language: en-US
From: Milan Broz <gmazyland@gmail.com>
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
In-Reply-To: <20260504064346.GA112568@sol>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On 5/4/26 8:43 AM, Eric Biggers wrote:
> On Mon, May 04, 2026 at 02:13:01AM -0400, Demi Marie Obenour wrote:
>>> - It is used for benchmarking, where we actually need kernel crypto.
>>>
>>> As it will be used in real dm-crypt mapping later, benchmarking
>>> userspace lib just does not make sense.
>>> (Requiring CAP_SYS_ADMIN here is not such a big issue, and it is
>>> a very rough test - but useful for relative comparison, not for the
>>> real numbers.)
>>
>> Would an API to ask the kernel to benchmark its own algorithms work
>> for this?  That would be a more accurate benchmark as it removes
>> syscall overhead.
> 
> For what it's worth, I've always been frustrated by
> 'cryptsetup benchmark' and the numbers that people report with it
> because they underestimate the fast algorithms so significantly.

Yes, but note that dm-crypt will cause a lot of more slowdown
by processing of requests later, so in the end it is not so different.
It was kind of intentional, it is a cryptsetup benchmark, not a kernel
crypto benchmark  :-)

But seriously, benchmark is a hack, but we need at least something.
You can see AES-NI speedup in comparison to otherwise fast symmetric ciphers,
you can see parallelization in CBC decryption This is still useful for users.

I refused to touch it so at least we can compare relative differences
among kernel versions.

If there is any usable interface that can do better job, we will use it.

In the future, I would need to measure both - userspace crypto and kernel.

Milan


