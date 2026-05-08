Received: (qmail 17427 invoked by uid 550); 8 May 2026 15:59:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17528 invoked from network); 8 May 2026 05:20:57 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778217646; cv=none;
        d=google.com; s=arc-20240605;
        b=I+kOR1bEFqKNboWD3c3uRHgwm+MtCcXlvJiaEePH2KKP3rvy0buj1JOHG4mJlzwjwh
         Z/llwq8U8Vf6lACTnE1sqOwT+FwUSBB/KXeKyZoHoXNY5X3ar7BU6J59KQtNKwmxTbIw
         seGYUJ88ruXuICHYmkGkCbUgrnJ2OotEWRX6NKkAHEFDr5pCQIpvlE1uCmiDl7DzboyO
         3+MAWRqE32kin16Vyi8Hnsc6XJWLc3ceOrF0cpKBM5dxs5ACv6S7Kpe9scTWUPgFlQOC
         qspOgxvmErbNn/4wI0BkyKw4r4mDF1klL+dRa8n8xQKL7Cq0e7D3R+pF8s/qDNbdKkcM
         WHQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NSxdk0EtiO1rRiCn6aoe+mATuxrLje+3yutjbz6j7A0=;
        fh=/2wjJXCERjCXACaFt+tU2pmiX2NBpfjfgIf7D9NgyoE=;
        b=Ca4Y7kP1rK/s99YwH5iUxV5bjP4748pUYEXq2MTaCfCeDgYLrYzk6MJpGM9vdq7YO2
         TRmedbd+qTPW1MkBhuDU3tUt8G7S2Xvio519K4whwWQsS/kfHut+k82njRkthKUdF0cc
         ZOQVE1IlMk1k9hmL93h2qKQ5ZBScwkAFklA/zUX9fo1EntTgCirdwqvkeXOKFGi2MoQG
         gwJgkNmWfEe5lId9pMzzSQlXxaHU76yVpGTqlVxLwDvphJfi6lHF6uodGAnY3mEGO0Rg
         UWsZwsTMsj37XhZ62FMo1AtXvXJeoBo9UtQGy9BnjrVGgrfGwyA3g7ioI8oqPbfz47/o
         0Pgw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778217646; x=1778822446; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NSxdk0EtiO1rRiCn6aoe+mATuxrLje+3yutjbz6j7A0=;
        b=TtkkC4RcFRdVV7RihiwFQdpL3Xpt1+57Ml4q93Xa36SUcJlnGblBr3db5TxV0U6Lnw
         nYfIFt1nNys5ovHmUi396+2aiuf+sFgU6wG04xrzcFpW1bgdEC5zOWsvmWeqzKkxl6Tc
         I0DIPL/o34VaCdL/yEXM34YwZ+td00fjrOCVq4CtLLV+KZkBUkbsFeKNSdeyS3NZ/IGD
         gePKIRGzjeFbsDRxhp9p8qYLcxf6KQIt3ohOP4ZlNmpjJw2srwa/dztqFz+UPNB+eKyh
         l39cza38ZIMTmEpCfWy223sAuPoogqEtw70a4QnAoQnnxzAYyN2fXETvBytAEZPfyGvC
         LHwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778217646; x=1778822446;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NSxdk0EtiO1rRiCn6aoe+mATuxrLje+3yutjbz6j7A0=;
        b=HhowklGOjutc8IOO7BnbfFiLO+PHTEf/0fc1Zxjvxmt4Y2h8cDPkcquH+B0n+HgHsF
         LxJcwSKVfj8KJ0bdnuR9ViP+xyg+wqODo39Kt+HT7oNDU7LwH50whzJZXIIPT2pT/PpY
         6ceqCnXBN8/hFecK2ocw/A9EpPPrnv+hyCtlB7a3dxFJZ38ZOQ0kXpwPdnP4fhzUd78O
         e/K7norGc/dzr7rrbjyR7NhOfQ/zf+8nmC4i7SgN50traQrns4Q3ZimEPkS5mCzXkoBk
         41wXHHsdkbdn9WEsPxWQR2Np0/QOjBntGqmXsRNvQQITlMGlWxu6sVrhEGXvggxUy8jM
         szTg==
X-Forwarded-Encrypted: i=1; AFNElJ8pHbB+tddY71k2hZpj3OfdESIxOvRS1i+FxXpYhg2mFdhMNac9zO4TX5UxnT6IvvOVfP8PE/M/xmYQ6l8=@lists.openwall.com
X-Gm-Message-State: AOJu0YyTXKzGp4XFOSHzE3a60NLEd6XPdYxSFgT0dn2bsWsA0fAZ66Ql
	VYFOmAJB3JmGQzkxAmVyn85o1l41p7NRNR08T9m++gIV7shFtah7Gkz/i/Ua4AYZKgUlduZMvaJ
	/1KVO8gLMCh8nJHiwb2H2U9ziQvxMJQ0JGPo9p7I=
X-Gm-Gg: Acq92OHderlApqf1wy9a7vwvgXVPoncU94/ZGNspBQ3fLEw4syf8XK1G1Q64YqW2gv9
	ALl+GuVab26/vTsylYlxz8p3WY30o0gkigaAsljanrJNmdt+dNbTEbnB3NyPh6hgMN2ktFSMblp
	gsZgBeU2MJUjcymGCHit9X6ucxmj3hHvVBOdBRT+hvykt8QS/uDsKSBHTvY/14kqvDMc52wmESt
	vJRbkJNqABelE/U6riFsnOV9xncPXGmY1MdC2hh1Dx0V3McIgk0cGsrUscMhQFyVaAbAmfxozvj
	LcvIAtfL
X-Received: by 2002:a2e:beab:0:b0:393:e5d8:1570 with SMTP id
 38308e7fff4ca-393e5d816e3mr7243521fa.8.1778217646227; Thu, 07 May 2026
 22:20:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAMrV8J7FfiB0ptMZFU+EKdRt1NPgtTe_YJWPFw7AQdB-vAQ75w@mail.gmail.com>
 <2b8f2e56-15be-4732-baf5-7a3df4f8a1fe@gmail.com> <20260507174811.GA4838@openwall.com>
 <6e6f95c6-3880-4b11-858b-82c47d991d3f@kernel.dk> <20260508023240.GA8796@openwall.com>
In-Reply-To: <20260508023240.GA8796@openwall.com>
From: Mohamed salem Eddah <medsalemeddah@gmail.com>
Date: Fri, 8 May 2026 01:20:34 -0400
X-Gm-Features: AVHnY4JJvKAz81RQGGhAyf83SpFOAoBImu99Num4mdyY72EPFy4Pvm24tTzV6sU
Message-ID: <CAMrV8J4Gc_RAWrBaVQRzLKOphxYaFMZ7kWw6tyfuee2cp-Da_w@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: Jens Axboe <axboe@kernel.dk>, oss-security@lists.openwall.com, security@kernel.org, 
	Pavel Begunkov <asml.silence@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000002304b70651478fe5"
Subject: Re: [oss-security] CVE request: io_uring zcrx freelist OOB write

--0000000000002304b70651478fe5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I think there may be some conflation between the kernel behavior I was
discussing and the exploit ideas in the blog post.

The main point of my report was the observed freelist imbalance /
double-return behavior leading to free_count exceeding num_niovs on a
pre-fix kernel during the scrub + release interaction paths.

Jens pointed out that commit 003049b1c4fb8aabb93febb7d1e49004f6ad653b
("io_uring/zcrx: fix user_ref race between scrub and refill paths")
already addresses that race, and after reviewing the patch more carefully I
agree that it likely overlaps with the condition I was observing.

I was and still am experimenting around the same ZCRX lifetime/refcounting
paths because I found the interaction interesting from a debugging and
research perspective. The blog post reflected some of that ongoing
experimentation and clearly mixed confirmed behavior with incomplete
exploit ideas.

In particular, Jens is right that the modprobe_path section does not make
sense as written in the context of a privilege-escalation chain if the
process already has the required capability to write that sysctl. That part
was exploratory and not well thought out.

I=E2=80=99m also not trying to argue about AI, authorship, or anything else=
 around
that. My point in the thread was simply the kernel behavior itself. The
disassembly I posted was meant to show the unchecked freelist writes on the
pre-fix kernel and explain why I initially believed there was still an
outstanding issue.

At this point I=E2=80=99m not claiming a new unfixed LPE or a separate CVE.=
 It
looks much more likely that what I observed was already addressed by
003049b1c4fb.

I=E2=80=99ll update the blog post to reflect that more clearly so it does n=
ot
misrepresent the current understanding of the issue.

Thanks for the explanations and for taking the time to look through it.



On Thu, May 7, 2026 at 10:32=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:

> On Thu, May 07, 2026 at 04:28:56PM -0600, Jens Axboe wrote:
> > On 5/7/26 11:48 AM, Solar Designer wrote:
> > > I only skimmed, but as far as I can tell Mohamed isn't the original
> > > finder of this issue and the report and PoCs are AI-generated, which
> > > could be why Mohamed is not communicating further.  It's becoming a
> > > trend - someone sends AI-generated report and doesn't communicate.
> > > Which doesn't mean the report is useless, but it does complicate its
> > > handling.
>
> I'm sorry Mohamed for just assuming you didn't communicate further; I
> got too used to send-and-forget kind of vulnerability reports lately.
>
> > I'm pretty sure that issue was fixed by:
> >
> > commit 003049b1c4fb8aabb93febb7d1e49004f6ad653b
> > Author: Kai Aizen <kai@snailsploit.com>
> > Date:   Wed Feb 18 17:36:41 2026 +0000
> >
> >     io_uring/zcrx: fix user_ref race between scrub and refill paths
> >
> > which is already in stable.
> >
> > CC'ing in Pavel, who was inexplicably dropped from the emails, even
> > though he is the one guy that should indeed be on the CC list.
>
> I'm at fault for dropping Pavel.  The oss-security list adds Reply-To
> pointing to the list, which at least with Mutt replaces what's in From
> in reply-to-all, and I forgot to override that.  I then realized, but
> thought (maybe wrongly) that since Pavel had replied to the thread he
> must be either on the list or on s@k.o anyway.  Sorry, and thank you
> Jens for re-adding Pavel.
>
> > > Meanwhile, it looks like there's a blog post (by someone else? I am
> > > confused) on exploitation of this issue, with exploit files attached:
> > >
> > > https://ze3tar.github.io/post-zcrx.html
> >
> > I won't comment too much on this to avoid offending anyone, but I'm a
> > bit puzzled by:
> >
> > "Once we have the address of modprobe_path (from KASLR step above), we
> > write our script path via /proc/sys/kernel/modprobe: c
> >
> > int fd =3D open("/proc/sys/kernel/modprobe", O_WRONLY);
> > write(fd, "/var/tmp/evil.sh", 16);
> >
> > This sysctl entry writes directly into modprobe_path in kernel memory
> > and is writable with CAP_SYS_ADMIN, which we already have via
> > CAP_NET_ADMIN on container configurations that grant both."
> >
> > as surely the point of a local exploit is, in fact, to gain root in the
> > first place. If you already have CAP_SYS_ADMIN, what is the point?
> >
> > But hey, someone wrote a blog post about something that sounds
> > dangerous.
>
> Oh, wow.  That is indeed ridiculous, and puts everything else in this
> report in (greater) doubt.  Not only would that require privileges to
> write into that sysctl, but also why determine "the address of
> modprobe_path" if we were going to just use sysctl.  The actual code in
> zcrx_lpe.c tries to determine the address, but then does not use the
> address, and does not use sysctl either.  So it would not do what's
> claimed even if run as root, as far as I can see.  Note that "mp" is a
> local variable that's only checked for non-NULL and not passed anywhere:
>
>     uint64_t mp =3D kallsyms_addr("modprobe_path");
>     uint64_t kt =3D kallsyms_addr("_text");
>     if (mp) printf("[+] modprobe_path @ 0x%lx\n", mp);
>     else    printf("[!] modprobe_path unreadable (kptr_restrict)\n");
>     if (kt) printf("[+] _text @ 0x%lx\n", kt);
>
>     time_t t0 =3D write_evil_sh();
>     printf("[*] evil.sh written (t0=3D%ld)\n", t0);
>
>     if (method =3D=3D 0 || method =3D=3D 1) method_a(ifname);
>     if (method =3D=3D 0 || method =3D=3D 2) method_b(ifname);
>     if (method =3D=3D 0 || method =3D=3D 3) method_c(ifname);
>
>     printf("\n[*] dmesg:\n");
>     system("dmesg 2>/dev/null | tail -20 | "
>            "grep -iE 'warn_on|bug:|oob|free_count|zcrx|niov|kasan|panic' "
>            "|| echo '    (nothing)'" );
>
>     if (mp) {
>         printf("\n[*] modprobe escalation...\n");
>         trigger_modprobe(t0);
>         escalate(t0);
>     }
>
>     printf("\n[*] done\n");
>     return 0;
>
> So AI slop it is.  The question is whether there's any substance here?
>
> Alexander
>

--0000000000002304b70651478fe5--
