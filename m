X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5043" "Sunday" "6" "September" "2020" "19:28:55" "-0400" "Robert Watson" "robertcwatson1@gmail.com" "<CAOfWR+F8DVJeFDeUzfShBnyH_ovPEH3GMUmCXC8BtDBq1qx3_Q@mail.gmail.com>" "114" "Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" "^Date:" nil nil "9" "2020090623:28:55" "[oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" (number mark "        robertcwatso Sep  6  114/5043  " thread-indent "\"Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework\"\n") "<cc307ff9-e850-1d33-9fdb-fc34739dd2c0@treenet.co.nz>" ("<CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>" "<20200905054704.1d90da6a@jabberwock.cb.piermont.com>" "<CALv8orEzf_P79a6gqk8cKL=Ow7ymmXdQY_qBfmL-t7enSn5SsA@mail.gmail.com>" "<cc307ff9-e850-1d33-9fdb-fc34739dd2c0@treenet.co.nz>") nil nil nil nil nil nil nil "Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26181 invoked by uid 550); 7 Sep 2020 06:58:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3240 invoked from network); 6 Sep 2020 23:29:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=u6LUV9GVi6yqwuEuLoM5+qcV7upT/Xa7wUj1QebM6i8=;
        b=fesk523mfPWuxqeI99WHryW7q304hxxfiDRxdDaOhN/baJVxzxxQR0WO7QE1ybHZKu
         5NXmjzLzCoTAjLa7fYPdvMiC4MPBvxHqAbVpTWg0SULhXxdinphWdioAu0wTlhCRPRoU
         VX+sTAx9Wd4QALY5koyMwKpr5Vel7A4tUW6nbOnbnGpS5nRry4caRDjyqvHH8Z0x1tjo
         UfgBgOyLioRTwFFTFRbe5nfjyjlNKOLbydyLXy6ZAv4Tu/N3Soo1zWz1bWaz7FqQIvWk
         AInkuvRnZdLc9cLe1/E7m3gxEF5mxnuEkFcMB5MOL4r0yzHmgOaXXuUX5VlQjsMchcJi
         5jaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=u6LUV9GVi6yqwuEuLoM5+qcV7upT/Xa7wUj1QebM6i8=;
        b=haXP6UjeRE/JB2n4U2+V1bHBzVf4/kL+sVgLtX4vWZy0YNFVFftUyS/L+nXM2sQElM
         Kd5bVygxxtpI11yIzI3v51Ql07aTBYO+J7qkGM/raoC9GIjYhZaiqFXE9UL7vAMX+q+g
         mK/cflDTYv5tH0iDjwuB+lkStk/sik8xlrKIDHdga7Y8o/XsFq0Mk9U7SI9UIvo1ku5D
         wII0hF8IVXBFmLm8GsLy1D2Fb+x05Bcv1hOLsaZLDP61w1PavvqM3qdNMVzVxx8Ujmzj
         Ck15jNXTrnt9Za8gUneciYZ18GeZlrcg7wUP/lZXjeJh4TeXBwmKdOa+tsmAfTUDRD7x
         AoLQ==
X-Gm-Message-State: AOAM532zyb0VOi5DruL/Npe+kdMbIeQCvx4FP8zBa2a73i3FP/XETh48
	LiZPPzPImUxuJNqvZeMO0n0eMWwk7Ohjgb8agyU5KvD3
X-Google-Smtp-Source: ABdhPJwtglTwcdq+REp+fHD4HeUdPk/oq2vEP2WpOQONruA5Whdvj6btkilZ5JtCiH1+6ODQqDezuupMJCO16c9lNyo=
X-Received: by 2002:ac8:7a96:: with SMTP id x22mr19016416qtr.245.1599434950031;
 Sun, 06 Sep 2020 16:29:10 -0700 (PDT)
MIME-Version: 1.0
References: <CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>
 <20200905054704.1d90da6a@jabberwock.cb.piermont.com> <CALv8orEzf_P79a6gqk8cKL=Ow7ymmXdQY_qBfmL-t7enSn5SsA@mail.gmail.com>
 <cc307ff9-e850-1d33-9fdb-fc34739dd2c0@treenet.co.nz>
In-Reply-To: <cc307ff9-e850-1d33-9fdb-fc34739dd2c0@treenet.co.nz>
Message-ID: <CAOfWR+F8DVJeFDeUzfShBnyH_ovPEH3GMUmCXC8BtDBq1qx3_Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000009c13905aead7885"
Date: Sun, 6 Sep 2020 19:28:55 -0400
From: Robert Watson <robertcwatson1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Open Source Tool | vPrioritization | Risk
 Prioritization Framework
To: oss-security@lists.openwall.com

--00000000000009c13905aead7885
Content-Type: text/plain; charset="UTF-8"

Since moderators are letting this discussion continue, I'll throw in a
perspective from my experience with a large dedicated data center providing
life and death related services (downtime not an option).

Patches and upgrades frequently break applications. The only way to prevent
downtime from most patches and upgrades is to go through the whole process
of applying it first to an identical test system and doing full QA on it.
That takes tremendous resources that most management balks at.

On Sun, Sep 6, 2020, 16:22 Amos Jeffries <squid3@treenet.co.nz> wrote:

> On 6/09/20 7:48 pm, Pramod Rana wrote:
> > Appreciate your comments.
> >
> > My two cents - Patch everything is far from reality to most (read all)
> > organizations and I would argue that it's not a solution per se. To me it
> > looks like buying every type of vehicle for commuting in every city of
> the
> > world but we don't do that, rather we decide what will work best
> depending
> > on factors like traffic, distance, roads, weather etc.
> >
>
> My experience with corporate systems is more like they hire a vehicle on
> lease. Insisting that it be the oldest most run-down and error-prone
> model the lease company has to offer. Then complaining about downtime
> costs of fixing problems when things to wrong.
>
> As a software maintainer myself I have actually had a corporate client
> try to get me to backport several *thousand* patches. The plan being to
> port every single bug fix and feature change from version N to version N-2.
>  Installing the new version with a patch changing the version number to
> N-2 would have been identical binary result.
>
>
> > I believe prioritization is an integral part of everything we do and it
> > works as reasoning to what we do (or don't).
> >
>
> Imagine that your network is facing a highly organized prepared attacker
> who has done their research and knows your network structure. How fast
> can you apply every patch and security update you put off for later?
>
>
> The point of the counter argument is that *not* doing anything is bad.
> Possibly really, really bad. So don't bother wasting time on figuring
> out priority/severity per-patch. Just work through the list of things
> needing patching each day as fast stability testing allows.
>
>  Don't forget to report to appropriate management any resourcing lack or
> process limitations that prevent each days patching list being finished
> completely/easily. Those limitations are likely the worst security
> problems you have - they are forcing security holes to remain open.
>
> When the systemic limits are gone you should only need to prioritize
> *which* things to patch based on each ones importance to your
> organization. Not any rating associated to the flaw itself.
>
> AYJ
>
>
> > On Sat, Sep 5, 2020 at 3:17 PM Perry E. Metzger wrote:
> >
> >> [Perhaps somewhat off topic, but the original announcement felt a bit
> >> tangental as well.]
> >>
> >> On Thu, 3 Sep 2020 20:13:34 +0530 Pramod Rana <varchashva@gmail.com>
> >> wrote:
> >>> It is no secret that today we have more vulnerabilities than we can
> >>> assess and remediate, timely and comprehensively. Risk
> >>> prioritization is a key component for any vulnerability management
> >>> program.
> >>
> >> I'm not sure I agree with this premise.
> >>
> >> 1. It is entirely feasible to keep even a very large organization
> >> comprehensively patched. There are organizations that do that.
> >> 2. It is not feasible to calculate a probability of exploitation of a
> >> given vulnerability, and it is not feasible to determine how bad the
> >> damage from exploitation will be. This is a classic example of "tail
> >> risk" where probability distributions are simply not calculable by
> >> normal methods.
> >>
> >> I keep hearing people in the security industry speak about scientific
> >> risk assessment as though it were possible. I don't think it's
> >> possible, and it seems cheaper to simply patch than to do some sort
> >> of scientific assessment and prioritization of patches.
> >>
> >> My gut reaction is that the growth of this idea is attributable
> >> to the large number of large, well-funded organizations that are
> >> none the less not capable of properly maintaining their own
> >> infrastructure and thus not capable of patching in a timely manner.
> >> (I have consulted to many such organizations.)
> >>
> >> The notion that some sort of "risk analytics" could therefore justify
> >> failing to patch quickly and give a rationale for maintaining an
> >> incapable systems management team is thus attractive. However, the
> >> real solution is simply to patch; a capable systems management team is
> >> better than the illusion of a risk calculation system, and provides
> >> far more benefits than simply maintaining infrastructure in a fully
> >> patched state.
> >>
> >> Perry
> >> --
> >> Perry E. Metzger                perry@piermont.com
> >>
> >
>
>

--00000000000009c13905aead7885--
