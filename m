Received: (qmail 29758 invoked by uid 550); 8 May 2026 16:04:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20423 invoked from network); 8 May 2026 12:34:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20251104.gappssmtp.com; s=20251104; t=1778243645; x=1778848445; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zs1JSBnYMJ93Xp0xhGo617gYklY23k2ZqtphwKTvfq4=;
        b=GaxY9vOMTDd+mtMXBC8PMpL3NK/mqmE+rphwmnuWkdtQPINPhgkWa35ShOeWvRt2u9
         2DT5s5jqsr4c4iAj77+iqBC77N4THeeLcIWbGn7Lcwmxj+ClS1GzSb3VVsqTpDfY89bc
         mWomkDCfM6yqNak/aqVBEYJHsZ4YxlfnoYJ2o173rR3qCeiNkEh+lWFyAuD17+F6Tzle
         /qDqMr1SvqBHErdANMlv/eoH/gZoKqX79a865IdYIouhP3FnvQT7G8Wa6a+AY9EdQoes
         Ag9gxF6dsmk174bIFIGXka6Dnp96RR3N4NEEITOsJkZ00oIDi+m4ieoLUIhjSoTvfqFg
         LHHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778243645; x=1778848445;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zs1JSBnYMJ93Xp0xhGo617gYklY23k2ZqtphwKTvfq4=;
        b=jIKe7OKnKFAy3un4IEqpQQoFglAOYb7sGr08riuOGQaiuxsAIkHk9jUZixrrIhcWH3
         0VN2rJxYpC/Hvk9fkBgWM6e4L8xZoM7cRpGEz2F8ebBopiB8U7ZEDq2YJhykn5LOT8MT
         jy2cM7V3lRCPk7XfmRJ17fqZ5EjDjw87TlhNYSzmQQibhmuhYeAIGDZ9lFbVEzJ4Xrkg
         M4/rGHdU/0jOy39oHNeYHBReKktK4AsswW8hYMMSHOl6j9Ld9FmSrW3v2F+c2hL9MkCC
         rvps/qiUJ8jluH0E6WQunpuTop/3HuMf5b8zQjU2+eewwI4z9hLsC2VvKP6A1ywXZavm
         k86g==
X-Gm-Message-State: AOJu0Yx5PXoYFffYBnX0TwRUjreOvf5XXEX0i2rOBoh3vYrWOoGNmF+J
	huG8tyFDA4Yvpw4UDG8b6+rPqEZT2AmR/Qsmk6f1J9kVCRcCbDA2FpB9CKPjM+te6DU=
X-Gm-Gg: AeBDiesM8gei03dWgK6BMbaRDT+x8dlqMP6GWjz/wmJMBtOeTRLFjXVEXdwfPcKYpIf
	nEFDpu9eZh73UVtno++3DQf3k1nKlwB7V1VCw7xCZIVOVbMeE5xOxjFtrjFQkaIcuAhHKzkw4to
	YHpm6g+CdeAJJqNHG69NZuNWF7dWwf03X9SGjj0RcyhlHOWuosclWtZT9oxrgJJCFRus2WBv502
	WuZbFuvl3A+8NOZ5bKbhwLCsPeA3k9QIR/nCF2EacRBwGwh6TH28Xy0Bwd8+0F6KrQ7D2xrlQbS
	EfDE4hLOe8VD7vaAaQN4N9NGwNTk3F3EJFeCR8ogUoAGE1BzibSOD5PA16eRfP0vfiUgSkC/udL
	TUJhoqR7BHsX1+SnSXJep4BFqX7SsOjzdfvsgj2dveEQbDRihMEova6eE8b1vvGEytPLLgllmiB
	z+SAKTj1xcaN6Adbyx8FY1bjx1yjIYoF46slaMxFp1h5MRbtJrq63N9KJ5kCwupTltNJnYMuVtA
	Oxn9cFOnw==
X-Received: by 2002:a05:6808:300c:b0:47b:bd7b:10de with SMTP id 5614622812f47-480420dcf12mr6785583b6e.7.1778243645257;
        Fri, 08 May 2026 05:34:05 -0700 (PDT)
Message-ID: <4a1d2a85-0e44-4d90-9610-9c96a10f9805@kernel.dk>
Date: Fri, 8 May 2026 06:34:03 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,
 Mohamed salem Eddah <medsalemeddah@gmail.com>, security@kernel.org,
 Pavel Begunkov <asml.silence@gmail.com>
References: <CAMrV8J7FfiB0ptMZFU+EKdRt1NPgtTe_YJWPFw7AQdB-vAQ75w@mail.gmail.com>
 <2b8f2e56-15be-4732-baf5-7a3df4f8a1fe@gmail.com>
 <20260507174811.GA4838@openwall.com>
 <6e6f95c6-3880-4b11-858b-82c47d991d3f@kernel.dk>
 <20260508023240.GA8796@openwall.com>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <20260508023240.GA8796@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE request: io_uring zcrx freelist OOB write

On 5/7/26 8:32 PM, Solar Designer wrote:
> On Thu, May 07, 2026 at 04:28:56PM -0600, Jens Axboe wrote:
>> On 5/7/26 11:48 AM, Solar Designer wrote:
>>> I only skimmed, but as far as I can tell Mohamed isn't the original
>>> finder of this issue and the report and PoCs are AI-generated, which
>>> could be why Mohamed is not communicating further.  It's becoming a
>>> trend - someone sends AI-generated report and doesn't communicate.
>>> Which doesn't mean the report is useless, but it does complicate its
>>> handling.
> 
> I'm sorry Mohamed for just assuming you didn't communicate further; I
> got too used to send-and-forget kind of vulnerability reports lately.
> 
>> I'm pretty sure that issue was fixed by:
>>
>> commit 003049b1c4fb8aabb93febb7d1e49004f6ad653b
>> Author: Kai Aizen <kai@snailsploit.com>
>> Date:   Wed Feb 18 17:36:41 2026 +0000
>>
>>     io_uring/zcrx: fix user_ref race between scrub and refill paths
>>
>> which is already in stable.
>>
>> CC'ing in Pavel, who was inexplicably dropped from the emails, even
>> though he is the one guy that should indeed be on the CC list.
> 
> I'm at fault for dropping Pavel.  The oss-security list adds Reply-To
> pointing to the list, which at least with Mutt replaces what's in From
> in reply-to-all, and I forgot to override that.  I then realized, but
> thought (maybe wrongly) that since Pavel had replied to the thread he
> must be either on the list or on s@k.o anyway.  Sorry, and thank you
> Jens for re-adding Pavel.
> 
>>> Meanwhile, it looks like there's a blog post (by someone else? I am
>>> confused) on exploitation of this issue, with exploit files attached:
>>>
>>> https://ze3tar.github.io/post-zcrx.html
>>
>> I won't comment too much on this to avoid offending anyone, but I'm a
>> bit puzzled by:
>>
>> "Once we have the address of modprobe_path (from KASLR step above), we
>> write our script path via /proc/sys/kernel/modprobe: c
>>
>> int fd = open("/proc/sys/kernel/modprobe", O_WRONLY);
>> write(fd, "/var/tmp/evil.sh", 16);
>>
>> This sysctl entry writes directly into modprobe_path in kernel memory
>> and is writable with CAP_SYS_ADMIN, which we already have via
>> CAP_NET_ADMIN on container configurations that grant both."
>>
>> as surely the point of a local exploit is, in fact, to gain root in the
>> first place. If you already have CAP_SYS_ADMIN, what is the point?
>>
>> But hey, someone wrote a blog post about something that sounds
>> dangerous.
> 
> Oh, wow.  That is indeed ridiculous, and puts everything else in this
> report in (greater) doubt.  Not only would that require privileges to
> write into that sysctl, but also why determine "the address of
> modprobe_path" if we were going to just use sysctl.  The actual code in
> zcrx_lpe.c tries to determine the address, but then does not use the
> address, and does not use sysctl either.  So it would not do what's
> claimed even if run as root, as far as I can see.  Note that "mp" is a
> local variable that's only checked for non-NULL and not passed anywhere:
> 
>     uint64_t mp = kallsyms_addr("modprobe_path");
>     uint64_t kt = kallsyms_addr("_text");
>     if (mp) printf("[+] modprobe_path @ 0x%lx\n", mp);
>     else    printf("[!] modprobe_path unreadable (kptr_restrict)\n");
>     if (kt) printf("[+] _text @ 0x%lx\n", kt);
> 
>     time_t t0 = write_evil_sh();
>     printf("[*] evil.sh written (t0=%ld)\n", t0);
> 
>     if (method == 0 || method == 1) method_a(ifname);
>     if (method == 0 || method == 2) method_b(ifname);
>     if (method == 0 || method == 3) method_c(ifname);
> 
>     printf("\n[*] dmesg:\n");
>     system("dmesg 2>/dev/null | tail -20 | "
>            "grep -iE 'warn_on|bug:|oob|free_count|zcrx|niov|kasan|panic' "
>            "|| echo '    (nothing)'" );
> 
>     if (mp) {
>         printf("\n[*] modprobe escalation...\n");
>         trigger_modprobe(t0);
>         escalate(t0);
>     }
> 
>     printf("\n[*] done\n");
>     return 0;
> 
> So AI slop it is.  The question is whether there's any substance here?

As far as I can tell, none. There was a real bug which I referenced
higher up, fixed by 003049b1c4fb8aabb93febb7d1e49004f6ad653b. Which
is from 3 months ago and is in -stable. Flagging some WARN_ON_ONCE()
sanity check thing as any kind of real fix is, indeed, nonsense and
just shows what kind of real thought went into this.

-- 
Jens Axboe

