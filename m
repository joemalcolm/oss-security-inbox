Received: (qmail 28101 invoked by uid 550); 20 Feb 2026 03:34:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15434 invoked from network); 20 Feb 2026 02:58:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771556276; x=1772161076; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ToiFXvb63hwCJ299p8w32Ms34PKaqbWvLSW5B2VPAdo=;
        b=GwMnkudjY3ritZruwJp0tQ/cm6s/tR1wJUBG2JV5t1Q+DsAlT0ytwvPVxjo8xEOdMW
         JRpxAQW6FqfEX7a4aT6w3QcGXIuT5ROplyHni+810s0qCKkJhDj8Bf9tQaNTZQxeA72y
         xdF0TE5TUIlZPcnT+z1b0sGArYqq2oqMbYquaEhLGbz8XD+mEA3v4gB3tTwrrWiJmHFA
         DBxq4Shn5ZoIVJRyndwLxRgefLR40KdTiceawbdppBToo2APuVTOS3YMOejE3wG4DerM
         jH0J/xNkqqFdOebJppZRmw2AVK+3omibnAjXCiFrUsgxDwqHpClx4EQZgykqOff3GrDT
         kzUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771556276; x=1772161076;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ToiFXvb63hwCJ299p8w32Ms34PKaqbWvLSW5B2VPAdo=;
        b=tR2uUc29mR7rACMI6/o7t5daCPf7ufHQm5rne+JtTrp3a7/m8n92T5wVK1XuoIUoDv
         7KQwiiwOohxe9Jlh8djfcDnB2jKK3nQGGw/Fal24pi7I8nVkHMscxTEgNFUXyndm/iwI
         67aDnV0CkKj6eH64AoRCa3mguQ82Q3/AFZ13SByE4DpG5FYybz4Y6dRSDWexb4rfxAbr
         /QB9AVfRUxJjL9Rspe8Ea+kRlOn39XLbG3WF3ah4Fp63wnC7TsN9iQQuXOM/v8gQInLc
         iBcwwrpnnrvfCl0xxaFUPjlu0pZbnfynrXALsPtsTydpxtyp5vlSEDLtUdor0NGl9qtU
         UXWg==
X-Gm-Message-State: AOJu0YytzT9XNxfHnWYG3avVAMp2LZCZ/7QCAi3YYy3zWKKAwzTqoLKS
	9TMYXD/5/zEozxCvkwghwfvp5IDTBJ3fGt2PBPOStUm4avRp9buVh0+5
X-Gm-Gg: AZuq6aJwdoXGTkPZO7H6c48ePlLJQM93LruXjgxdIEWZCe9eEgSLnWNbhUvKwyvhhOk
	mmbyEzuoOpaFTuHzj9a73X/Zi06fdgNm+yT0+77/LY9SVzreDyCjkl+SFQDviy4u7pw72nvqMpP
	Os9ApQPRqKiCAU6g7u12P7QD2ly80EdR+G7YriMEguqfT2RtfZcCMq0aXCh6ZR5vKmjlooVzqga
	r4GFHECYRhw9dWOO5WjcUv27R+lTCAxTQH/1GIhQQayQWc67B6a3uldzGtnbruqG/bjxsg+8nFb
	wR1IX6BdcQNIZgc3f4clmNce72jflW0L8+1rfdtGJtcLpMcaxOT/JayUtyuaXXzDoe3be7XDRsG
	WKINejOdpYNWZJMMyr8eehH3FiOIxXpSr9HVFa/DBPT9jdrcAYPgHi8sqXiT2PjD3WWhV17jXZv
	rz9gDGKvnO+iEc6BroOg==
X-Received: by 2002:a05:6808:22a3:b0:450:c321:d50d with SMTP id 5614622812f47-463b403deb5mr9636380b6e.40.1771556276414;
        Thu, 19 Feb 2026 18:57:56 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------xA76kuZp9mBl3K64sTXifgak"
Message-ID: <dc5a9c05-ab0c-4922-9f8e-d0ce2e6a53b1@gmail.com>
Date: Thu, 19 Feb 2026 20:57:48 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Russ Allbery <eagle@eyrie.org>
Cc: oss-security@lists.openwall.com
References: <20260219011438.GA17271@openwall.com>
 <c9af5be5-fc3f-4ef9-bcb4-140a1d1fe1c2@gmail.com>
 <87wm08xyrc.fsf@hope.eyrie.org>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <87wm08xyrc.fsf@hope.eyrie.org>
Subject: Re: [oss-security] MIT/Heimdal Kerberos credentials cache type FILE
 risks

--------------xA76kuZp9mBl3K64sTXifgak
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2/19/26 14:29, Russ Allbery wrote:
> It's been some years since I've worked on Kerberos extensively, but I
> still maintain some Kerberos-related software and may be able to provide
> some context here. I have not been closely tracking developments in
> keyring formats and do not know how usable KEYRING caches are these days,
> so I may get some of these details wrong.

Excellent, someone with more and/or more-recent knowledge on the topic!  :-)

> Jacob Bachmeyer<jcb62281@gmail.com> writes:
>>> On Thu, Feb 05, 2026 at 10:24:03AM +0100, Raul Vega wrote:
>>>> The core of this vulnerability is a semantic failure in object
>>>> lifecycle management. While the Kerberos protocol is syntactically
>>>> secure, current Linux implementations fail to semantically bound the
>>>> identity token (bearer ticket) to the process lifetime.
>> Which process lifetime are we talking about here?
> My understanding is that the context of this report is services running
> with Kerberos credentials. [...]

That is an interesting way of looking at it.  The report seemed to me to 
be describing hijacking user accounts after cracking a service.  I agree 
that this is a greater risk for services, but also that those risks are 
well-known, and I add that a service should have much narrower access 
than a user.

> [...]
>
> In other words, this is a valid concern, but it's kind of a minor one.
> Having ticket caches lying around that live beyond the lifetime of the
> service creates some additional security risk, but in most cases it's less
> than the *necessary* security risk of having a keytab on the system that
> can be used to create new ticket caches at any time. [...]

Exactly.  The risks here are already well-known; the report is bogus.

> [...]
>
>> Arguable, but that is why you are supposed to invoke kdestroy in your
>> logout script.
> A more typical design at institutions that use Kerberos heavily is to
> acquire Kerberos tickets on login via PAM (usually with sssd these days)
> and destroy them on logout via PAM as well so that users do not have to
> handle this in their shell files.

... which only eliminates a potential source of user error, thus closing 
that loophole and further managing the risks that the report blows out 
of proportion.

>>>> By weaponizing the "Crash and Trash" scenario, an attacker can
>>>> transform a transient authentication secret into a persistent forensic
>>>> artifact. This allows an unprivileged local attacker???or a remote
>>>> attacker via an RCE/LFI chain???to bypass Kerberos protocol guarantees
>>>> and achieve complete network-wide identity theft.
> Those are certainly all words. Some of them are even security-related.

Exactly what LLMs are good at.  :-)

> [...]
>>>> Exploitation: An LFI (Local File Inclusion) vulnerability in a web
>>>> application can be used to "pull the trash" from /tmp, granting the
>>>> attacker a valid TGT (Ticket Granting Ticket) with a ~10-hour TTL.
>> Only if DAC is not being used properly.  If you are running a web
>> application as root, you have bigger problems than stolen Kerberos
>> tickets.
> I think the concern here is that the web application has its own tickets,
> which necessarily must be accessible to the web application. Therefore, if
> there is a vulnerability in the web application, that can be used to
> exfiltrate the Kerberos tickets for the web application.

This does not necessarily give the attacker a ticket with a "~10-hour 
TTL" (as claimed in the report) and it also blows up "The Grand Chain" 
because a web application's Kerberos credentials should not be "the keys 
to the kingdom" and the KDC admins should notice if the "web server" 
suddenly starts asking for interactive login sessions, for example.

Mallory could plausibly get to the resources (such as a database) 
backing a web service, however.  This essentially could allow a local 
file exfiltration to escalate into something close to an equivalent of 
arbitrary code execution.

However, a service's authentication tickets should be bound to the known 
server addresses, unlike user TGTs that can plausibly follow a user 
around the network.  If this is done, the attack fails completely:  
Mallory gets the ticket, but it is useless to him without further access.

> Put that way, this is trivially and obviously correct. Maybe storing the
> tickets in a file in the file system makes it moderately easier to
> exfiltrate them given some sort of limited security flaw and keyring
> ticket caches might be less vulnerable, but this is highly speculative and
> depends on the exact nature of the vulnerability.

If we are talking about exploitable web services, the larger risk is the 
attacker finding some way to get the web service to simply *use* its 
credentials to obtain information for the attacker. This is completely 
independent of Kerberos or any other authentication scheme.

> [...]
>>>> 2. Memory Lifecycle Failure (Crash and Trash)
>>>> When an application handling Kerberos authentication crashes, the
>>>> system generates a core dump (if enabled).
>>>>
>>>> The Semantic Gap: The credential remains in the heap or stack during
>>>> the crash. Because many distributions do not restrict access to core
>>>> dumps or leave them in unencrypted storage, these secrets become
>>>> "trash" that is readily harvestable via standard string extraction.
>> If, and only if, the application crashed during the authentication, or did
>> not take proper steps to discard the credential after using it.  Again,
>> this is (probably) an application bug, although I am not familiar enough
>> with the Kerberos libraries to say what extent of care is taken to
>> extinguish no-longer-needed in-memory copies of tickets.
> Yeah, this is just every piece of software in existence that manages its
> own secure credentials. The same can be said of software using X.509
> credentials as well. If you want to use a differnet security system that
> stores all keys in a TPM, that may be the right choice in some security
> models, but that just means Kerberos is not a good fit for you.

Which is another strike against the original report, which claimed a 
weakness in Kerberos ticket caches specifically.

>> Note that service tickets usually have much shorter lifetimes than TGTs,
>> since they only need to be valid long enough to "run" from the KDC to the
>> service, presenting the ticket at the latter.
> This varies a lot, and in my experience a more typical setup is for both
> TGTs and service tickets to have the same lifetimes. Regardless, though,
> for tickets for services that are managed externally, one can use a tool
> like kstart to regularly refresh the ticket cache, in which case you can
> set a short lifetime on *both*.

I stand corrected ... unless we are talking about two different things.  
I was using "service ticket" to mean the token a user obtains from the 
KDC and presents to a service to obtain access. Are you using "service 
ticket" to mean a service's TGT or similar?

Or am I misremembering this part of Kerberos?

>> If I remember correctly, stealing anything other than a TGT is useless,
>> since service tickets are encrypted under a key in the TGT and contain a
>> session key for talking to that service.
> No, this is not correct: If you have possession of the service ticket, you
> can authenticate as the user to that specific service. You do not need the
> TGT. Otherwise, limited ticket forwarding would not work.

Then I misremembered that detail.  So the cache stores the decrypted 
session key needed to use the ticket in all cases?


-- Jacob

--------------xA76kuZp9mBl3K64sTXifgak--
