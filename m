Received: (qmail 1988 invoked by uid 550); 7 May 2026 22:40:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32706 invoked from network); 7 May 2026 22:29:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20251104.gappssmtp.com; s=20251104; t=1778192938; x=1778797738; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c0u/jAaboUAoRh/GGQdJWYl+b+tOO0emt8YrevJSFn0=;
        b=CbXgk23a8VS5+0AgY29RjMrzTgk30hfks6F9lZ9+VyY6BNHaFj8h5rLxwP5ps0FCke
         Enq5yTyC8KDHpsFVSUv+p379OBVrlIpjR3s0CJYB+wWSpTnsQzXjrQrOWYYmDHmYTmO6
         ZtVuGEEjIprT0An+nWEplAUeYTPMCIv9c4w9/mBC/1ExdNaP59QaM0rs/mYilhM5ezs7
         ozAO4mhXiQpV4imuwVPRpFsagbKfuYU6PeSJRr6/sIZdQQi++F+7+0Sr0/xkleSQ2fAe
         WINZ0EddLndMRuX6zTIXinWR/irsGlMhfTOsa+G3+ejWhYJlu7ulCe5SHdeKn/ZOPjOo
         mv2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778192938; x=1778797738;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c0u/jAaboUAoRh/GGQdJWYl+b+tOO0emt8YrevJSFn0=;
        b=a/X0JXLNw3Xe15Ra7Qu139Gyt47mL8/Vb9U4eTYnQOPcwC/BUCzTi/jneBDlvK6Cyn
         OEA7OzzLQjwC3J0T0JnlX5CfUXTAx+7+5ZIKsN9GOeC4KAAIBzhHqTMr1j+MCj68rJFb
         cL/5b8kEtMvfrlYmM2VyaM8wyjomC81fm5FcFPFsmpssvc5QoZK2OQLcEF/SteNo6JlT
         xEVAGpsiobuagE7L/Xf0/JXEGmlurZc4yJReHBbXrL452ie5gNejq7NObsZ19jqB1qq8
         EM0XY2x5Fv6jF1mVmsDp5LxYEXJ59jtmM7bzstucD3CXlUN0DXA1vcnDQaWxmQfra4lW
         zEmw==
X-Forwarded-Encrypted: i=1; AFNElJ8A8gG41HPSU7mqTx1Qrxb9aaJ19bPbfU8vqb2/Ucp403BuOdj1C9OAnwaa/crmy3Xd5BJAXR9ajrzjF+o=@lists.openwall.com
X-Gm-Message-State: AOJu0YxMCyECY+pbmiIS/hq7eu3EE+IPvMvNKs20XL4088G5Zmbz1ghi
	/84GnRaV4PdJbfRxOoPz4dkNdBd5+OiK2Pr9wUpAEupGQgcBjy7e7O9enqPmCLKYirY=
X-Gm-Gg: AeBDiesvs8OlcNVvkJPoMuJ9bqodj7mbQ/vaTrNP8/esL8vo4fHJL8pIwgriOsokjbA
	2Y0/PtaukvqDgDF/Ysfw1q3o2chO72lfQPWdGQgjjNfmOD87DdfR9W6nWI59lMyzHjMLs8OZdY8
	Ul98LyQ3i+2ue3IXxCMTe1VD2viBVElbk/zR0k8jz07gUTLr7drKJAb2JOOL9HaAy+V4nCSB+Vs
	YrrJKJIknboLp1VuQDrzqdcPhy2frXR8t+HeCYOIsLa4kkzvUW5zF6iqgzX8D3M9M82UfxOmCW7
	O3c6MGdRZtCIqS8R4GiWfAmYkH+hsAZY2wSDAXq7sg/G9l6yOm2a/amziSNqViiDqcbNnpcpRII
	tRaP+5jg1lV9bt3z9m8+H6Z3TCCLb/DcCIEdzVH1qJV5HLZmR4a3hiw0Lu0FLva+CQ8GlWIlJLJ
	TSFP+rbFxIm9o7wUI1ZF/VXAqevoc4XsGgkdNY0kX0sX965RUHY29Xx4M0oRt11BOgNrQq2G2fZ
	syQKTAegHxYAnwqlsWB
X-Received: by 2002:a05:6830:3894:b0:7dc:e090:68a with SMTP id 46e09a7af769-7e1dea4d927mr6356597a34.0.1778192938180;
        Thu, 07 May 2026 15:28:58 -0700 (PDT)
Message-ID: <6e6f95c6-3880-4b11-858b-82c47d991d3f@kernel.dk>
Date: Thu, 7 May 2026 16:28:56 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
Cc: Mohamed salem Eddah <medsalemeddah@gmail.com>, security@kernel.org,
 Pavel Begunkov <asml.silence@gmail.com>
References: <CAMrV8J7FfiB0ptMZFU+EKdRt1NPgtTe_YJWPFw7AQdB-vAQ75w@mail.gmail.com>
 <2b8f2e56-15be-4732-baf5-7a3df4f8a1fe@gmail.com>
 <20260507174811.GA4838@openwall.com>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <20260507174811.GA4838@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE request: io_uring zcrx freelist OOB write

On 5/7/26 11:48 AM, Solar Designer wrote:
> On Mon, May 04, 2026 at 07:02:30AM +0100, Pavel Begunkov wrote:
>> On 5/3/26 12:00, Mohamed salem Eddah wrote:
>>> I am reporting a security issue in the Linux kernel involving an
>>> out-of-bounds heap write in io_uring/zcrx.c.
>>>
>>> This issue appears to have been addressed in commit 770594e
>>> (?io_uring/zcrx: warn on freelist violations?, April 21, 2026), 
>>> however it
>>> was not assigned a CVE and does not appear to have been included in a
>>> formal security advisory. As a result, multiple stable and downstream
>>> distribution kernels are still affected.
>>> ------------------------------
>>> Vulnerability Summary
>>>
>>> *File:* io_uring/zcrx.c
>>> *Function:* io_zcrx_return_niov_freelist()
>>> *Introduced:* Linux 6.12 (initial ZCRX merge)
>>
>> FWIW, it was added IIRC in 6.15, but not 6.12
>>
>>> *Fixed upstream:* 770594e (Apr 21, 2026)
>>> *Status:* Fix not yet present in stable releases
>> Did you trigger the problem or the warning in a new kernel
>> without the attached modules? Which kernel version / hash
>> was it? There was a fix for the scrub case, but otherwise
>> don't immediately see how that can happen. I'll take a look.
> 
> I only skimmed, but as far as I can tell Mohamed isn't the original
> finder of this issue and the report and PoCs are AI-generated, which
> could be why Mohamed is not communicating further.  It's becoming a
> trend - someone sends AI-generated report and doesn't communicate.
> Which doesn't mean the report is useless, but it does complicate its
> handling.

I'm pretty sure that issue was fixed by:

commit 003049b1c4fb8aabb93febb7d1e49004f6ad653b
Author: Kai Aizen <kai@snailsploit.com>
Date:   Wed Feb 18 17:36:41 2026 +0000

    io_uring/zcrx: fix user_ref race between scrub and refill paths

which is already in stable.

CC'ing in Pavel, who was inexplicably dropped from the emails, even
though he is the one guy that should indeed be on the CC list.

> Meanwhile, it looks like there's a blog post (by someone else? I am
> confused) on exploitation of this issue, with exploit files attached:
> 
> https://ze3tar.github.io/post-zcrx.html

I won't comment too much on this to avoid offending anyone, but I'm a
bit puzzled by:

"Once we have the address of modprobe_path (from KASLR step above), we
write our script path via /proc/sys/kernel/modprobe: c

int fd = open("/proc/sys/kernel/modprobe", O_WRONLY);
write(fd, "/var/tmp/evil.sh", 16);

This sysctl entry writes directly into modprobe_path in kernel memory
and is writable with CAP_SYS_ADMIN, which we already have via
CAP_NET_ADMIN on container configurations that grant both."

as surely the point of a local exploit is, in fact, to gain root in the
first place. If you already have CAP_SYS_ADMIN, what is the point?

But hey, someone wrote a blog post about something that sounds
dangerous.

-- 
Jens Axboe
