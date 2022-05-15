Received: (qmail 23974 invoked by uid 550); 15 May 2022 20:04:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12094 invoked from network); 15 May 2022 19:47:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codemonkey-ws.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=PW2480WjVPKIKY446rRVaXwhNEqqDJ4tj4HxXLPqcRY=;
        b=LJBCLcgVTcPC7PC2lwjtBlrPQeVCGhLrBnK+4BnvE8NEZGec78JpPZmgF3xCTGVLzV
         PDQPkS7v2I9O5bvM/qjcVLQPAciViHSSipCy84EnnlzX9vn7vqUSXbpJ1Tx5MYwhDfem
         5NtLnUtxFPEiLmzXLleONPAcRwt7WbsSe95WPiDiahEfvAcTIhnA+563rAqpovDB9SlM
         CHP7yYJDiGZM/tHAe8FFrhUZ1zANvZ6XGt0Nl+R64Ft/So9g3u8r5KwwcleJ1VX0r2tM
         aXZmNA5SFzCPjrZH/e/kpv43hc6PAkZy/p/h1MCw3OK0hXQXIpR5e9w8ey5rAxLgwJlB
         bPKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=PW2480WjVPKIKY446rRVaXwhNEqqDJ4tj4HxXLPqcRY=;
        b=hR/NxFcZ4mUQVjbZ42fwLFaWdNbGoJbpuI8fDPhfVFITy7uhGM0/YfNKaWXIhnA1iY
         69eUtM4EJ0dlDXG0BKfy6P0gwLnHBwzfJCKitZ/v179pWsGO0u7QSfpGKbSBaciq86qq
         XgLmK+KLs0izfr9VuFwcf2e9Czu/ls7Wshwg6TdfEef9GfSqaWpP93vOowv0+0U8js9Z
         rq0076NnBRQbh5qrCl4xbq0m3NAmoza8klkG8YfyHeXhBszg1Zmd/6BJdLgHk6PMyJi1
         hA0ctXSxL9Uy+qt4IbOwBa5OoQ+AIMuYF/0Kyl+QW5EgeNQc0OGM+zBpn4rpToLdZoWO
         2lqg==
X-Gm-Message-State: AOAM531IxTKwzLVbIaWthWZvT0doZmL43FK6xUN5BQQBEUGMAeTr82Ua
	4OGyeZow1U7k8CMbuPARoeiyHsih58tjZ/vVjQUyb5c8j+c=
X-Google-Smtp-Source: ABdhPJyUJ9AlS2+gMVJoIVJ4raxiEpG2zFtYBr3MN/qp6Y43MBx2cy703nDWNUrZx8ePvs3jMxZ9aX9/qdshu42T2cw=
X-Received: by 2002:a81:7b56:0:b0:2ec:2d65:7ccf with SMTP id
 w83-20020a817b56000000b002ec2d657ccfmr15896936ywc.208.1652644054531; Sun, 15
 May 2022 12:47:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220515162740.GA20526@openwall.com>
In-Reply-To: <20220515162740.GA20526@openwall.com>
From: Anthony Liguori <anthony@codemonkey.ws>
Date: Sun, 15 May 2022 12:47:23 -0700
Message-ID: <CA+aC4kumz8Zhp3Fw+zcRXFx485RwVMCM4bXCfH8XWjontNtknA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000cf93cd05df122d32"
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

--000000000000cf93cd05df122d32
Content-Type: text/plain; charset="UTF-8"

On Sun, May 15, 2022 at 9:28 AM Solar Designer <solar@openwall.com> wrote:

> Hi,
>
> This is a lengthy and belated message, yet I think is something we need
> to discuss in here.
>
> Context:
>
> (linux-)distros list policy is generally to treat as public issues for
> which a fix is public.  For issues that haven't yet been brought to
> (linux-)distros, this means they shouldn't be - and instead should be
> brought to oss-security right away.  For issues that have been on
> (linux-)distros, this means an oss-security posting is to be made as
> soon as a fix is made public.
>
> This works well for most distros (where releasing a package update
> generally implies documenting the update's known security relevance at
> the same time) and for (linux-)distros list interactions with most
> projects, with the major exception being the Linux kernel.
>
> For Linux kernel maintainers, it is customary to post a fix technically
> publicly but without indication of its security relevance, then work on
> getting it merged into the various trees, and expect that its security
> relevance wouldn't be clearly indicated publicly for a while.
>
> I didn't keep track of statistics, but my impression was that in the
> last few years for issues handled with linux-distros involved, the
> maintainers usually reluctantly accepted linux-distros' way of handling
> them - didn't insist that the reporter would post e.g. to netdev before
> a "final" patch is ready, agreed on and honored coordinated release
> dates, and didn't object to linux-distros members asking the reporter to
> post about the issue to oss-security on the same day that a posting to a
> Linux kernel list is made.  I was grateful for that, especially knowing
> that some of this is an inconvenience/overhead for the maintainers.
>
> The handling was still often problematic (somehow way worse than for
> other projects, in my impression), but that appeared to be because
> discoverers/reporters were not familiar with the procedure and with our
> expectations, or/and because our policy and thus expectations were
> counter-intuitive for them (I admit this could mean that we were wrong
> in having such unexpected policy).  This also suggested that many didn't
> fully read or didn't understand our published policy before posting to
> linux-distros, which I tried to address by adding clarifications, some
> emphasized in bold and eventually even in ALL CAPS (not as shouting, but
> to make these parts less likely overlooked).
>
> Somehow it seems to have gotten worse this year.  In handling of an
> issue in February, a reporter planned to ignore our policy after having
> already shared an issue with linux-distros, and a list member from a
> major distro tried to enforce the policy.  In discussion that followed,
> a kernel maintainer (someone I have a lot of respect for, and who I
> think is also on the kernel security team?) said he had directed the
> reporter to share the issue with linux-distros despite of the reporter's
> explicit concerns and non-acceptance of the policy, expecting that
> linux-distros members would be "reasonable" and won't actually enforce
> the "unreasonable" policy (I don't recall the exact wording used, but
> that's the gist of it).  So it was not a case of something unexpected
> being overlooked by someone new - it was a case of the policy being
> deliberately violated by someone very experienced.  (Moreover, we also
> got accused of shouting with the ALL CAPS.)
>
> linux-distros members and Linux kernel security team didn't arrive at an
> agreement on how to handle further issues, planning to bring this up for
> discussion on oss-security - which I am finally doing now.  Meanwhile,
> the handling was hectic - indeed, people felt discouraged from enforcing
> the policy.  Another kernel maintainer also mentioned he's no longer
> directing people to linux-distros (which I find more reasonable than
> coercing/expecting linux-distros not to enforce a published policy).
>
> Question:
>
> Should we address this incompatibility in desired handling of issues by
> the distros vs. kernel teams, and how?
>
> Options:
>
> Off the top of my head, we can do one of:
>
> 0. Do nothing specific - let things work or fail on their own.
>
> 1. Adjust linux-distros policy to allow "embargoes" on publicly fixed
> Linux kernel issues.  (Only for Linux kernel, not for other projects.)
>
> However, besides not posting to oss-security this probably means also
> not releasing distro kernel updates until the "embargo" is over (when
> the changes hit a stable tree maybe?), thus exposing most Linux users to
> vulnerabilities that some attackers can infer from Linux kernel mailing
> lists and git commits.
>
> The current policy:
>
>
> https://oss-security.openwall.org/wiki/mailing-lists/distros#list-policy-and-instructions-for-reporters
>
> already includes an exception in:
>
> "Please note that in case a fix for an issue is already in a publicly
> accessible source code repository, we generally consider the issue
> public (and thus you should post to oss-security right away, not report
> the issue to (linux-)distros as we'd merely redirect you to oss-security
> anyway and insist that you make the required posting ASAP).  There can
> be occasional (rare) exceptions to this, such as if the publicly
> accessible fix doesn't look like it's for a security issue (e.g., if the
> corresponding changes were initially made for unrelated reasons and were
> only later realized to have fixed a non-public security issue) and not
> revealing this publicly right away is somehow desirable.  You'd have to
> have very sound reasoning to claim an exception like this and be
> prepared to lose your argument and if so to post to oss-security ASAP
> anyway."
>
> This currently talks about fixes that are already public at the time of
> reporting to (linux-)distros, it requires "very sound reasoning", and it
> allows (linux-)distros to insist that the issue be made public ASAP.
>
> In my understanding, the Linux kernel folks want an exception like this
> also for publicly fixing issues already being handled with linux-distros
> involved, and to have the exception granted unconditionally with no way
> for linux-distros not to agree to it in a given case.  (Please correct
> me if I misunderstand.)
>

My understanding is that all of the following things are expected to happen
while under a security@vger.kernel.org embargo:

A) Patches are posted to an appropriate public kernel mailing list and
their correctness is discussed.

B) Patches are merged into an appropriate maintainer tree.

C) Patches may be merged into Linus' tree and stable trees if appropriate.

D) Distros may release updates based on (C) as part of normal course of
operations without explicitly referring to security updates.

The embargo lifts independent of these operations which really just means
the underlying details of the CVE are published and any discussion of the
security concerns of the changes are made public.

There have certainly been cases where in the course of (A) or (B), the
"embargo" breaks because someone realizes and publicly states the security
implications of the issue that are not part of the embargo group.  This is
surprisingly uncommon given the number of security fixes that are handled
this way today.

I think that for linux-distros@, being part of this embargo means we'd have
to accept A, B, C, and D.

Purely from a practical perspective, I think it's useful to have these
issues go through linux-distros@ and I do think distributions take action
based on (many of) the reports.

I think the policy change would be that specifically for Linux kernel
issues, we stick to a strict 2 week embargo acknowledging that A, B, C, and
D may happen.  If there is a public discussion on the security nature of
the public change, then we'd consider the embargo broken.  There's a small
chance that the discussion would not trigger security@vger.kernel.org to
consider the embargo broken and for there to be a conflict but I don't
think that has ever happened in practice.

I do think we want to make this policy specific to changes under
security@vger.kernel.org embargo and not specifically apply to any Linux
change.  Otherwise we'll get dozens of reports of old patches that never
had a CVE assigned and likely already shipped by most distributions which
doesn't really help anyone.

Regards,

Anthony Liguori

--000000000000cf93cd05df122d32--
