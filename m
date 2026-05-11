Received: (qmail 22353 invoked by uid 550); 11 May 2026 14:59:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3484 invoked from network); 11 May 2026 04:46:08 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778474757; cv=none;
        d=google.com; s=arc-20240605;
        b=RTbgZvTQ0KkdQngMalp+q+LQDW85tvv8x1EwDtLCTrMXt4uLb/Ukxw4gN763/FeC+x
         0wx14Eod6DCwmangavkEU3v8g6Lxj/QkAQAxNYnyu0lUN9h5Y2BBp8J5SRm+kb025jyF
         LRLQiEfXBDkklaFBD0TUjYPkF11MveNCRC30VGauM4vnQFV9zN3ynHxlzvgVjcdRLFEC
         9E/SK3czhoGemY1d/4Gu9w9UwhrfVuD7S34Oiw7qF24AYZcX+GrWfoW1gXkMCrJBiR5c
         1kw6C+NnNxeXR80jiU/ar8YjlXrb2zbzMA0zm6/DXddD46ftXN1RXJCWCX3HoigIuHcY
         M/Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Hy0o99rzfVeJjuhU2kGelt85ZbV9ZQvG33g14Z/Y4Ng=;
        fh=somDQ473zjaB3/dmnRVdClOEdZDY36zHZzOSGlsqago=;
        b=aum7AzUKZ+IEUKC3ba0CQKTeWvkMSPdT/3Qzjz/70um0kBF2i0RbNVVS2JqNHbGdra
         j0dj/5JwnaK3rY6yLHpUVqT9guqwaZCWFFunto9X6mI446m3Q4LO3Skjk7abQbjfXe9e
         cOGVss+0J/1O90hXUdAlaa+EUIaUYughdCNjcp9tB+yEDwbaq1cDAs0YfZkOD5uXRSde
         qqKvMK49f8yCrPmnVaeUzqoWHAHUE2h0sSP0qcPv2bjtsMEQgLE8eUxAffuQrVfpj4ta
         Yr58Fd6AicdS/+hOp8SeQHiRsJ2a0b7jvA9/p6i7iYQuTLxGS5HnIG1Umd7EK+390LjQ
         rkuw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778474757; x=1779079557; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hy0o99rzfVeJjuhU2kGelt85ZbV9ZQvG33g14Z/Y4Ng=;
        b=pP52g/BNpBt5lHB2OXOttohJYTR/E1hXmomyywpB8Dzt0I73GmsvswKRqP1kcBsDQb
         vGIrcyesuJDKpzKsPCYu4VaaLtCUYn0mmwqMYFWWzOOIrty3AQMUAIhongRqy7iVMaD/
         YYS1DsyCJ1pdlGF3t59+oPRcQ7tA3gLf1+WjvV2DV4qo2GFksohCgmcP3RXvAJkrW9tL
         c6GTM8BWN0PnK3Q8DSn1Pc5IoITF9FnwGQR4nZZskb25Vnh1sP6TdSRhxaoPsfK0ZL68
         A0OiL7i6xcbn7WDQWZTITLZa0fh8ZXU3isq0dLX+jjz7NjhXogiCderZIl1uyV1ZIIZU
         YM7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778474757; x=1779079557;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Hy0o99rzfVeJjuhU2kGelt85ZbV9ZQvG33g14Z/Y4Ng=;
        b=lBQxWe2CVEJ8Ap+jdLbvEPJ+rHn0cO4uVP799b5wG4Anb/np3TLs3devHoEU78GNOa
         sxKL6eW520tUq1If60+ad4IbN9vVvGDZzrel3nYNAUz3UpWtG/1Z5Pvm0NteXJ16RkUC
         jnhSrnEAry9RO8g5yc2ZdPcDkmGdru9y+1z2HHDqzv/UvD93hYOZ1DhGnVa9E+EzvHUn
         S7a82UfzwaBut7hsBAmXTM4XVsxjaUUie1Bp86qoevkfK75AtXQtYEheUQtFvWmP9q4/
         WSO7UC8V4k4+45KOhEoHsWvwRtYPga2c0ifPTv+R351tMcV4IyTGrBL7pz8SjheWJc5U
         F64Q==
X-Gm-Message-State: AOJu0Yx0XkEzDEOtk6TKV0k2h7er65WjGRK3yxGN/fjzX3QQZ2z4o7pI
	atS+aUrK0chl6WWnmRv3HfoRk+vd0JLNu/IOWr+4UKwqHgfz9h6OPyALp8oneczQ9Uj7jSsM1ds
	xLJQhpgMdgv3ufGkVIdixKiNkPqFtFnA=
X-Gm-Gg: Acq92OG7J8hnUwilbYXTJ4DiNWrohz26gt3XXNrG+sS1JTne/xthvFazU58GEs0lGWf
	s0VQ+B8l+fOXBN5ZQl1ACRFgq/NXYApfd8s+4y+Xtr1QaM0TITVz1MQO/FBjN12+DdqinXl477F
	D/gPxsfq6xxrovlSBkQM2Pb4H01cWrD1g3+vZ9CXsOn3wVLvEnmau7EMNkLQATwv5JjJVvF9pBK
	LdV/K10oIlnQa/BisamlQFiDvFkGD1hhAL4rdqsQ2o+OsdFZcSTOs7pQR0pVRMOdbV9umQDFYM4
	N2OrYcc=
X-Received: by 2002:a05:7022:3d05:b0:12a:94ab:e20 with SMTP id
 a92af1059eb24-1318e917636mr12001555c88.20.1778474757127; Sun, 10 May 2026
 21:45:57 -0700 (PDT)
MIME-Version: 1.0
References: <20260507042708.GA2912@openwall.com> <87bjerac9u.fsf@gentoo.org>
In-Reply-To: <87bjerac9u.fsf@gentoo.org>
From: xw x <v3rdant.xiang@gmail.com>
Date: Mon, 11 May 2026 12:45:45 +0800
X-Gm-Features: AVHnY4LNZWRKqXDwabMC5lZhRQCuJ31JICnG3sQwp5mg6kmHbs4hMiIBMRrVmpk
Message-ID: <CAFFJMPxyY-BRdH4zC-py5btjVbvMeMzonwhZsBeNDToV6Cqn3Q@mail.gmail.com>
To: Sam James <sam@gentoo.org>, Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Linux kernel: KTLS + sockmap "Reverse Order"
 Use-After-Free / Data Corruption

I'm sorry I didn't fulfill my duties. Is there anything I need to do?

On Thu, May 7, 2026 at 3:54=E2=80=AFPM Sam James <sam@gentoo.org> wrote:
>
> Solar Designer <solar@openwall.com> writes:
>
> > Hi,
> >
> > V3rdant, CC'ed here, brought this Linux kernel issue to linux-distros on
> > March 18, and apparently also to s@k.o at about the same time, citing
> > the (outdated) syzkaller "Reporting Linux kernel bugs" instructions:
> >
> > https://www.openwall.com/lists/oss-security/2026/05/03/2
> >
> > So we immediately had a coordination problem, which V3rdant acknowledge=
d:
> >
> > On Wed, Mar 18, 2026 at 10:28:23PM +0000, x xw wrote:
> > [...]
> > It looks like literally everyone dropped the ball on this issue after
> > that point.  This includes two distros who had volunteered for:
> >
> > https://oss-security.openwall.org/wiki/mailing-lists/distros#contributi=
ng-back
> >
> > 9. Stay on top of issues to ensure progress is being made, remind others
> > when there's no apparent progress, as well as when the public disclosure
> > date for an issue is approaching and when it's finally reached (unless
> > the reporter beats you to it by making their mandatory posting to
> > oss-security first) - primary: Gentoo, backup: Amazon
> >
> > I since heard back from Gentoo on this, but no word from Amazon yet.
>
> Indeed. I do think there's a circular element here, which does not
> excuse the ball being dropped, but I offer it as a partial explanation:
> the current kernel process makes it challenging to keep track of whether
> a fix is actually in-flight or whether it's related to a reported
> problem. But nonetheless, we should've stayed on top of it with the
> reporter.
>
> We're also onboarding another member for the security team as it's just
> myself at the moment, and we unexpectedly lost another from illness
> recently.
>
> > [...]
>
> sam
