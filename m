Received: (qmail 16185 invoked by uid 550); 22 May 2026 04:03:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16158 invoked from network); 22 May 2026 04:03:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779422589; x=1780027389; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xTyhQ2jjSEJPqwYfn77VgBi3oLT1dzilkXHvkLGFVrQ=;
        b=UQMczLaO3sXZlC4Ihbh7EjBbFQCLT5Ifn/riM3zCQbU3Ak4sof+Ze9whx0F5KQEqRa
         IQW4gYND13Ibwmysv7WkSNJElRC9PupEOJlYDbb4UrAf/72w4R5LHe5XWabnz7pbJDHc
         hPt6CDl/BbLHK6bC4jGG30OOPYwc5kpRzRk/MnJbdsLdYKA6I2JeC4mluguN9CutHDO3
         O9SAA/4KPnak9CqoUAO3Fi3RHlJJVyEdRCx1BYBrWeZhf0bjBvEl1g3yVW3KKXOyM0HQ
         9rmru5F8yos5RMOy6NzTAsvsovu4C4AQhX31quTc4XVJd0buju3ikbae1EBwWk0wVLq2
         0FLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779422589; x=1780027389;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xTyhQ2jjSEJPqwYfn77VgBi3oLT1dzilkXHvkLGFVrQ=;
        b=gZjE717Y8EXzfAU7gxt0yRc+KgUvVgqL6yJcokyMe7WW9vMmTDGDcI1PBDGTex8WJQ
         zvEW4d7ehnsHLkS0ozEw9L3NOOeE7A2PelpDzjeBpj2GwDSz8KpgcoFUk/4oNAUKZP6n
         PtA+Z3FeA1TcZjRgyDK62bIk33pnsRGrqzjG2BUwGba1l6ggZVag+IAd9ztTn9l4w9yI
         ezugZPPfbkSrJGL5o0isBQ6ob5RSutPdPRQRR8pADMVgYosx31/cwvpWsKK2CmxJOQVi
         n1uNHG6cbWDL4f/bYrE/XSvX3xIrSKJYa2BruP0aaSXyiuF1hHZ21L4Gd6kdkQqpWnCc
         QFdg==
X-Gm-Message-State: AOJu0Yyy6WMqMJ1Oivo9oScB6mM2M70gp2/KYgj955Cg5wg1uKs4inHW
	CXt2JMs0Kt48A2ktuid/nDxt51OWI/x6GaZvXBKEI1Vf61WQh80cVl1HZ9OEmLXN3Mk=
X-Gm-Gg: Acq92OFS0/LGiMTHi8ojr8RTt8/N9Av524ho0qScZxHkfz1TIj8tbb6Rzzev6RvWx0v
	TDeQH8Ch2oXjsTAl4rMTH8JLk9i7Yielji3oTvY3JddrkSN7e/fqH1Ksj2cFEnRD4xKS6ThBlhE
	MMMEv5q/LLOqTyS+QahCfn8qV+2wwu3rwNrnf4RGgMidcGmXuuX9Ai1E52abzOrza3yPzzTOd8Y
	Q7TBO7WAQu1rdfIr1RDgyzWOpN+MeDbLeEI8fAiwieoA+hmF8NQzKGFjQQoPUO6u3SCpEgcgxP/
	NLAd6c+MJNZUbxagdfCTdoUNW23G3U0EgERLkXyXzDXzRSbGDZUxQFK4y5o3gc5E6kqJsF8UfpV
	X+aHp5SbncRpPwSt1CwsxxaS58mqIvvl2ueNPjBbN1PsVOW0UOs7YBef4YhJp6GFyrbE5EF3jv/
	1spM3DIkBWgQsy7hx1a8uh
X-Received: by 2002:a05:6830:4119:b0:7d7:f031:37bf with SMTP id 46e09a7af769-7e5fef203a8mr1198374a34.19.1779422589102;
        Thu, 21 May 2026 21:03:09 -0700 (PDT)
Message-ID: <f63f5a7e-6485-4bdc-866d-ab294a22536d@gmail.com>
Date: Thu, 21 May 2026 23:02:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <ed61471e-5674-4ad6-9b4c-729027f1073f@oracle.com>
 <19e48ffc072.20eeee58126634.4537984379441699684@roiai.ca>
 <19e494d88f3.fa2e5b9128090.8772053311417055861@roiai.ca>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <19e494d88f3.fa2e5b9128090.8772053311417055861@roiai.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

On 5/21/26 01:51, ROI AI wrote:
> Also the entire nonsense about making the found issues public - this is absurd and just exacerbates the asymmetry problem.
>
> By keeping the reports private, the OSS teams can deal with the issues more on their timeline.
>
>   By making them public, they add timeline pressure and enable attackers.
>
> Why are you making it harder on yourself?  It is the opposite of what you want to do.

You apparently do not understand.  Most projects take keeping embargoed 
security issues private rather seriously---and that *itself* has costs.

Further, the key issue here is the question of whether those costs have 
any benefit when the issue was found using a tool to search for issues, 
due to the risk of someone *else* using the same tool and finding the 
same issue.  If that other person is another whitehat, you get a 
duplicate report.  If that other person is a blackhat, you get an 
in-the-wild exploit while you were carefully maintaining an embargo.

> [...]
>
>
> From: ROI AI <sales@roiai.ca>
> To: "oss-security"<oss-security@lists.openwall.com>
> Date: Wed, 20 May 2026 22:26:21 -0700
> Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age
>
>
>
> People are shooting the messengers here.   The fact is - we are going through a generational security event due to the advancement of LLMs.

Maybe... we are definitely going through a generational event with the 
amount of "AI" slop that has buried maintainers of major packages.  Have 
you forgotten already that curl had to cancel their bug bounty due to 
excessive "AI" slop submissions?

> It is also both trivial and extremely effective to use Agentic analysis to filter security reports.

You advocate that maintainers blindly trust systems that are *known* to 
be incapable of precise analysis.  I understand talking your own book, 
but there are serious externalities here and I cannot let this go 
unanswered.

What if that "Agentic analysis" incorrectly filters out a report of a 
genuine issue?  Now the issue does not get fixed...

And just how effective is that analysis supposed to be at filtering out 
"AI" hallucinations?  Remember that the *same* hallucination-prone model 
might be doing the analysis as made the bogus report.  How, exactly, is 
a model supposed to recognize its own hallucinations?

> As for 'duplicates', people are claiming this when I have seen little evidence.  I reported a dozen or so to one major project and no one has yet claimed invalid or duplicate.

The claim came directly from someone who *works* with those issues and 
manages inserting them into a bug tracker.  I am inclined to trust their 
experience over your hand-waving dismissal.

You might also want to realize that "AI"-generated submissions are now, 
in many projects, sent straight to the bit bucket, especially if found 
to be invalid.  You should not expect a response informing you that your 
report is invalid, as most maintainers have likely stopped bothering to 
send those.

> Moreover, if 'duplicates' are found, then that is a good signal for prioritization.

Maybe, if only in that duplicate reports indicate that a particular 
issue may be "low-hanging fruit" and therefore already quasi-public.  In 
other words, duplicate reports could be a signal to dump the embargo and 
move faster to fix the issue.  (Remember that working under embargo has 
costs?  *Those* *costs* *can* *extend* *the* *time* *to* *patch.*)

> Let's stop talking about how the vulns are found and start fixing them with urgency.

Know what?  This reads like "AI" slop... and now I look at the source 
(<sales@roiai.ca>) and realize that I am probably debating a slop 
machine tasked with promoting a product.  I will send this anyway, for 
the benefit of my fellow humans who will read this discussion and who 
might---just might---recognize your marketing efforts as the slop they are.

> ROI AI
>
-- Jacob
>
>
> From: Alan Coopersmith < mailto:alan.coopersmith@oracle.com >
> To: < mailto:oss-security@lists.openwall.com >
> Date: Wed, 20 May 2026 10:52:37 -0700
> Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age
>
> On 4/28/26 07:58, Jeremy Stanley wrote:
>> I'm sorely tempted, both due to the increased volume and the risk of premature
>> disclosure, to just assume that any vulnerability reported as a result of
>> research using an LLM is trivially discoverable by others, and give up trying to
>> pretend there's any point to working it under embargo.
>   
> Other maintainers under similar floods seem to agree:
>   
> Linux kernel:
>   - https://lkml.org/lkml/2026/5/17/896
>   - https://docs.kernel.org/process/security-bugs.html
>   
> DNS servers (BIND, Unbound, PowerDNS):
> - https://indico.dns-oarc.net/event/56/contributions/1233/
> - https://indico.dns-oarc.net/event/56/contributions/1233/attachments/1180/2539/presentation.pdf
>   


