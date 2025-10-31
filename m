Received: (qmail 17753 invoked by uid 550); 31 Oct 2025 13:06:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7948 invoked from network); 31 Oct 2025 10:07:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761905224;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8t6AHbWYo8f88Hr9OsVKRCN7VmkgPmr2AetKy4DssMM=;
	b=SqBC1c61O8Q1sNW86PueuIaz/TTkugcWWcfUYnExCNSrK8P9p22n7zmo8Xi01NpjkHkaCQ
	7uhJkmkZVgl+tYGXMWqOvpmXjGvKURhfDAP474DJo9slPMswikhCrpLlDtPyWeC2nVEK49
	t3nXBP4r5pjtD4Gfq4U4g5pQwLd6fWY=
X-MC-Unique: LS4zHeNfM2mivFHPJ7Vvsw-1
X-Mimecast-MFC-AGG-ID: LS4zHeNfM2mivFHPJ7Vvsw_1761905221
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761905220; x=1762510020;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8t6AHbWYo8f88Hr9OsVKRCN7VmkgPmr2AetKy4DssMM=;
        b=ssS4BVkLaJTp99HGCDbzFiK8s6nIfTuzMLWT7EMfJXMjh8+26PUh9QeRAx3pa3hgv2
         CyxLbDHvDc89DN3YgRJutBy6nR+WFKBDAMhTWnr7vJ6sV84BJ2k0op+kYaCTnL0MWBvq
         s4Z0l5gcBpArxBU0cWYymHttREf849Y7HOo1clpHPWXKTTyCRAh33+bx9DWBtJJt1CCZ
         o7MSJIYu1zeGfswbpegddpwp2E8RHn62ggsD9685Phmz2w/rWk3i1mh2IqsBOLVt3kT0
         68obPmTjOxWckbw5XyQS0/8tHh9ALxlKU2CIDTPbQyHc/bv+ycQfO1ckk7mbhAxxBJZN
         jvmg==
X-Gm-Message-State: AOJu0YwDmXi3SkaBQfU2b0mp8oH1iI1/5tp3nuSbSYaQLTuTz+O6oXPW
	CYpORvEX40C6aMv/b4TA7hwFNuLTIAaQ+ynQZ4/GVYCnOfcM01sboJHeoyFJI/rsiWcseSXu2Ll
	r+0maRkHX4PeY7tQavszuJCJWmCzMwwGMeInWL9U4US0GN0l5l5JF/zp92jr9Wcj82sUnX7SMvR
	RRNDNbl5zNL50Vtjip10ocGh3jngwfcIC7A9s8Gz9zZHt9KtCNi38jpQ==
X-Gm-Gg: ASbGncuaYjIhFSwyOvwuOE6XnBoU3rcRhOVvIbPBOKAWl3gURel8xT3IcvblQ5evoWx
	nKC0RT7EJahEWLJdYV88sVdDjUTCus2l65ryYQ0EXues7r0A5muvsBmUImuncD/3ZA8MPG2uC5o
	8+yixaykMTxzCovb3hVuI58ACCGIy1mm0ufPXWsNDZ+hnr0qnuZbUmpuwr1OFYmt9IWVk07Xcr4
	4EQwS4/Q43GlAdAXLG70lQIVCn2ZJN2awaSrLxOgDNof1RXwPjX7xJOTfg5dGDxPvJOeVI0G4Dw
	9CUn+ZGE9TOJVknQZ3Yje+wLhOAPwEiZB1Q3Ao1mofm+UC224aVzqbCKAK1U/6PE+mnD6ryLXBI
	=
X-Received: by 2002:a05:600c:841a:b0:471:672:3486 with SMTP id 5b1f17b1804b1-477307d7648mr26795315e9.15.1761905220522;
        Fri, 31 Oct 2025 03:07:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPjn9SR1iwQNTwfCBtW2RV4TiudJvLTTicDhbaBCTM7yqg/9vrbJ3iTFAqcjSelfQkJ0AX+A==
X-Received: by 2002:a05:600c:841a:b0:471:672:3486 with SMTP id 5b1f17b1804b1-477307d7648mr26794925e9.15.1761905219960;
        Fri, 31 Oct 2025 03:06:59 -0700 (PDT)
Message-ID: <eba4214e-0ba3-454a-8450-71d9e8943aaa@redhat.com>
Date: Fri, 31 Oct 2025 11:06:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
 <aP-rxft9ra58z9EZ@yuggoth.org>
 <CA+qj4S-=TtjPN5Us5tva1TUo7a2MJKzpXweiQCM=QLMwcq5Xjw@mail.gmail.com>
 <6c9a4094-6af3-4aa3-940d-0d19505da3b1@pipping.org>
 <aP_L7mY0OXB2iDmk@symphytum.spacehopper.org>
 <9eefb12f-5de8-4638-a4e8-b0c309e81cec@pipping.org>
From: =?UTF-8?B?UGV0ciBNZW7FocOtaw==?= <pemensik@redhat.com>
In-Reply-To: <9eefb12f-5de8-4638-a4e8-b0c309e81cec@pipping.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0EycsfVzG-j_OhDv2I-v4MySCIlN1nOf81XBfuiXf3U_1761905221
X-Mimecast-Originator: redhat.com
Content-Language: en-US, cs-CZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

If it is security issue, it needs to be rated correctly. It is okay to 
assign CVE ID to issue, even if it is low or medium severity. Yes, we do 
not backport medium or low CVEs always, especially if fixing them in 
older versions is complicated and requires non-trivial rewriting.

We would backport even _important_ issues without CVE ids into releases 
with _full_ support. But it has to have known reproducer and have no 
simple workaround in configuration. I do not think this is such case.

If this is a problem in configuration generator, then fix the generator 
or validate inputs from the user.

Petr

On 27/10/2025 21:40, Sebastian Pipping wrote:
> Hello Stuart,
>
>
> On 10/27/25 20:45, Stuart Henderson wrote:
>> On 2025/10/27 19:51, Sebastian Pipping wrote:
>>> Also, fixes without a CVE will not be backported downstream.
>>
>> That depends on the downstream.
>
> I'm happy to learn which downstreams backport security issues
> without a CVE, in practice. Do you have an example or two?
>
> Thanks and best
>
>
>
> Sebastian
>
-- 
Petr Menšík
Senior Software Engineer, RHEL
Red Hat, https://www.redhat.com/
PGP: DFCF908DB7C87E8E529925BC4931CA5B6C9FC5CB

