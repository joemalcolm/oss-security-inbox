Received: (qmail 1051 invoked by uid 550); 26 Sep 2023 11:19:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9752 invoked from network); 26 Sep 2023 00:16:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=citrix.com; s=google; t=1695687357; x=1696292157; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LJuYvScINI23AbBeKnl2Ob9ScqyHSu9v5Ru0s3OzqPE=;
        b=T7xjAktqDvaiQ4L595Db9rosUp9rqNGJ9Wo/60xuPacBl5YgWSHCr4NGDvGilg0OMx
         oINwRZKieUpdJdRSMVTTnIH1A1hodiFUTbjtg+dvhT4vlR3w3wBhs/i5pgRBobhUxn4d
         jGJAY5LptFiRYAE+fM2AI/KVL5okA3V64Rx8o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695687357; x=1696292157;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LJuYvScINI23AbBeKnl2Ob9ScqyHSu9v5Ru0s3OzqPE=;
        b=L5JvwKGPVZYAY+fQYNI0UQIaHAPTOlngiEq/zYuBCn1hNbLtyHZrhQhuhceasHdE9c
         6GGJsAS1MpEEjvPdz5gDdgXZeVeXYtCKYDOsfgX370+t9Ce8LGpkX1Xv6W7kbKzP1m2V
         4h42m4sN9bGQlUopS3/0n2np7Y8Hjyve85ZKoVayaeA73wGwT6TgB+0MBTG/ua/zKxiG
         zYKgZSSWLsDnB/YAPjFDQK/4wt+UJl7Mv9Ng2N/+cPdT4h/QV09Pw5PZYvZThUe43Ja+
         wkvK9OcQ2/utvk+ReH6XNKfbPv7hRdSX38vorNCjoWEdm2dVnZSg+zZCsmB4+YbQYJI/
         jLwQ==
X-Gm-Message-State: AOJu0Yx7soyN4Cw7GPbGf86c9Ca5TQbBY6JMWJtFsMM/ZrDZY6gRoVHW
	vtNZS0OXsMkPq+a9LXwCzDxzlmq744CmkQIb2YY=
X-Google-Smtp-Source: AGHT+IHekJECg+gTHjp4wOXwh862AzsQgICw4AUvvFY72O/iHDrU//S8KewYSuY1nalJcX5XTxHj5A==
X-Received: by 2002:a05:6402:1c01:b0:530:c34b:8277 with SMTP id ck1-20020a0564021c0100b00530c34b8277mr6388491edb.6.1695687356959;
        Mon, 25 Sep 2023 17:15:56 -0700 (PDT)
Message-ID: <3241bf87-b01b-4b65-e972-f0cede9e1855@citrix.com>
Date: Tue, 26 Sep 2023 01:15:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Andrew Cooper <andrew.cooper3@citrix.com>
Content-Language: en-GB
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,
 "Xen. org security team" <security-team-members@xen.org>
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org>
 <20230925163652.GA6750@openwall.com>
 <70e568d7-9e09-a1a9-030f-40473447a619@citrix.com>
 <20230925182834.GA8247@openwall.com>
In-Reply-To: <20230925182834.GA8247@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) -
 x86/AMD: Divide speculative information leak

On 25/09/2023 7:28 pm, Solar Designer wrote:
> On Mon, Sep 25, 2023 at 06:10:05PM +0100, Andrew Cooper wrote:
>> On 25/09/2023 5:36 pm, Solar Designer wrote:
>>> While I am at it, here's the corresponding mitigation in Linux kernel:
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=77245f1c3c6495521f6a3af082696ee2f8ce3921
>> Not really.  That patch entirely misunderstood the vulnerability.  I
>> went through several rounds of getting AMD to better-understand their bug.
>>
>> Linux's fix was rewritten in
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f58d6fbcb7c848b7f2469be339bc571f2e9d245b
>> and this implements the same logic as I implemented in Xen.
> Oh wow.  Thank you for correcting me (and correcting AMD first?)

Yeah, "don't divide secret data" was not a good starting point.

Not least because the transmitter and receiver of the covert channel can
be entirely in transient execution which fails to retire.

Recovery of data from a fault with checks delayed until retirement is an
art that some got very proficient at while exploiting Meltdown.

For transmitting data, remember that Zen1 is vulnerable to Branch Type
Confusion (AMD Retbleed), and any arbitrary instruction boundary can be
poisoned to speculate for a "short" window, where short is long enough
for one load, but not long enough for two dependent loads...

... except for a corner case where the other thread happens to cause a
full pipeline flush on just the right cycle, at which point a dependent
load can initiate a cacheline fill. [1]

Combining the known attacks on the Zen1 microarchitecture, an
unprivileged userspace attacker can poison any arbitrary instruction
boundary (e.g. the early entry path prior to pushing user GPRs) to
speculate to an arbitrary destination (in kernel code) and at least
initiate a load and a dependent div (subject to gadget availability).

I have not had time to investigate the effects of a pipeline flush on an
in-progress DIV uop.  A division ought to be longer than initiating a
memory access, so ought not to complete within the window.  If anyone
does investigate, I'd be interested in any findings.

[1] noted in the updated BTC guidance[2], published Nov 2022.
[2]
https://www.amd.com/system/files/documents/technical-guidance-for-mitigating-branch-type-confusion.pdf
page 5.

>> It's worth noting that because AMD did not allocate a $FOO_NO CPUID bit,
>> there's no ability for a VM to figure out that it might move to
>> vulnerable hardware and therefore should engage the workaround.  The
>> best a VM can do is best-effort based on whether it looks like it's
>> booting on a Zen1 system.
> Maybe directly probing for the bug is an option?  Perhaps can be done
> within one thread (where the bug doesn't have security impact, but is
> detectable anyway, no)?

Unfortunately, direct probing is usually the wrong thing to rely on.

Under virt, one common scenario is that you boot on one system, then get
migrated to a different one.  Obviously, it's up to the hypervisor to
ensure that the architectural feature still match, but the
microarchitecture really does change.

If you probe at boot and positively identify an issue to work around,
great.  But as a VM you may not get a heads up that you changed
microarchitecture, and even if you do, you don't rescan for everything
you ran at boot.

The CPUID bits allow microarchitectural details to be expressed as
architectural, and allow a hypervisor to state "here or someone you
might move to, the following safety property does not hold."

>> Also the cross-thread nature is also poorly reported in public.
> Right, I couldn't find it mentioned anywhere other than your advisory.
>
> Do you know if only the quotient leaks, or also the remainder?  In the
> below, I assume the remainder leaks as well.

I'm afraid I don't know.  The original paper says just the quotient, but
it also says there are no leaks across privilege boundaries.

Synthetic testing shows that a latched value in the divider does survive
across a privilege boundary.  What I expect this means is that a normal
user->user context switch has a divide somewhere in it.

> I'm concerned it could affect some cryptographic code, in particular
> (but in a very minor way) typical implementations of Argon2.  There's a
> 3-year-pending pull request to the upstream/reference Argon2
> implementation that I think would avoid the issue there (by optimizing
> out the divides):
>
> https://github.com/P-H-C/phc-winner-argon2/pull/306
>
> but there are many other implementations and I guess (almost?) all use
> the programming language's modulo division operation as-is.  Luckily,
> the severity is minor - this would only affect the cache-timing unsafe
> flavors, providing an extra (more direct and maybe more reliable?)
> side-channel, and this only matters when the attacker has a copy of or
> has guessed the salts (the same as for other cache-timing unsafe
> password hashes/KDFs).  So in terms of threat models and attack vectors,
> no change at all, but real-world (in)feasibility of otherwise-similar
> attacks can vary.  No big deal, just something to improve where we can.

Getting rid of architectural divides is a good thing (for performance if
nothing else), but it's not the only thing you need to worry about.

DIV uops are not serialising, so will execute speculatively.

Transient execution can pick up any arbitrary value in the current
address space, and dividing it by UINT_MAX will cause it to be latched
in the quotient.  This can either be picked up on the next cycle by the
other thread deliberately triggering a #DE, or at a later point on the
same thread assuming that no other DIV uop has executed.

Overall, this is minor in the grand scheme of speculation bugs, but I
have to approach every issue from the point of view of the attacker
being able to time everything perfectly.  Researchers have a habit of
repeatedly disproving people who handwave otherwise...

~Andrew
