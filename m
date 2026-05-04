Received: (qmail 11812 invoked by uid 550); 4 May 2026 16:07:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32125 invoked from network); 4 May 2026 05:57:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777874260; x=1778479060; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=OMGqfti9ozqkswlDM2tiOauit1bHew2WxyC+HxqjqoA=;
        b=TpUVyqD/Uxw0R/csg8I8tWEJXNAkkikhzr8vLFIUzCiUijdne4dJ9CNdIFe44vMAe7
         oXZFyu1mB55YckUepawSu8iRg3uMeLGERRoCGDYSEK/YP9DKl6EscuCOGcc5h3kvu7h3
         gGneXi307AtbND5M24kODDCZSyPQ71dwtBXS8N1eylJ+pS81PVNEOWERv3X2jQxofiDJ
         Qcq5hshW6O8lKV0LaOuy0ouOZY8BpfTqxj5PqRwXaxXyuUcjtqCRTkIzz1Qptky/Y9Vq
         iQR/1pJQGYCzItFls+swaz+ebjdEMFCQaNRzr2cvXbYieOhY5JTsWxdocPgS22jVHMRa
         TQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777874260; x=1778479060;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OMGqfti9ozqkswlDM2tiOauit1bHew2WxyC+HxqjqoA=;
        b=pUMWZKAfEJ9Y1CPgIt6upUteMZLlnXmx1O0kyS+j3O/yl2aN7eiF1QMcRot32gBOUQ
         5ba0r5LcU2NAOOmJgjTPKB+mtkpIFdvrUdsO1XB5VZJ+pKAvpwQ39vRrwbrf3gbeV4V1
         z4Rdy5w4oo9nBvSlVFcwbwopDBqb2iLkTBFVF7+TYO7EadKmBaa68NENFBVY39tplEou
         n+mJ6SPcdLhOZ/JVWViicJOZKzVB3NJO//RcQAWhoIuRuDEL6P6+vxwubW14Cj3Kl23M
         VJiOEaW2LoZL8pOs5RbsE/ZiyT80Md2lVPFOF4vct6G64diF/+94o0RGD/l4rDmVxu+m
         sxJA==
X-Gm-Message-State: AOJu0Yxb4/7E8UrRy4zGN7RgDzuGRYdAK8hPXnG4fP8lljTR4lzG3WNr
	nb1zmXLVbVp59kYkgRdHVoH7QcmPnsk7PEJnJkc1JJhbPfNHcZVD+mHMlzx6VQ==
X-Gm-Gg: AeBDies4IG6jeLHggojCbN4SD0N/ys8xfIf4ENBVXG6AlB67Mct9Ly9/AxQt3drskJW
	P0ADImnDMZ6SX4m8w/9QW7jYR1FRj3NVc0aXafnzJ22GDXMIzP7uwAhtXb4nFOOHNlPazYeQKq9
	ozknT42yU//x4EsmSTT3njHKqlNxOREd6mpxA2L2iuMyymsF1+Ni271AQPHyYjlDfgnJ3WEkcjJ
	LwbKbYCWkrUhDEk/Y/yPOB5JJt/d6eFk35qwPVEp1+JbIet9a+VSM1bIYZG626O5ZvuMHpcYLmb
	hz+XsXhFpzTcEo6vHQ3BuX83S7xalAJM1JKpVgeI6ZBHKopsLFe5k8K5bhA2piDrhaMNXWmmU0A
	wmdvbXblPmBEDURVeLmHzOgmuTGeE6Qkw7o5I9987bpJq44cIxeDRJnY3XZ+mxf+L/pAuQ6LyHd
	FGaPIGS94zjIUDPdFlN1wNPSMsehjjIV4xH7zkEUGpswCD7mbeE2pNUdP8Asg=
X-Received: by 2002:a05:600c:a111:b0:48a:8b02:ae91 with SMTP id 5b1f17b1804b1-48a9863cee3mr91471755e9.11.1777874260106;
        Sun, 03 May 2026 22:57:40 -0700 (PDT)
Message-ID: <021503ca-8a9b-4f9d-8b8e-81661572a018@gmail.com>
Date: Mon, 4 May 2026 07:57:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com,
 Demi Marie Obenour <demiobenour@gmail.com>,
 Eric Biggers <ebiggers@kernel.org>
Cc: Jan Schaumann <jschauma@netmeister.org>, iwd@lists.linux.dev
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan> <20260430071917.GB54208@sol>
 <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com> <20260501180028.GA2260@sol>
 <19837ef5-e5b6-45f4-8336-3ce07423dfb1@gmail.com>
Content-Language: en-US
From: Milan Broz <gmazyland@gmail.com>
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
In-Reply-To: <19837ef5-e5b6-45f4-8336-3ce07423dfb1@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

Hi,

On 5/1/26 9:24 PM, Demi Marie Obenour wrote:
> Cryptsetup needs CAP_SYS_ADMIN, but iwd definitely does not, and
> presumably BlueZ should not use have it either.

In cryptsetup, AF_ALG is used exactly in places where it does
NOT need CAP_SYS_ADMIN.

While I agree that AF_ALG is misdesigned (specifically, indirect
loading of kernel modules just on non-privileged user request),
it is used in real scenarios.

I can write a long story why it is used in cryptsetup, but long
story short:

- It is used for benchmarking, where we actually need kernel crypto.

As it will be used in real dm-crypt mapping later, benchmarking
userspace lib just does not make sense.
(Requiring CAP_SYS_ADMIN here is not such a big issue, and it is
a very rough test - but useful for relative comparison, not for the
real numbers.)

- It is used in TrueCrypt/VeraCrypt compatibility (at least).

This format needs to decrypt the header (first sector) with
the same algorithms as it is later mapped through dm-crypt.
Not everything is available in userspace (we support all historic
versions) and using AF_ALG was very convenient here.

By removing AF_ALG, you will completely break this format support.
including some distros (I think Tails uses that :).

We are using userspace libraries, but removing AF_ALG would be a pain.
It can be done, but it requires time.

> Cryptsetup is a special case because there are times when it may not
> be safe to allocate memory: if I/O to the swap partition is suspended,
> and the kernel tries to page data out to it, the system may deadlock.
> So calling into arbitrary third-party libraries might not be the best
> idea.  Thankfully, Nettle should meet all of cryptsetup's requirements.

The cause with the swap is not such a big deal in reality.

Nettle is NO WAY for cryptsetup (we have support for it as an alternative
backend, but it cannot be the default). You do not see the whole picture.

Thanks,
Milan

