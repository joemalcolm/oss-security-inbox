Received: (qmail 24515 invoked by uid 550); 4 May 2026 16:08:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30459 invoked from network); 4 May 2026 11:28:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=terraraq.uk
	; s=20170701; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:From:
	References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
	:List-Post:List-Owner:List-Archive;
	bh=tBmdN9nM21XdooaZ8gmyno2rI6P2c/1yIGXhBwGy2lk=; b=usNRXy+vgoHovG6qyJdJDjXbUY
	oEEM1VQARXzOrXsvohB8WMCyMAfY/ySvxPI4hH/XV2EfXl9jBuf0fmTAiVbFyeBJfmZVwoVyuhuFQ
	znL/DXZIov7YwgreDmzPU9uNw/VLnPdjIc1WX5M8gZ7ZsFvSeSuM7FkQgIzKk7Hlgz6VmLtdKtQRG
	uGBu7U6SKP9KJRoLIxueYo3JU/w5t6i589mx8bffBDuE9UbgzmUr0zgP2unhaRgSwJcCxdH8VsAhb
	jVsDmXZAbb5zBOTFFAsWPu1mPP9KFTI4mJqnf4ZgLvfXJbXMS+EkfRv4Zdf43VK1iM4ZjoMbTqaop
	U0cCisKg==;
Message-ID: <f0be2b33-4f27-489f-85d2-1dfe9826e022@terraraq.uk>
Date: Mon, 4 May 2026 12:28:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan> <20260430071917.GB54208@sol>
 <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
 <cfe5a1f5-f7fe-44a5-8af9-8e4c8d68b3d7@terraraq.uk>
 <3a52a111-e961-4ac6-830c-31465a7d14de@gmail.com>
From: Richard Kettlewell <rjk@terraraq.uk>
Cc: demiobenour@gmail.com
In-Reply-To: <3a52a111-e961-4ac6-830c-31465a7d14de@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "mantic.terraraq.uk",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 postmaster@terraraq.uk for details.
 
 Content analysis details:   (-2.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On 02/05/2026 23:32, Demi Marie Obenour wrote:
> On 5/2/26 15:13, Richard Kettlewell wrote:
>> On 01/05/2026 16:30, Demi Marie Obenour wrote:
>>> On 4/30/26 03:19, Eric Biggers wrote:
>>>> But I also hope this finally provides some more impetus for AF_ALG to be
>>>> deprecated and removed.  It's a massive, largely pointless attack
>>>> surface which has been causing problems, including regular CVEs, ever
>>>> since it was added to the kernel in 2010.  And of course it's gotten
>>>> even worse lately, with LLMs now being able to find the bugs.
>>>>
>>>> Userspace crypto libraries exist.  There's no need to escalate to kernel
>>>> mode just to do some math.
>>>
>>> The only reason I can think of to keep it is for embedded systems
>>> with weak CPUs and crypto accelerators that are actually worth using.
>>> However, those seem to be very rare outside of things like routers,
>>> which run specialized distros like OpenWRT.  Even when the accelerator
>>> exists and is worth using, AF_ALG is certainly not an efficient way
>>> to access it.
>>
>> I have that use case, although fortunately it's in a context where
>> splice() is disabled. But the requirement is for access to the SoC's
>> accelerator - the interface doesn't need to be via AF_ALG in particular,
>> it doesn't have to offer software crypto (and it might be better if it
>> didn't), and it needn't be independent of the specific hardware
>> (although in the bigger picture it'd be a shame if it wasn't).
> 
> Can you provide benchmarks showing that the accelerator is faster
> than the CPU on realistic workloads?

The consistent improvements in latency and throughput started around the 
2Kbyte block size (10-20%) and improved as blocks grew, with around 50% 
latency reduction and 150% throughput increase at 250Kbyte blocks (which 
is close to our message size limit).

Obviously this reflects the hardware we are using (which has no AES 
support in the application cores), outcomes may differ on other targets.

ttfn/rjk

