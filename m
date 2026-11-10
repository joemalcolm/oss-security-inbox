X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/19
Message-ID: <avMr3Y72ppyEvbSv@yuggoth.org>
Date: Tue, 10 Nov 2026 14:36:22 +0000
From: Jeremy Stanley <fungi@...goth.org>
To: oss-security@...ts.openwall.com
Subject: Re: LLMs and embargoes (was: Home Assistant: the password is not...)
Content-Type: text/plain; charset=utf-8

On 2026-11-09 22:52:40 -0800 (-0800), Gregory Mullen wrote:
>On Mon Nov 9, 2026 at 8:54 PM PST, Solar Designer wrote:
[...]
>> Some others in this community argued that LLMs are a reason to 
>> move away from embargoes, or from "responsible" to "full" or 
>> rather more immediate disclosure, at least for issues discovered 
>> by LLMs.  That's because with LLMs someone else, even someone 
>> not otherwise "smart enough", could rediscover the issue and use 
>> it irresponsibly during what would otherwise be our embargo 
>> period.
[...]
> I've seen these arguments, and bluntly: They're stupid arguments. 
> It's the same logic that attempts to claim making something 
> illegal is pointless, because criminals will just break the law. 
> Just because bad guys will do the bad thing, doesn't mean that 
> should be the new normal. Hell, even a CC: security@...dor.org is 
> better than nothing at all, if people feel strongly that 
> disclosure is better than secrecy. (I'm still probably one of 
> those people too?)
>
> But even without my personal desire to consider ethics as 
> important. Logically it also makes little sense. Either LLMs are 
> so good, that they can find anything, in which case, any 
> disclosure is pointless, because everyone already knows, (they 
> just haven't sent the email yet). Or they need a hint, and some 
> level of secrecy can give the fixes a chance to spread faster than 
> the shell code. Admittedly, I do have a hard standing by that 
> specific claim, because I'm well aware, the only thing worse than 
> a secret getting leaked, is when you don't even know it's leaked. 
> To me, Responsible is some kind of heads up, not a 90 day strict 
> embargo. The php cluster was unfortunate but not bad faith. (IMHO)
>
> But, either way, if you believe that they are a powerful security 
> tool, that's a tool that everyone has, which isn't *that* much 
> different than they way it's always been, because 'everyone' has 
> access to them. So the power disparity still hasn't changed, any 
> embargo would give the fixers LLM more time. I feel this one is 
> the more foundational observation. And if it is indeed true that 
> the playing field has been leveled. Then **still** the only thing 
> that's different is the level of effort people are willing to put 
> in. That's always been metered by the amount of fscks any one 
> person is willing to give. In that case, the people who care, 
> aren't enjoying the perceived apathy from LLM assisted messages. 
> Like you said, this list is for humans. (You can assert it, I can 
> merely hope)
>
> There's nuance and complexity, and given how rapidly everyone is 
> convinced things are changing (I'm still unconvinced, but I do see 
> the writing on the wall too), I would like to make the argument 
> that, everyone should continue to act in good faith, and deny 
> those without it, the negative attention I'm personally convinced 
> is all they're looking for. Because I believe incentives matter 
> much more than they're given credit for.
[...]

I think you're either misremembering the discussion we had here 
earlier in the year, or you're thinking of a different one. It 
wasn't about LLM-assisted researchers wanting to avoid coordinated 
disclosure processes at all. It was, rather, upstream open source 
software maintainers overwhelmed with duplicate reports of the same 
vulnerabilities coming from multiple LLM-assisted sources 
questioning whether we should be wasting our already strained and 
limited resources trying to pretend this information is worth 
keeping secret when anyone armed with an LLM could probably find it 
pretty quickly.

Confirming reports, developing fixes and testing them end-to-end in 
secret is often way more work for those of us accustomed to public 
community code review systems integrated with extensive regression 
testing automation. Coordinating everyone involved through a private 
bug report, sending advance copies of patches to select downstream 
distributions and at-risk service providers takes time too. It used 
to make sense when it was something you dealt with a few times a 
year, but now that the incoming volume of reports has increased by 
an order of magnitude or more, many of us are going to need to 
adjust our thresholds as to what kinds of risks warrant such effort, 
vs. fixing things faster in public and getting patches into all of 
our users' hands weeks sooner as a result.

-- 
Jeremy Stanley

Download attachment "signature.asc" of type "application/pgp-signature" (964 bytes)
