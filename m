X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2575" "Tuesday" "12" "January" "2021" "08:40:41" "-0800" "Philip Pettersson" "philip.pettersson@gmail.com" "<CAHQ_-nSbZpFA7rqYD3OfqROuzXd_J2UXmYiGkpBFgESCxxMrxQ@mail.gmail.com>" "50" "Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil "1" "2021011216:40:41" "[oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" (number mark "U       philip.pette Jan 12   50/2575  " thread-indent "\"Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic\"\n") "<20210112160429.GM4035784@sasha-vm>" ("<CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>" "<X/1YIT59FZ7clijT@kroah.com>" "<93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>" "<20210112160429.GM4035784@sasha-vm>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1432 invoked by uid 550); 12 Jan 2021 16:43:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30252 invoked from network); 12 Jan 2021 16:41:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=R4soQjLS/vaqVuispZBfnhX01cgn2oZVdiZcNwy9iPM=;
        b=GTTL+N+wV5rGk0x/mpATOl0RvaF3sGRnzp9CsFo+LF2paTDqRDq/BLkARmUnt6L3Iq
         D6+GxeU4qhxHNcxGwLONPgIc4Vb24r0B5cFAIec7O8CSocPnTrOGgA8N2HjOgJR0eijE
         uYfqS/cmxT3bu4HMMuYHWDYDgK+YS6+WKvSJtxWhiPiw2hyNqO1F3oYGeyEAdxQgCVcf
         UAXRqT12NyZbQyfJ9iQnN/KQXegROPAmgH12exkLyoPHN8l5DW1Mz3gw/KU1vVSdsPxf
         BvGUtpGtHs0LYaoQzrIIIJGXg2PLKRiMaITU7NP9VowkuI0Xe5zQDmpaIHw+Q1qqyZIk
         JyAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=R4soQjLS/vaqVuispZBfnhX01cgn2oZVdiZcNwy9iPM=;
        b=ke0udenAyYieYTVJ/Hl3U9fbw/S/wSU+PtCPpHFWvhQiRMbbXkZO7m5pVhnplRhbvY
         wmF92qZ8Lq+O27TsUDmjQ6RIKv3ecCjLcXWFVV5RDOBY6numeiN4N8VzuRY84YWKoZJ4
         /ae1hkuRx/MU4j7E6TIf/QzL+rwMvK4Pow8OFPq8PBFXQeL2yGw7GQLVnE2TOY8iphay
         zvzC60gn4Zn+Ug4I5BvGTabL+huy1pbUOdw7jDNhSU8hZpJVdGWUKg/WsMUjTiddhBSw
         UrSaT352PdnexzNNdlSx9xO4Yi//BrK0oxqbwFb6IU2DmuZTflGFYHe5HNuSPa/BfR3m
         UsFg==
X-Gm-Message-State: AOAM533jTiXTEuaCB8UeYqt4uADF+rSmlRUPUfyJt9vSYI8yhbstpmdF
	xUsrSoQQDSEgwjCOetKq1KUjY90jmElT0WWfQVWmqYbUF6k9jw==
X-Google-Smtp-Source: ABdhPJyYwaPHKIozHg1VH/AD5wFZGoOi6vZBwyHxOWecHWCZ8OYyLGSNTLttFCXEeN7r3HPp88I3utMo6lq5ZIonDkE=
X-Received: by 2002:aa7:db01:: with SMTP id t1mr2181eds.185.1610469652382;
 Tue, 12 Jan 2021 08:40:52 -0800 (PST)
MIME-Version: 1.0
References: <CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>
 <X/1YIT59FZ7clijT@kroah.com> <93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>
 <20210112160429.GM4035784@sasha-vm>
In-Reply-To: <20210112160429.GM4035784@sasha-vm>
From: Philip Pettersson <philip.pettersson@gmail.com>
Date: Tue, 12 Jan 2021 08:40:41 -0800
Message-ID: <CAHQ_-nSbZpFA7rqYD3OfqROuzXd_J2UXmYiGkpBFgESCxxMrxQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule
 could result in kernel panic

On Tue, Jan 12, 2021 at 8:06 AM Sasha Levin <sashal@kernel.org> wrote:
>
> On Tue, Jan 12, 2021 at 03:23:16PM +0000, John Haxby wrote:
> >> On 12 Jan 2021, at 08:04, Greg KH <greg@kroah.com> wrote:
> >>
> >> I still do not understand why you report issues that are fixed over a
> >> year ago (October 2019) and assign them a CVE like this.  Who does this
> >> help out?  And what about the thousands of other issues that are fixed
> >> in the kernel and not assigned a CVE like this, are they somehow not as
> >> important to your group?
> >>
> >> What determines what you want to give a CVE to and what you do not?
> >
> >
> >I think I can answer that.   There's nothing technical going on here, it=
's down to the behaviour of the end users of enterprise systems.
> >
> >A lot of those people have a hard time understanding that they do actual=
ly want bug fixes and an even harder time understanding that they need to a=
ctually do something to install those fixes.   (I was once asked if I could=
 fix a problem without changing anything, anything at all when the fix was =
a one-off chmod.)   A CVE number gets attention: think of it as getting hol=
d of the customer by the lapels and going nose-to-nose to explain in words =
of one syllable they if they don't update their systems that they will cras=
h and they will get hacked.
> >
> >Ooh, no, they say, we can't possibly take the risk of updating our syste=
ms.  Suppose something goes wrong?   Sheesh.   Suppose, instead, someone co=
mes along and sees a known, fixed bug is unfixed and uses that to trash you=
r systems.    Or that you've got a bug that crashes the machine once a week=
 for which there's a fix.   But, no, apparently the mythical risk of a test=
ed update vs the actual quantifiable risk of leaving the bug unfixed is so =
great that they'd rather take the real, quantifiable risk.   I suppose that=
's understandable, after a fashion, even though actual regressions are quit=
e rare.
> >
> >If you present a customer with a CVE number (with or without a score) th=
en they have SLAs which will ensure that that fix gets applied.
>
> The subject of this thread is a "vulnerability" that requires root to
> exploit and was fixed ages ago.

I didn't take a look at this specific bug very closely, but on certain
distributions (Ubuntu etc) it has been possible to get CAP_NET_ADMIN
in your own network namespace for years. An unprivileged user can
become root with all capabilities in their own user/network namespace
and modify local iptables rules. On Redhat systems you still need
root.

Philip
