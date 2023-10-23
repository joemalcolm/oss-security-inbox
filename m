Received: (qmail 20118 invoked by uid 550); 23 Oct 2023 06:33:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20098 invoked from network); 23 Oct 2023 06:33:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698042816; x=1698647616; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bhIrx83UGYxoz9KQtqsrvGV/AnuSV8DEu2fjpBq08Gs=;
        b=JmPXn6wJg2HdUXDxm5tif7LIR+o0bisl7Wf3x5qEzPzvNy2gX40OghWn8ukccJZYii
         lJnirwru2gq9e/EJ1QLO7XEhZ5BRyiUGrbe0oPfERuIyFg/ej9sJvg4h7r/8CJBZ6Mh1
         OiL4dW+RNKJuex7NEsOPWb0s6wFgZb8dhH6hFB8QvV8/s5KFIr2HiQMi+TMOohM9uJhQ
         KZtSd6IYLUdG4HuTUcXtPCDYFFp3HJOJHwGXObbDXPp93+47q7A21Km61NiGaELLmZSz
         fDj9THqP8enHFusrByheJWLchRhlowMotxJEW861aEzcKW61/oSFEdegpvNgjxixhOQ7
         l8TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698042816; x=1698647616;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bhIrx83UGYxoz9KQtqsrvGV/AnuSV8DEu2fjpBq08Gs=;
        b=IK5qnkI40GVJoFM2w8411O4Q2khPipENo/2MKJX+Lx6nCJct4KFlV0S1JNV96lOqU7
         472ATS1XaKnSkLvsdPen5D6ta5eiZ1khFyU6LPf3oe27U5vynAfgADqEJlMSsRsWdhuy
         yn/yyW6qjTh6u4FnstxKm7c2fOVA/c7a7fGKt7s2aAVL6yEfWCaCItCLBS5kPcXefyo7
         KI0tUjqku13U+NmwF4YGFJnJFHSo5iUReF0yg9T3hrZFInrpQ/mcsa4zY3nvBIG0Vxce
         mfTUggq3I38xWXof8KUk9onLfBHZPCSLAsAUvQQf5TqWGsr0X6BGnbEC71PirCsTJJo4
         hosw==
X-Gm-Message-State: AOJu0YzmUg+/zL7oc2BdTnlLkj4DaHUWhJVZpn0WuDLwRguUN2firhbE
	3Ua5pEXSIBrJv19JsTDwhCm3NQf8Z04=
X-Google-Smtp-Source: AGHT+IGWFJMb3njoU3gYs3c9pzRiaZAbP4RxwL+57hYCJrq9jHVy+A48pj1dTDM4qo3XtCoVchM6dw==
X-Received: by 2002:a17:90a:f184:b0:27d:306d:71cb with SMTP id bv4-20020a17090af18400b0027d306d71cbmr15777389pjb.10.1698042815809;
        Sun, 22 Oct 2023 23:33:35 -0700 (PDT)
Message-ID: <c15f3a69-2ded-7343-4f6c-51fc5d83a956@gmail.com>
Date: Mon, 23 Oct 2023 17:33:31 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: oss-security@lists.openwall.com
References: <56c8798b-0ad7-652b-d034-90229b6768f7@gmail.com>
 <20231022000649.GA14340@openwall.com> <20231022.bahM3beighah@digikod.net>
Content-Language: en-US
From: Matthew Fernandez <matthew.fernandez@gmail.com>
In-Reply-To: <20231022.bahM3beighah@digikod.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] sandboxing,of upstream programs by distros

> On 10/22/23 11:06, Solar Designer wrote:
>> For Rocky Linux Security SIG, the only relevant thing mentioned so far
>> was possibly offering an OpenBSD pledge()-alike that other packages
>> could use.

Thanks for bringing up pledge(). That was partly what spurred this line 
of thinking – pledge() is our probable solution on OpenBSD, and it 
wasn’t clear what the equivalent approach on Linux would be.

>> Initially, we are going to only create "override' packages
>> for core or very commonly used/exposed components, and to do so only for
>> specific good reasons.  So stuff like e.g. ImageMagick/GraphicsMagick
>> coming from EPEL and with most of its dependency libraries coming from
>> AppStream repos, or e.g. GraphViz coming from AppStream, is unlikely to
>> make the cut, at least not initially.

I see. Thanks for letting me know.

>> I find the above two paragraphs somewhat contradictory…

Yes, I see what you’re saying, and I take your point. Perhaps this was a 
bit “have my cake and eat it too” on my side.

> On 10/22/23 11:45, Demi Marie Obenour wrote:
>> That said, has wasm2c been considered?  The
>> best fix would be something that can make C code memory-safe, even if it
>> comes at a performance hit

Funny you should mention this, it’s what we presently suggest to 
security-concerned users. There’s a kind downstream contributor who has 
done the necessary gymnastics to produce a WASM-ised version of our 
program. I have not looked into how they achieve this, but I would not 
be surprised if it involves something like this.

> On 10/23/23 01:19, Bob Friesenhahn wrote:
>> On Sat, 21 Oct 2023, Demi Marie Obenour wrote:
>>>
>>> If neither of these are options, I think the entire library will need to
>>> be deprecated for eventual removal.  The command-line tools can remain,
>>> but they can be much more strongly sandboxed than a library can, because
>>> they have the entire process to themselves.
>> 
>> Any deprecations or sandboxing approaches which fail to understand and 
>> address the needs of the "user" will fail.  Replacing package 'A' with 
>> package 'B', where package 'B' works totally differently, or performs 
>> different functions than package 'A' will fail because the users will 
>> not use it.

I think here Bob has really nailed what makes deprecation an unworkable 
strategy for these kind of situations. Unless you can stand up an 
absolutely 1-for-1 drop-in replacement, the ecosystem won’t move. And 
we’re talking about pieces of software that took many person-years of 
effort to create. We’re had numerous contributors propose a rewrite in a 
memory safe language and I have (sincerely) wished each of them the best 
of luck, and then never heard from them again. I think we’re all roughly 
on the same page about the desirable end state, but I don’t see this 
kind of deprecation as a strategy that will get us there.

> On 10/23/23 02:54, Demi Marie Obenour wrote:
>> A command-line tool can probably meet all of these requirements but the
>> last one quite easily.  For a library, the difficulty of meeting these
>> requirements will depend significantly on the library API.

Library vs cli is an interesting dimension to this I had not really 
teased out. I agree with you, that sandboxing a library is in some ways 
trickier because you’re doing work on behalf of a caller whose needs you 
don’t statically know.

> On 10/22/23 20:50, Mickaël Salaün wrote:
>> for a Linux fine-grained sandboxing it would be
>> wiser to use the underlying kernel sandboxing feature: Landlock
>> See https://landlock.io/

Thanks for the reminder. I was aware of Landlock, but hadn’t immediately 
connected it with my current task. I’ll go take a look and see what I 
can learn.

Thanks everyone for the comments so far in this thread. Already giving 
me much to think about :)
