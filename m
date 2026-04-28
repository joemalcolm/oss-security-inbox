Received: (qmail 25868 invoked by uid 550); 28 Apr 2026 20:13:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7495 invoked from network); 28 Apr 2026 20:09:57 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777406988; cv=none;
        d=google.com; s=arc-20240605;
        b=DS0QumqlCNUEdJ6JZb92Tw9d+mz32pZMc2ZzeEfoCpwn/ZGokzLBZfDXKEce4OpFX0
         lAzKFMtY1RF38x3m2hVEva9Zfv8jjE1zZUKDubgt9dIYqUKyxaikNXug8B4l4HVNajbz
         9n2p9cuFZN/eBi8zAXZ7c/E1xSocjv4XNmUMydM/nE+v30xIXEJfyuFvX7Vc8GlqOLLX
         Cx9jTLk3UnlFOWAX1jKTGGR1Up+x2Tlu9LtyJb61geXM/iVe9wM8eAjScPm3Wyj/uUno
         YAsaMQzxijITXfmnYovSG/YVRH1hKnygClGtkjUg5GmtoATTz2gzZjH3lrwpHibb9aZ1
         ikHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=WaK46Sb92BMLLQmEsfeweqaR4iHv9argylGGFqViWRc=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=IrSRmRirqnnpwsWCG9CzXQsEugopWA+uH4nzS5/JhEFX1Eg3NhVBAnSk1Yfi5J5NEj
         242aGatFPUYf0WN20+I58x90OqPnco8EhfrMM5w/ZF5eKZwXsWP633BZn/5l5hRz398F
         QVqwuSjgXVABXvNl6rY+0AfJbWSGVGqGub15/K5i44OH8/0xPZbvsQR7pjHHqkQ9VBRJ
         JVxQTuQthwAJz4Dbrpr/WSk+Hte++iQvEcDUlvFL07jB3rnOw3jvolX0w+5Y5y1bGSpW
         q/Zw481EREQTfKDTUjmQiGdA3yoaK1hmC+MJ3IWK8uSu7O2ucZiUZ61Aq505uHq+AaH8
         s+mQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777406988; x=1778011788; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WaK46Sb92BMLLQmEsfeweqaR4iHv9argylGGFqViWRc=;
        b=n7yy30khrPOSbo9CDjIrdPPlpt6poIaX2u+/loZfu91XTtVg4PJ1AFVOJuekRVvd6M
         ddStK4yzDBwrt4pgKzDnQyHWGmFOKzKF9/SH1RgRwt/QJBBDvDvJ0VNMHGhU5sH906+k
         cTSCIlFt093GjjzBya+4O36rGS64fcG/VmwYJnDkzodFED4NmtYRTUmYiWgMqdNT8Lgb
         7mQ2g4IvUGKsPHUgi7WOtUtPXsL3NF8oyULyHNZ4oVeyIGMTUP+dBLqHtzsZO6sWSwYs
         MWyIUKGxJaB+nT//4cKTKsRDxeNc7aTygSPqlzQlkr4pPVjJWfjGtbyw8mXhqqY7MgLn
         GTlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777406988; x=1778011788;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WaK46Sb92BMLLQmEsfeweqaR4iHv9argylGGFqViWRc=;
        b=kVqh5Ss2tgUT6ryQC9ZblE0EibzuwPIh6rFdwtEE1zxP0UZVD90LV73HPcCTsK8+iP
         WBxqZCh6m4Qs5rTcfKY3hDyz5ii8dARshTpxUubL5TX6j1f4rtcNTDgJin3Uqpmrs/Xr
         d5P1cWpWUwHlMlyvt8NN4MIYsHFe7Z15WNAc0ybsGy9p78hyazUvsdhEUJ3Cu3uncBrR
         adGc0n/wzKzh7R6TXChpMNjBQfjqsveqa9cpESS6s/mAXs2/eH+50MPoNBkxSWPNaTCZ
         7QmHC/dgtl5htWSVdbdjDacRmGh/gQvF6+WmLukiGljkMOFKQHqYvoTlUTvkcJC02dSX
         TefQ==
X-Gm-Message-State: AOJu0Yx+86QCut8CtbZjLAspb+Wbl8mtHBFac+u93KwHh+W6vmzArVIz
	l9FOwMsHHbpvnrLFWpNDvYBR5KVQI167a6kvPsViQHbElM2e4MLBG3l4JpHzr1mF0bFMk8PCvZF
	sbdgbnWZB/8DSb5KYJV16rjdsn2SFAsdFJivc
X-Gm-Gg: AeBDies0VEp5gOJ2M87EzBMWLNnZ8EfI1JuFWFRRTnwQJNdSGM0wTI8nORqvEFVbrQB
	+gc7/YlRgZRdnQqSjnd6c2/XSChJcJN0Cb4vSUwgolAUhdtpFlx7u4zzxtUtGuSX160YIkKZphD
	W6YLyZhswjxglkxtg0JgGRwxW1y50uYClGc3vgzXONO7xg7ZQHXdanbYN2qTHxTX8Go9IGIYOAp
	RGXPhGIW3uRARX6Fjd+JheUFw44eZvJ4TjoaGOXStECQihpwjRk9Uv1Y+fsvQmUAdyHVLzzOl0A
	cngnelsZuz/7uA7iGEE=
X-Received: by 2002:a0c:e005:0:b0:8ac:b3ba:eb0f with SMTP id
 6a1803df08f44-8b3edd41dc0mr14882016d6.21.1777406987493; Tue, 28 Apr 2026
 13:09:47 -0700 (PDT)
MIME-Version: 1.0
References: <afDLFWVMK-r70PB0@yuggoth.org>
In-Reply-To: <afDLFWVMK-r70PB0@yuggoth.org>
From: Greg Dahlman <dahlman@gmail.com>
Date: Tue, 28 Apr 2026 14:09:36 -0600
X-Gm-Features: AVHnY4KWjGQ9SsIpYXqBr9N6azs_TwTUb3dXLYqNrWRq-2l0KTdsOuQbsxiOgEQ
Message-ID: <CAM=PXV7qd66ceLZJmz2usDYJVunFPMPBL1m=s+bjUR6orL9GDA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000001c637b06508ad048"
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

--0000000000001c637b06508ad048
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As I have been struggling about the ethics of releasing a POC I discussed
on this list (which just shared previously disclosed issues) let me provide
some feedback.

1) While most model providers are following the common dark pattern of
implicitly opting in non-enterprise users into data collection for
training, the maximum acceptable embargo period for issues disclosed to
these lists is 14 days, way shorter than the training period for the
foundational models. I don't think that cached data is used across
customers right now, it would seem too hard to avoid malicious prompts
etc... to do so.  In fact 90 days for an upstream disclosure is probably
too short for that to be a *primary* concern.
2) Unless a bug happens to hit an exact match past the interpolation
threshold, it is already well represented in the training data, but
perhaps not in a pattern form that us humans will view as equal, so yes it
will change how you triage.
3) While I personally have a bright line, where I won't even put client
data on shared services, you should assume that any person who
receives content will potentially leak it.
4) The AI tooling is probably higher risk as many of these projects (and
traditional services) are passing the buck on security, note the below
quote from cursor from [0]

> Right now, the agent can read files without confirmation. That=E2=80=99s =
the
current behavior by design, and it=E2=80=99s described in the security docs=
. The
read restriction only applies to files listed in .cursorignore.
[0]
https://forum.cursor.com/t/cursor-agents-should-be-restricted-from-access-o=
f-files-outside-the-project-without-permission/149418

Security/friction tradeoff is always a challenge, but let me address the
point below:

> any vulnerability reported as a result of research using an LLM is
trivially discoverable by others, and give up trying to pretend there's any
point to working it under embargo.

There is nuance here, was it discovered by someone pumping your code
into Qwen3.6-35B-A3B on a Mac Mini, or was it discovered by Anthropic
burning tens of thousands of dollars worth of tokens?

There is an almost uncountable amount of vulnerabilities, simply because
the threat landscape has changed, from the MIT AI labs needs, the rainbow
books, legacy code, indifference,  etc.... While LLMs change the cost of
discovery and reporting, they unfortunately may actually exacerbate the
problem of mitigation.  The corpus is just full of code that people are
just glad it works, and LLMs have dramatically improved the percentage of
code they produce that is functionally 'correct', they have not
dramatically improved the security of the code they produce at the same
rate.

Even the most simplistic synthetic benchmarks on LLM's ability to produce
correct *and* secure code at the same time are sitting at the coin flip
range today.  Meaning the efficiency gains in reporting vulnerabilities
will be asymmetric with the ability to address them.

Any change in embargo timelines needs to respect that asymmetry, and
forgoing an embargo doesn't help lighten the load or get fixes in place; it
will just add context switches and reduce velocity more.  Those disruptive
callouts need to be limited to the fire-drills where there is actually a
fire because they are super expensive.

Hopefully others have better feedback, but understand that with current
management practices at many peoples day jobs, you may need to
approach people in private for frank feedback.

Greg

On Tue, Apr 28, 2026 at 8:58=E2=80=AFAM Jeremy Stanley <fungi@yuggoth.org> =
wrote:

> As I'm sure is the case for everyone, the projects I work in are
> under a seemingly unending deluge of vulnerability reports from
> researchers using LLMs to mine for security gold in our software. At
> the same time, we see maintainers on our projects relying on
> LLM-oriented tools to develop fixes for vulnerabilities and compose
> prose for advisories.
>
> While I take a moment to catch my breath, this new Bizarro World
> we're all living in has gotten me thinking about the risks of public
> LLM services to embargoed vulnerability handling workflows and
> traditional coordinated disclosure. The operators of these LLM
> services are known to feed prompts and results back into their
> training data, presumably making it faster and easier for the same
> information to be found later by other users of the same service.
> Would keeping embargoes short help to mitigate related risks of
> parallel rediscovery or outright disclosure to other LLM users? It
> seems to me that there must be some inherent lag in this process,
> but how much?
>
> I'm sorely tempted, both due to the increased volume and the risk of
> premature disclosure, to just assume that any vulnerability reported
> as a result of research using an LLM is trivially discoverable by
> others, and give up trying to pretend there's any point to working
> it under embargo. Similarly, it makes sense to me that patch
> development and descriptive prose shouldn't be produced with LLM
> assistance for any vulnerability that is being worked under an
> embargo.
>
> I can't be the only one whose been pondering this... what positions
> have the rest of you taken?
>
> [P.S. No LLMs were exploited in the making of this message.]
> --
> Jeremy Stanley
>

--0000000000001c637b06508ad048--
