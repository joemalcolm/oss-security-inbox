Received: (qmail 8031 invoked by uid 550); 23 May 2026 01:55:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7995 invoked from network); 23 May 2026 01:55:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779501315; x=1780106115; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1Qv6px11FXjPqBFqZ3hnxwmHqy2DjdejKY0V4hRAFZU=;
        b=LPFO4HrsAbgCYxIdh5c+XiEGT4NoNFkmMrAmHKSa3EfDZAre8QICXAMPthH7qWtmYG
         7nXEsHluV3/nTT8cOmOtt4xzp5X1ns4TNTkvaTKr4ebpKZY7rMTAcvpqV7775IJuVrnf
         K3a9ew6kIfTEPCRyRM8/Wg/ro70A7Js9CLlV8HmTqg2wGsbB5jjpuXhpHK9twXh+T7O8
         KNoHRCFcJP10joMG7xpnv7Yb9q4IZS3vqUCvhPpaNLliXOTMmm8AanIgNxamo5qLtBkG
         /A4X9dzgq1niPouP22ADtBjUrTT5OCzp2ZTFa0aH21sjmNsO+OeELRF2Ba0csxp1bzLS
         m65A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779501315; x=1780106115;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Qv6px11FXjPqBFqZ3hnxwmHqy2DjdejKY0V4hRAFZU=;
        b=WnKENmxs7K9JR09lrKYMyR/+A/uwYA/eMHpiBPO7XU338E4OoDTZd/+eCW1OZxqeP/
         8ENEIsDELsw26RP4gjVO+lKjMvT+OLgsN/oQ6fv6+7YUd4714eLzSu4tjzFzIcCDFBA5
         qAJIp74IgOaNBawuHfwyRIlydgzjVOUf2znnZHq98Tz79kIB64HvVvhDq7xjzwvtPtUd
         qt/v+O42medaxvMw3J4KPoLJuIhcPpAU7ZeA2Fsv1++o0S2RnYCk/3igE1G44TH/qsxa
         9GK44AR6PgMlbpgwkuLSPs/HGiJqX5NFaIU+PHoPK1/YRp56k3KoX9Dn+OTXHb+gWwu4
         2dYw==
X-Gm-Message-State: AOJu0YwFX5lecDRPaHTp1Sk4tqgO7g54e3WKvIi3r53Uh5M71MNsIJiR
	13W6wdzkWWeKZkswr6RJwO2BszHQuNLRQI87ki1uoAJnpAilpqsf6MjAd0zqCcVwd7k=
X-Gm-Gg: Acq92OG3E4pSPRRuJf1AHEczeWfyi1PnZTMr5gMptGPcv4r3++UDIlNGojjhUNogBmg
	lEqhLmsN1rnEwmdndxCJACHkPEjr+0+VHyd4QCrURJdnW1U1ZcC235dHk4If1+zB1UK/Dwv7+9M
	iEBdly25GQXNV0swqp1and+nNEOJIAAF0dJ37xyUksdPwC/zyp3TJTgxz1Y5EYcz4fvfmIRtcZn
	GmFsvPZsH+tn1uUATbcWOl+V/1kr+a4pBbLdnJqnXxct9gnpgz9XvUdJXVQzGtDs//rkDshXMM1
	+ZeQJTBPShgv8j7RlD2+DCI4I2coULM6lauGTJwtiTMlEA5IYTYvy9ZTTWZCewxyxvRpOfIX+uV
	yG65f9OKF962kKhwx/cqTpAly4xSHgB4pzi5yGrR623+EVSxig7HUGvV1kYlCA1jnjPix6QS4lZ
	LuXLK+x+X2T1BDnMYTmftu
X-Received: by 2002:a05:6870:3807:b0:43a:e293:7eeb with SMTP id 586e51a60fabf-43b5afc4aa0mr3529370fac.37.1779501314769;
        Fri, 22 May 2026 18:55:14 -0700 (PDT)
Message-ID: <bab07bb5-aa3c-4a06-b8a7-c33efd179b41@gmail.com>
Date: Fri, 22 May 2026 20:55:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, ROI AI <sales@roiai.ca>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <ed61471e-5674-4ad6-9b4c-729027f1073f@oracle.com>
 <19e48ffc072.20eeee58126634.4537984379441699684@roiai.ca>
 <19e494d88f3.fa2e5b9128090.8772053311417055861@roiai.ca>
 <f63f5a7e-6485-4bdc-866d-ab294a22536d@gmail.com>
 <19e4e2af936.4b7051cf156989.7683180300004644154@roiai.ca>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <19e4e2af936.4b7051cf156989.7683180300004644154@roiai.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

On 5/22/26 00:31, ROI AI wrote:
> I understand the costs, but simply hanging all the dirty laundry out is counter productive.   Working a change in public without going into sensitive details is reasonable, but pushing vuln reports to public is careless.
>
> [...]

In case you have forgotten, this discussion *started* with a maintainer 
suspecting that LLM-detected vulnerabilities are likely to be found by 
other LLM users, and Clemens Lang of the RHEL Crypto Team responded on 
April 29:

> As a further data point backing up this theory: We’re seeing duplicate reports of the same issue found by multiple independent groups that use LLMs, within the embargo period.
In short, the argument here is that security issues found using public 
LLMs should be assumed to *already* *be* *public* and worked 
accordingly.  The above quote shows the prudence of this assumption, as 
*multiple* LLM-using groups have reported the same issue while the 
initial report was under embargo.

All it takes is one blackhat using a similar LLM and you could have an 
in-the-wild exploit.  If working under embargo has a time cost, then the 
prudent solution is to refuse embargo for LLM-discovered issues and 
complete a patch on the fast public path, because *you* *do* *not* 
*know* who *else* may have used the same tool and *not* told you about 
their results.


-- Jacob

>
>
> From: Jacob Bachmeyer <jcb62281@gmail.com>
> To: <oss-security@lists.openwall.com>
> Date: Thu, 21 May 2026 21:02:51 -0700
> Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age
>
>
>
> On 5/21/26 01:51, ROI AI wrote:
>> Also the entire nonsense about making the found issues public - this is absurd and just exacerbates the asymmetry problem.
>>
>> By keeping the reports private, the OSS teams can deal with the issues more on their timeline.
>>
>>    By making them public, they add timeline pressure and enable attackers.
>>
>> Why are you making it harder on yourself?  It is the opposite of what you want to do.
>   
> You apparently do not understand.  Most projects take keeping embargoed
> security issues private rather seriously---and that *itself* has costs.
>   
> Further, the key issue here is the question of whether those costs have
> any benefit when the issue was found using a tool to search for issues,
> due to the risk of someone *else* using the same tool and finding the
> same issue.  If that other person is another whitehat, you get a
> duplicate report.  If that other person is a blackhat, you get an
> in-the-wild exploit while you were carefully maintaining an embargo.
>   
>> [...]
>>
>>
>> From: ROI AI < mailto:sales@roiai.ca >
>> To: "oss-security"< mailto:oss-security@lists.openwall.com >
>> Date: Wed, 20 May 2026 22:26:21 -0700
>> Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age
>>
>>
>>
>> People are shooting the messengers here.   The fact is - we are going through a generational security event due to the advancement of LLMs.
>   
> Maybe... we are definitely going through a generational event with the
> amount of "AI" slop that has buried maintainers of major packages.  Have
> you forgotten already that curl had to cancel their bug bounty due to
> excessive "AI" slop submissions?
>   
>> It is also both trivial and extremely effective to use Agentic analysis to filter security reports.
>   
> You advocate that maintainers blindly trust systems that are *known* to
> be incapable of precise analysis.  I understand talking your own book,
> but there are serious externalities here and I cannot let this go
> unanswered.
>   
> What if that "Agentic analysis" incorrectly filters out a report of a
> genuine issue?  Now the issue does not get fixed...
>   
> And just how effective is that analysis supposed to be at filtering out
> "AI" hallucinations?  Remember that the *same* hallucination-prone model
> might be doing the analysis as made the bogus report.  How, exactly, is
> a model supposed to recognize its own hallucinations?
>   
>> As for 'duplicates', people are claiming this when I have seen little evidence.  I reported a dozen or so to one major project and no one has yet claimed invalid or duplicate.
>   
> The claim came directly from someone who *works* with those issues and
> manages inserting them into a bug tracker.  I am inclined to trust their
> experience over your hand-waving dismissal.
>   
> You might also want to realize that "AI"-generated submissions are now,
> in many projects, sent straight to the bit bucket, especially if found
> to be invalid.  You should not expect a response informing you that your
> report is invalid, as most maintainers have likely stopped bothering to
> send those.
>   
>> Moreover, if 'duplicates' are found, then that is a good signal for prioritization.
>   
> Maybe, if only in that duplicate reports indicate that a particular
> issue may be "low-hanging fruit" and therefore already quasi-public.  In
> other words, duplicate reports could be a signal to dump the embargo and
> move faster to fix the issue.  (Remember that working under embargo has
> costs?  *Those* *costs* *can* *extend* *the* *time* *to* *patch.*)
>   
>> Let's stop talking about how the vulns are found and start fixing them with urgency.
>   
> Know what?  This reads like "AI" slop... and now I look at the source
> (< mailto:sales@roiai.ca >) and realize that I am probably debating a slop
> machine tasked with promoting a product.  I will send this anyway, for
> the benefit of my fellow humans who will read this discussion and who
> might---just might---recognize your marketing efforts as the slop they are.
>   
>> ROI AI
>>
> -- Jacob
>>
>> From: Alan Coopersmith < mailto: mailto:alan.coopersmith@oracle.com  >
>> To: < mailto: mailto:oss-security@lists.openwall.com  >
>> Date: Wed, 20 May 2026 10:52:37 -0700
>> Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age
>>
>> On 4/28/26 07:58, Jeremy Stanley wrote:
>>> I'm sorely tempted, both due to the increased volume and the risk of premature
>>> disclosure, to just assume that any vulnerability reported as a result of
>>> research using an LLM is trivially discoverable by others, and give up trying to
>>> pretend there's any point to working it under embargo.
>> Other maintainers under similar floods seem to agree:
>>
>> Linux kernel:
>>    - https://lkml.org/lkml/2026/5/17/896
>>    - https://docs.kernel.org/process/security-bugs.html
>>
>> DNS servers (BIND, Unbound, PowerDNS):
>> - https://indico.dns-oarc.net/event/56/contributions/1233/
>> - https://indico.dns-oarc.net/event/56/contributions/1233/attachments/1180/2539/presentation.pdf
>>
> Confidential communication. No warranties or commitments unless in a signed agreement. If received in error, notify sender and delete. Unauthorized use prohibited.
>
>
>
>

