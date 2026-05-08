Received: (qmail 24336 invoked by uid 550); 8 May 2026 02:09:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17849 invoked from network); 8 May 2026 02:04:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778205870; x=1778810670; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xF9EbFz8BRGfSnpNSUQFvW2eONaAzt4ByjVV0Faxz7Y=;
        b=apO7Ra+3pahTPDMyLsy/lv+Kvm/fhS44dXCV1FVjaqrjutL4vqTMc3dIqlt8sbJ0F+
         r2f3w2JxHLSRMkPXeyfX8YLEInaWOqB50uDb4PmANcfbF3g/7dfx6o0I4VqKjqBlheBt
         jcflab+vZhCbfO653167+R4R22AT+mLjRrmfU8CFF2aLx7LzfRMMtVZJo092GKiNIIIz
         ZQnyqsf9aBGxU89U3DKB7h80UnkcGLVSvDRfhh6gMiF37S06SCCXv46HelugpRCIXenQ
         vkKwhWSIh38JQkbcgg1SUIkAXx+XumMOqj8AKURhQLatwyIolrWWAquZ2dex1Ol849ln
         UXWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778205870; x=1778810670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xF9EbFz8BRGfSnpNSUQFvW2eONaAzt4ByjVV0Faxz7Y=;
        b=VuA5wEfOmLoAzEYXwGZSfvcE/0lySUFEakAef1pK9DUeZiec1O/OFmuKk4ATJDkDbU
         pccGCFt6sDOWPYlXSXYNWNT64t8laFduo9JlV+A/j614GAwN+wRm2B2Epc3bzjgxR6v7
         xd5fXYe1rjqmwikZhff6Bi0uCn3XTfr5ijHsRcFSy1HuFN6o6iaTJhZcSJxo9UC0qeKl
         e4oK+V1Bi9GDkGi5UZkMPWEzDSDVJMqKrmTFVnWZgeND3kuPyVxJAGNLzFcTDKCVONRp
         qCe+vuOFC6ITXvkCiKKUg68ZS+G5jJ1Fwip8HvxvbjWXALll0FXX4wR76FSd4W4rXbmi
         mliA==
X-Forwarded-Encrypted: i=1; AFNElJ8EKVznxiZoniq7f8NQSYGp+A55mEbrFZMU00DpMwxewH/tMaKRPtsAS4iwZH4OW1QjdxUJ5Tuu43cF4Y0=@lists.openwall.com
X-Gm-Message-State: AOJu0YzvxlQxW03wFVNZ8pHOdUlqlIFb1ol5DuBQJ+xAcL+K8S0YRxkd
	s6HsyTjsLzoRDD/a56m4dknOQngy2GALwaA7TPZODkQcLpIuab4cWvU3
X-Gm-Gg: Acq92OGCCQoqoAPrp+3WD3XgVUa4o8AKx83/nuigq66O7tqqfAnvhIqo2vyU1I32FM5
	I4JH1IE+01xVHs3/fekGDOe89EAC4hHBDqWCtF8lFD9FfA01NEjplEAYx3IgnJq6pWKzQxSyEFs
	oaRGlaeTGkRN8ml5G53lSZxNOy1GmbB78nKd6I92atJsHg+yYi5ph8TKOBmZHnzUm1/CAdX5kjK
	CVRrP++iAEoNOZM9eQrUQfxwHeTsQCgNRSimPPGAxdag9ksNNVIL7mYTpD2X8Pksuj5lwzN864Y
	JPvWmjJ7aI/jemDclyOp0kR2So23XxRCAZZuGN/euQc1ldn/Se59Bo9AuCmYZDhBQfErhqBNrOJ
	WtFiV4jAuZWifW/Ib1s7/r5hLPKzFdDBGs6aE7rosohISLCyLYJi60IzuCsBi/6Cp8DUuH5sGcI
	ZwfTJvta/JI2PAsOmotLtmIWSVAmQwxHD6Lq205c+J5wS5/APe1TgK2ffIyeXVKmjJmkfvxqrXB
	WgOp5QRpjGIAk25HRGLBuY5pU3sLTsLHH66i34jUjnIdFbZAyTWiw==
X-Received: by 2002:a5d:6950:0:b0:451:6770:575c with SMTP id ffacd0b85a97d-4516770577fmr10953321f8f.0.1778205869519;
        Thu, 07 May 2026 19:04:29 -0700 (PDT)
Message-ID: <a62d1b48-9e5f-4dca-bd34-dc86fbd97344@gmail.com>
Date: Fri, 8 May 2026 03:04:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jens Axboe <axboe@kernel.dk>, Solar Designer <solar@openwall.com>,
 oss-security@lists.openwall.com
Cc: Mohamed salem Eddah <medsalemeddah@gmail.com>, security@kernel.org
References: <CAMrV8J7FfiB0ptMZFU+EKdRt1NPgtTe_YJWPFw7AQdB-vAQ75w@mail.gmail.com>
 <2b8f2e56-15be-4732-baf5-7a3df4f8a1fe@gmail.com>
 <20260507174811.GA4838@openwall.com>
 <6e6f95c6-3880-4b11-858b-82c47d991d3f@kernel.dk>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <6e6f95c6-3880-4b11-858b-82c47d991d3f@kernel.dk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE request: io_uring zcrx freelist OOB write

On 5/7/26 23:28, Jens Axboe wrote:
> On 5/7/26 11:48 AM, Solar Designer wrote:
>> On Mon, May 04, 2026 at 07:02:30AM +0100, Pavel Begunkov wrote:
>>> On 5/3/26 12:00, Mohamed salem Eddah wrote:
>>>> I am reporting a security issue in the Linux kernel involving an
>>>> out-of-bounds heap write in io_uring/zcrx.c.
>>>>
>>>> This issue appears to have been addressed in commit 770594e
>>>> (?io_uring/zcrx: warn on freelist violations?, April 21, 2026),
>>>> however it
>>>> was not assigned a CVE and does not appear to have been included in a
>>>> formal security advisory. As a result, multiple stable and downstream
>>>> distribution kernels are still affected.
>>>> ------------------------------
>>>> Vulnerability Summary
>>>>
>>>> *File:* io_uring/zcrx.c
>>>> *Function:* io_zcrx_return_niov_freelist()
>>>> *Introduced:* Linux 6.12 (initial ZCRX merge)
>>>
>>> FWIW, it was added IIRC in 6.15, but not 6.12
>>>
>>>> *Fixed upstream:* 770594e (Apr 21, 2026)
>>>> *Status:* Fix not yet present in stable releases
>>> Did you trigger the problem or the warning in a new kernel
>>> without the attached modules? Which kernel version / hash
>>> was it? There was a fix for the scrub case, but otherwise
>>> don't immediately see how that can happen. I'll take a look.
>>
>> I only skimmed, but as far as I can tell Mohamed isn't the original
>> finder of this issue and the report and PoCs are AI-generated, which
>> could be why Mohamed is not communicating further.  It's becoming a

To be fair, he did reply, but I didn't notice that he dropped
all CC.

>> trend - someone sends AI-generated report and doesn't communicate.
>> Which doesn't mean the report is useless, but it does complicate its
>> handling.
> 
> I'm pretty sure that issue was fixed by:
> 
> commit 003049b1c4fb8aabb93febb7d1e49004f6ad653b
> Author: Kai Aizen <kai@snailsploit.com>
> Date:   Wed Feb 18 17:36:41 2026 +0000
> 
>      io_uring/zcrx: fix user_ref race between scrub and refill paths
> 
> which is already in stable.

Not even that, the reproducer couldn't ever work. I asked David
to run it to humour it with predictable results as well. I'm sure
Mohamed has never run any of that.

> CC'ing in Pavel, who was inexplicably dropped from the emails, even
> though he is the one guy that should indeed be on the CC list.

Urgh, I'm better to avoid commenting on that.

>> Meanwhile, it looks like there's a blog post (by someone else? I am
>> confused) on exploitation of this issue, with exploit files attached:
>>
>> https://ze3tar.github.io/post-zcrx.html

That looks like AI hallucination, I'd rather save my time
instead of taking it apart point by point. It seems like the
blog came from the same person, and, Mohamed, publishing a full
disclosure for something you think is a real issue before the
investigation has concluded is a sure way to piss people off.

> I won't comment too much on this to avoid offending anyone, but I'm a
> bit puzzled by:
> 
> "Once we have the address of modprobe_path (from KASLR step above), we
> write our script path via /proc/sys/kernel/modprobe: c
> 
> int fd = open("/proc/sys/kernel/modprobe", O_WRONLY);
> write(fd, "/var/tmp/evil.sh", 16);
> 
> This sysctl entry writes directly into modprobe_path in kernel memory
> and is writable with CAP_SYS_ADMIN, which we already have via
> CAP_NET_ADMIN on container configurations that grant both."
> 
> as surely the point of a local exploit is, in fact, to gain root in the
> first place. If you already have CAP_SYS_ADMIN, what is the point?
> 
> But hey, someone wrote a blog post about something that sounds
> dangerous.

but at least it's better than "step 1: insert a broken module" as
it was in the original submission :)

-- 
Pavel Begunkov

