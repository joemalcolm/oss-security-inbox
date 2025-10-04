Received: (qmail 32207 invoked by uid 550); 4 Oct 2025 02:41:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7655 invoked from network); 4 Oct 2025 02:35:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759545343; x=1760150143; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nLwrvvGsZZrGckCwZ/9JzP0ZiJo5ooaLfYD5yzBL8+w=;
        b=ArrAlxx7n5CHwJbjNaUuydtWUXr2jqfFkYLHv1GcjePwW49CiLjNNLu1RMLXBgmV0P
         VF8DipJr9xEokC/vgA+7s2o6T4JzS3p5LTO9gng1Pv/a9Umog7qPJ4V77ouLqEbOyPfr
         pVkG/xPp0YdqReoiG+a9nfD1BiHPJMsh+HHN0Z7gShlgR0fvXyhmdtb3yazhzHz/SPbt
         TV0icS7zmmx/NcrT2sIAkYAZTNHvwmaAEW6UIiYe95PZo6E8CbL6OFPu/ShmoqbGdhfF
         nL5k9T5i3QAlemWy9tJ8VEermBk8HG8t/uFlFFy7iMzpnMolZRjE/usC8v8jfTE7sNQr
         7Mvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759545343; x=1760150143;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nLwrvvGsZZrGckCwZ/9JzP0ZiJo5ooaLfYD5yzBL8+w=;
        b=a4Y75aYbq4CcCvedByhWPYSZJPCSB972X4niYMa+RTQ+Q59cWVgMNcxonY9LHRY4kY
         a3/qjKWc5NSWfF1FwYwtI542hKxHlLyGnOqiyshCXhkV8MI2eSazePdrWYAI56ogHgoA
         akMPqka7AA9sHD0DqTYnMfy5/Nn1zd+XOck4ctbJ2p85IXLANCl2GcOxubTbrmtIUr8B
         78YshEIBNIGJYz+0e9BALCCjE84BxIRzjGjKeA2QsBSblqbfDuvZZq42gdyWYiN/8FaW
         xVXZvt3STLWcZ3+LGoBZcGlkxN8byafzpoQUgP8tgGHvfJ0gRZcXX668/sitKn6SzrND
         41hw==
X-Gm-Message-State: AOJu0YzUxAFoR9naigLt09WTV2TLpCApwSsk4UyMfGByxNC8EBIrP60W
	2Kpkoc1qFZ4szIFp9JMvHpwdDROG3JTzq3B/dmtMI0BALZyqVVH9nAG8mtaWhw==
X-Gm-Gg: ASbGncv2FwoNI9N2uNb4ZIoZc+7py1q2H9OjU7KMv9fDAAULtbIE/+L2TcOYJKZjQmX
	3P2HsXJvsgkyTnFamfHj0XXvNPf/DpiC7nSylKqJjyneNaOU4yiHfFOcFy9GrvwT8LJwO+Aqf/g
	pP4vB0pYTmoVlyYvq0QzU3eL8N8TW4HvA5QXw5tZSGHFib+wHcqpCXigMPyIILrRpNZ+THN+Ocv
	HBc5gUpdda/Oe9UQl7NazH/u+omHRqvPgc47xbLE7urvWqL9IU2IVIc3QFr7a6xUkggHNH3qyow
	Px0P06PJncYFTL0VgyJ7OYBC77FwoNkVdkJmpBoWr8guRDFhyT+CSdy+P6cXvcLRu8UGAmneNnF
	bY5pchvJvVXdYQznFakjVNG31ijjpIi84QUqroC5UTwZN+VD1XUxje1xJRJkV/H9CZYOVcQHw8Z
	N2dX1OarlLXkzzZZa8X0y1FrJk
X-Google-Smtp-Source: AGHT+IEo+w8TO7zqsW+bxh6r/AOdAtulRS4UszH104e+l09+cVnn3o5FoPZXd6pmTEY3c5wVQBKm/A==
X-Received: by 2002:a05:600c:3d94:b0:46e:45d3:82fd with SMTP id 5b1f17b1804b1-46e7114e821mr39611105e9.31.1759545342354;
        Fri, 03 Oct 2025 19:35:42 -0700 (PDT)
Message-ID: <e07ac7ab-e1a0-41e0-ba73-92d14add790f@gmail.com>
Date: Sat, 4 Oct 2025 04:35:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Attila Szasz <szasza.contact@gmail.com>
To: oss-security@lists.openwall.com
References: <07bdaddb-1414-492b-a178-93b38f8ac3a0@gmail.com>
 <2025060713-aloe-decency-a74c@gregkh>
 <40b4dd6d-eb00-4076-8f38-546a1c3589a1@gmail.com>
 <2025100255-cage-squall-f003@gregkh>
 <e61844e3-47d2-4209-b34a-6d94f963113f@gmail.com>
 <2025100324-army-silica-497b@gregkh>
 <68cd6070-5909-41cf-9194-63967b2dff80@gmail.com>
Content-Language: en-US
In-Reply-To: <68cd6070-5909-41cf-9194-63967b2dff80@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Re: Re: Linux kernel: HFS+ filesystem
 implementation, issues, exposure in distros

Greg,

I truly appreciate your answer. When I last spoke about this at a 
private infosec conference, I made it clear to the audience that I 
deeply respect your work. In my view, developing Linux continues to be 
one of the most admirable and noble endeavors in technology.

That said, let me try to be constructive.

I know the workload is immense, but from my perspective as a security 
researcher, here’s what I propose:

  *

    I can reach out to academic contacts at universities I’ve
    collaborated with.

  *

    Bring some of these researchers and students on board to engage with
    the project.

  *

    Explore securing funding for this effort, whether through the EU
    Commission or other channels.

The idea is that if triaging 13 bugs a day is unsustainable, we could 
delegate this to motivated students and early-career researchers who 
would gladly take on the work—verifying KASAN reproducers, running test 
cases, and handling other essential but lower-level tasks. While not 
senior engineering, it is still highly valuable work and could also 
serve as meaningful experience for them, particularly if supported by 
proper funding.

Of course, the authority of the Linux CNA would remain unchanged—you 
would retain the final say and could overrule any decisions if necessary.

I believe this approach would help address many of the criticisms raised 
by myself, Canonical, Google, and others, while easing the security 
workload without introducing new or restrictive measures into the Linux 
developer community.

What do you think?

Attila

On 10/3/25 20:10, Attila Szasz wrote:
> ;)
>
> On 10/3/25 10:16, Greg KH wrote:
>
>> On Thu, Oct 02, 2025 at 09:32:49PM +0200, Attila Szasz wrote:
>>> *Hi Greg,*
>>>
>>> I am writing to formally invite you to a public debate at next year’s
>>> FOSDEM.
>>>
>>> Our past discussions surrounding the HFS+ vulnerability—and the 
>>> subsequent
>>> "lamest vendor response" award the Linux CNA received at 
>>> DEFCON—highlighted
>>> a significant disconnect in how we approach security, disclosure, and
>>> community roles.
>> Wait, we got an award and no one invited us to the party to receive it?
>> That's sad, we need to add it to our shelf of "awards we never knew we
>> wanted to shoot for" :)
>>
>>> My goal is not to re-litigate a past issue, but to bring
>>> transparency to crucial questions that many in our community are asking
>>> about the future.
>>>
>>> I propose a moderated discussion in the Linux kernel devroom to explore
>>> these topics. The idea is to foster a constructive dialogue, not a
>>> confrontation. The key questions to address would be:
>> While I appreciate the invitation, unfortunately my travel schedule will
>> not allow me to attend FOSDEM next year.  Fortunately your list of
>> questions have already been covered by me in previous talks I have given
>> so you can refer to them and follow up if you have further specific
>> questions:
>>
>>>   *
>>>
>>>     *The Linux CNA's Role:* What is its responsibility in global 
>>> product
>>>     security, and is its current approach effective?
>> Please see my many talks over the past years about Linux kernel CVEs and
>> how the Linux kernel CNA works.  Here are some links that might help:
>>     Open Source security podcast right after we became a CNA:
>> https://opensourcesecurity.io/2024/02/25/episode-417-linux-kernel-security-with-greg-k-h/
>>     Kernel Recipes 2024 talk, "CVEs are alive, but do not panic":
>> https://kernel-recipes.org/en/2024/cves-are-alive-but-no-not-panic/
>>     OSS Hong Kong 2024 talk about the same topic with updated
>>     numbers:
>>         https://www.youtube.com/watch?v=at-uDXbX-18
>>     OSS Japan 2024 talk with more info about the same topic:
>>         https://www.youtube.com/watch?v=KumwRn1BA6s
>>     December 2024 talk about this with even more detail, but I can't
>>     find the video of it anywhere:
>> https://ossmw2024.sched.com/event/1sLVt/welcome-keynote-50-cves-a-week-how-the-linux-kernel-project-went-from-ignoring-cves-to-embracing-them-greg-kroah-hartman-fellow-the-linux-foundation
>>
>> I think there are some other links somewhere as I feel I've given this
>> talk even more times than just the list above.
>>
>>>   *
>>>
>>>     *Vulnerability Triage:* Is the "all bugs are just bugs" philosophy
>>>     sustainable, or do certain flaws require a higher class of 
>>> treatment?
>> Remember this is open source, we do NOT dictate use, NOR do we know how
>> our software is being used.  Because of that we can not know if a
>> specific bug we fix really is a "major" issue for you or not.  I have
>> loads of specific examples of this, where a seemingly "minor" bugfix was
>> really a fix for a major security flaw in some users of Linux, while it
>> wasn't even a issue at all for many others.
>>
>> And so, we treat "all bugs are bugs and we fix them as soon as possible"
>> as our goal.  That's how the kernel security team has been working for
>> the past 20+ years, and how it continues to work.  As a CNA, we are
>> REQUIRED to mark any bug that fixes the definition of a "vulnerability"
>> as a CVE, that is the requirement by cve.org.  But because we do not
>> know your use case, we can not provide any sort of "severity" score to
>> the issue, that is up to you to decide as you decided to use the
>> software in your specific use case.
>>
>> This is the same for almost any open source project, and is the hardest
>> thing for many companies and organizations to wrap their heads around
>> over the past years as they come to grips with all of the software they
>> are using and rely on.  Frankly, I think this is a good thing as being
>> aware of your dependencies and use cases is important, for too long it
>> has been ignored.
>>
>>>   *
>>>
>>>     *The Future of Linux Security:* What are the long-term consequences
>>>     of our strategic choices regarding security investment and process?
>> "strategic"?  Hah, this is Linux, you think we have a single 
>> strategy?  :)
>>
>> Seriously, we do have many plans for this type of thing, why do you
>> think it is not working out?  We are handling this on multiple different
>> fronts, all at the same time, and have been doing so for years, with
>> resources going into many projects and developers to address the known
>> issues that the world faces when it comes to software at the level of
>> which Linux runs.
>>
>> Any specific questions you have about those initiatives are always
>> appreciated, and of course, the developers running and working on them
>> are always appreciative of help, review, and testing.
>>
>>>   *
>>>
>>>     *The Next Generation:* How does the kernel project integrate the
>>>     perspectives of independent, nonconformist, and younger developers?
>> As lwn.net constantly reports, we average about 200+ new developers to
>> Linux ever 3 months.  That's a number that just dwarfs any other project
>> out there in the world, and is larger than almost all other project's
>> total development teams (including all other operating systems.)  We
>> also are evolving with those new developers as they help integrate their
>> ideas and projects into the kernel to help us all solve the problems
>> that we currently face.
>>
>>>   *
>>>
>>>     *Regulatory Readiness:* How can the kernel community best prepare
>>>     for the impact of legislation like the EU’s Cyber Resilience Act 
>>> (CRA)?
>> I've given loads of talks about this too!  And I'm on the CRA "Expert
>> Group committee" that meets every few months, so I know all too much
>> about this.  There are still many "open" issues around the CRA that are
>> still being worked out, but in short, I think we are going to be ok.
>>
>> My most recent talk was just a few weeks ago about this topic:
>>     https://kernel-recipes.org/en/2025/schedule/the-cra-and-what-it-means-for-us/ 
>>
>> the link for the video is somewhere, I can't seem to find it just yet,
>> but here's a good summary of it from The Register:
>>     https://www.theregister.com/2025/09/30/cyber_reiliance_act_opinion_column/ 
>>
>>
>> I also want to specifically call out the great work being done by the
>> Apache Foundation when it comes to open source and the CRA.  And
>> the Eclipse Foundation as well.  Both groups, and many others, are
>> helping us in educating lawmakers and others about the issues involved
>> with open source and the CRA.  See the links in the slides for my Kernel
>> Recipes talk for many detailed documents about the issues involved here.
>> I'm also working with OpenSSF and others to help prepare loads of good
>> documents, and even simple "form letters", for the open source community
>> to be able to use when it comes to this issue as manufacturers are
>> getting very nervous and sending out crazy things to open source
>> projects that they really should know better than to do.
>>
>> There are many different specifications being created for the CRA, and
>> many open source groups and developers are helping out with them too.
>> Most of that work is happening right now, and is being crammed into a
>> short window, so that after the drafts of the specs are finished in a
>> few months, they can get widespread public review and comments and
>> adjustments before they are written into final versions.  The drafts I
>> have seen so far, while pretty verbose in many places, are semi-sane and
>> I don't think that anyone will have any issues with using open source
>> software to address their requirements.
>>
>> In short, I think the CRA is going to be a good thing for us overall.
>> Don't fear it, for open source individual developers, it will not affect
>> them contributing at all.  For projects that are under an organization
>> like a "foundation", the only thing that it dictates is two requirements
>> that all open source projects should probably be doing already anyway:
>>
>>     - have a way to report security bugs to the project
>>     - the project, if it fixes a security bug, should report it to
>>       "someone".  That "someone" is still being worked out, but
>>       should be a simple web form, or json endpoint you can push to.
>>       We'll know more in a few months about the specifics there.
>>
>> That's it, should not really be an issue for any project to follow.
>>
>>> I believe FOSDEM's open, community-driven, and unfiltered nature 
>>> makes it
>>> the ideal venue. A frank conversation between us would bring immense 
>>> value
>>> and clarity to these complex challenges for the benefit of the entire
>>> ecosystem.
>> FOSDEM is great, but the kernel dev room is pretty tiny, and these
>> different topics encompass way more people and organizations than just
>> can attend that small room.  Which is why I travel so so much and give
>> talks like the above links show, and is why I will be not able to attend
>> FOSDEM, as I'll be on the road somewhere else :(
>>
>> Hope this helps answer some questions about these topics.  And thanks
>> for forcing me to write a bunch of this down (like the links to past
>> talks), I have been meaning to do that for a while now.
>>
>> I don't know how relevant all of this is for oss-security, but I think
>> the CRA interactions are relevant as many people here are going to start
>> running into them late next year as the regulations start to go into
>> effect.  When we have some solid documents around this topic finished up
>> and published, I'll try to remember to drop a link here so that people
>> can find them.
>>
>> thanks,
>>
>> greg k-h
