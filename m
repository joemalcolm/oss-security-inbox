Received: (qmail 3291 invoked by uid 550); 25 Sep 2023 17:45:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3669 invoked from network); 25 Sep 2023 17:10:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=citrix.com; s=google; t=1695661806; x=1696266606; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DXoxGg8/edd7V85cpJeS/FIzi4++ezVemojiqZtOlWI=;
        b=mkc8/rV37ulJJoT/aOaolyN0T2J8Qt68a9qPapa8AepV545W713jyxNOP711MtPRLM
         wxPISQdaJUVLhFUywn9gJSWakC+BfKJ/W+YgCLTyg69UiWp9ZX/gJq7OHP3R/BtoZF33
         i224sfxhTVVRZuOQ6H4pIV0QGwimWMAdvggyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695661806; x=1696266606;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DXoxGg8/edd7V85cpJeS/FIzi4++ezVemojiqZtOlWI=;
        b=rR5UQyxofWUBYBUmiP7ms9dICPe5zALOHW2XK7fINCNJWjzpaVA9Z+O16PQKKnFyTQ
         /1QXwXSSMlXkS3LTQXYYrbTZqQn6ubdb6Lecm3EtD3QpGdEPQDrm1Sn2MplCo+2bZp2F
         JX2292b9gMg70JzNhzLnOBZCiNaJ9VGfgE7EFrC0Kg1Cn5l4aPT1tP/EhbimAIDY09kg
         lD4BWNz3VCzzOLCoRrVju8lulruQPMoNCZgvfgcxJrBCIB7M8PYrrZWJFwnSIFV9KcK1
         9FmUR1iIOeJI6Sr8RO5l3whjztwiiIbd/vYUVWrRd9SO2fH2ECW91HNeIj/6d8zuIvPb
         geuQ==
X-Gm-Message-State: AOJu0Yx6fD6qRz6F1YsxIg2gqnziF+sm3e8xMAC3JW8K7mQYMC5e4fYb
	IbTOiletu4L73Rk7OP/7+lJ/ytVO9siNITozNK8=
X-Google-Smtp-Source: AGHT+IGru1xk4butwscv7Vis6B/9kNJMO113LOGuAGWf+vTtfu4zTRY2jzizuxkAhQ0dPuddj8fUYw==
X-Received: by 2002:a05:600c:28f:b0:404:4b6f:d70d with SMTP id 15-20020a05600c028f00b004044b6fd70dmr6984311wmk.17.1695661806492;
        Mon, 25 Sep 2023 10:10:06 -0700 (PDT)
Message-ID: <70e568d7-9e09-a1a9-030f-40473447a619@citrix.com>
Date: Mon, 25 Sep 2023 18:10:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-GB
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
Cc: "Xen. org security team" <security-team-members@xen.org>
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org>
 <20230925163652.GA6750@openwall.com>
From: Andrew Cooper <andrew.cooper3@citrix.com>
In-Reply-To: <20230925163652.GA6750@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) -
 x86/AMD: Divide speculative information leak

On 25/09/2023 5:36 pm, Solar Designer wrote:
> Hi,
>
> Thank you Xen security team for indirectly bringing the various CPU
> issues in here.  This is very helpful, as your messages on them serve
> two purposes at once - informing the community about issues fixed in Xen
> (so directly on-topic here, with Xen being Open Source) and about the
> CPU issues that typically also need to be mitigated by other projects.
>
> On Mon, Sep 25, 2023 at 04:05:37PM +0000, Xen. org security team wrote:
>>             Xen Security Advisory CVE-2023-20588 / XSA-439
>>
>>              x86/AMD: Divide speculative information leak
>>
>> ISSUE DESCRIPTION
>> =================
>>
>> In the Zen1 microarchitecure, there is one divider in the pipeline which
>> services uops from both threads.  In the case of #DE, the latched result
>> from the previous DIV to execute will be forwarded speculatively.
>>
>> This is a covert channel that allows two threads to communicate without
>> any system calls.  In also allows userspace to obtain the result of the
>> most recent DIV instruction executed (even speculatively) in the core,
>> which can be from a higher privilege context.
>>
>> For more information, see:
>>  * https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7008.html
> The above link is wrong - it's for CVE-2023-20593 Zenbleed in Zen2.
>
> The correct link for CVE-2023-20588, the DIV bug in Zen1, appears to be:
>
> https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7007.html

Oops.  I thought I'd fixed that, but apparently not.

You're correct.  I'll issue an update in a moment.

>
> While I am at it, here's the corresponding mitigation in Linux kernel:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=77245f1c3c6495521f6a3af082696ee2f8ce3921

Not really.  That patch entirely misunderstood the vulnerability.  I
went through several rounds of getting AMD to better-understand their bug.

Linux's fix was rewritten in
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f58d6fbcb7c848b7f2469be339bc571f2e9d245b
and this implements the same logic as I implemented in Xen.

It's worth noting that because AMD did not allocate a $FOO_NO CPUID bit,
there's no ability for a VM to figure out that it might move to
vulnerable hardware and therefore should engage the workaround.  The
best a VM can do is best-effort based on whether it looks like it's
booting on a Zen1 system.

Also the cross-thread nature is also poorly reported in public.

Thanks,

~Andrew
