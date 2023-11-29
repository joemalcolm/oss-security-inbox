Received: (qmail 14033 invoked by uid 550); 30 Nov 2023 11:04:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16366 invoked from network); 29 Nov 2023 23:59:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701302342;
	bh=vYJFcsbpqPemGvwxlN+8WZ9egeuVjXesRv+Q8MrCHmg=;
	h=From:To:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type;
	b=ioGs8FJPJTqAOk93yI3cnGmoYdeFR/6+0MtnjHcnTXZ2Xs64HIw03OBkMhTAkpuIZ
	 IQHSjTIK8p9LLTdOoq2tABhu78fJ4faiafFu0D1b4Q68nw/k/ykz/MYlSEEWk8jX3e
	 MGltcdEbti8C7ZLCHFTlS0vJFjAIEQk/0OZFz+r/TdKYGvp49lNbWBCQqK4BkZ93A4
	 WyX/QkcgRQyWDa4HvB9TsHUWdWPUusluiBUuZ1dGfulaRLb+2Zsq7MhAFUvdKK79Bc
	 mgBT+HuidRB1vCvYZK0fm/PTo5AJWbrRt9I8ZoWn56ouMvzKqCMYh2rsgqRwmdi8K6
	 LSj6xQBLzjr+g==
From: Alex Murray <alex.murray@canonical.com>
To: Matthias Gerstner <mgerstner@suse.de>, oss-security@lists.openwall.com
In-Reply-To: <ZVthevPKLmczR1-B@kasco.suse.de>
References: <ZVc0QDRY04pR81cs@kasco.suse.de>
 <CAB=ivF-hcDEN3_tXk+4rUUwXpVAKYcmt+efkUpGgedPiA4CDyg@mail.gmail.com>
 <ZVn7eWAIy-zhDFJ0@dojo.mi.org> <ZVthevPKLmczR1-B@kasco.suse.de>
Date: Thu, 30 Nov 2023 10:28:55 +1030
Message-ID: <874jh4dscg.fsf@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] hplip: security issues in `hpps` program due to
 fixed /tmp path usage in prnt/hpps/hppsfilter.c

Hi Matthias

I just wanted to follow-up on this to see if a CVE was ever assigned?

Thanks,
Alex

On Mon, 2023-11-20 at 14:39:02 +0100, Matthias Gerstner wrote:

> Hi,
>
> thank you both for your suggestions. I just reached out to
> hp-security-alert@hp.com about this.
>
> There are a couple of other hplip issues I know of that have also been
> left unattended for a long time that I mentioned there as well.
>
> Best Regards
>
> Matthias
>
> On Sun, Nov 19, 2023 at 07:11:37AM -0500, Mike O'Connor wrote:
>> [removing security@hpe.com from the Cc:]
>> 
>> This is for hp.com product security, not hpe.com.  HP and HPE are two
>> separate companies, and HPE isn't the printer company.  
>> 
>> To report a potential security vulnerability with a HP product,
>> contact: hp-security-alert@hp.com
>> 
>> Both HPE and HP are CVE CNAs.  Here's HP's CVE CNA information:
>> https://www.cve.org/PartnerInformation/ListofPartners/partner/hp
>> 
>> 
>> HTH,
>> -Mike
>> 
>> 
>> :Thanks for making the community aware of this issue.
>> :
>> :Perhaps security@hpe.com can help to route internally to get a CVE issued
>> :and find the appropriate owners to fix.
