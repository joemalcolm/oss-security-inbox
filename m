Received: (qmail 32686 invoked by uid 550); 21 Jun 2023 17:31:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24329 invoked from network); 21 Jun 2023 17:26:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687368404; x=1689960404;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PL5HEDplpWjruscrH/A0V5hw4eJIeAX0pGm2IyNcMT4=;
        b=TilDWoMXeW9g/bHtw5RuY2uOG7P6nIEjPP/vUExNd+qUDfMhcFuLObU0S6qAjgfzb3
         YHaPiGS3WW07f7E8GGbGwQQX+8u6jFZmFqbtoRlMFvrEhc942B1J3T1cqA1MoPtShrbB
         3dLLVgy2Ww3N4PGMXZqAkkllUoVv84gpJzujhtVYSZRhLPuCuxGzq+SBVMgl16dcgXFp
         Tk4nx9/lgUREFTwX3PC1gJSoJpNEMig4d5dtjBa+3pQT97e8gLD8TekcfODepHGWFOkA
         Wvshy5PoQ1abvaDqsQW+leOlFtpEXhtzmuBYFcTurdWKYMWkBeHmiZgK5wj8IAHOh5Hv
         DK7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687368404; x=1689960404;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PL5HEDplpWjruscrH/A0V5hw4eJIeAX0pGm2IyNcMT4=;
        b=dxglnYAgK4cPOTfi044UAexrX95vNiffIk+xtGKrD6GSCPx4EHKHWC+Ru8HW00DX0Q
         W3tX9XerTL4Z6rCtNvR72BCoO/mZIzBDoiT89oJDUBszCjj/QJeoDgeziLS7fOuZKpKy
         dBEKIHH+MNyl1CKJxFZCnkuXklJL32dQme8VNSY9uSY1LpMuX7C5i3u/CFdd72t0CRDy
         Upee7bmUQMV7DF9ynfQ8umLZPQltJaF2UnOsgDhwupYtKJoZzK6RlWiUPLV3OFR5z4Yu
         hwtnYRoR7mw/gcOsrg+up4w2P1FhIhvmKz4KNz+l2DCVEaYZbV+N4UrHhCz8daDnjzqG
         jEKg==
X-Gm-Message-State: AC+VfDxuUIm6wdclXx18UjXdrc1Ig4LNN9ctYjFal/A5Ux+Y6gUtu4qz
	ry4MqTtBgdxcoQ32x2YOWgOxmk9N3CYcRrP9FDDNxmGM
X-Google-Smtp-Source: ACHHUZ5LtChS0aAcPY2VtyFs0r0Enjoy5RAnSrS0nd0TCqCrSWQMRl5PTJ9DhHgJ38z2mwBGtFZGg/KplLPDBTy0QdY=
X-Received: by 2002:a4a:c302:0:b0:560:ac0f:b87c with SMTP id
 c2-20020a4ac302000000b00560ac0fb87cmr2056153ooq.8.1687368403870; Wed, 21 Jun
 2023 10:26:43 -0700 (PDT)
MIME-Version: 1.0
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
 <CAH8yC8noq14ANkUfn9VVD0ESLey1uv_2yZCV6DX4vgmE4FUatg@mail.gmail.com> <201c4d4e-a734-4642-f0b3-74ee7d0d87c5@oracle.com>
In-Reply-To: <201c4d4e-a734-4642-f0b3-74ee7d0d87c5@oracle.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 21 Jun 2023 13:26:32 -0400
Message-ID: <CAH8yC8k=-aVSwDXTOq0dSe7Ojw3Fy3M6ug6YVBb=bj4ZQYmq=A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On Wed, Jun 21, 2023 at 1:22=E2=80=AFPM Alan Coopersmith
<alan.coopersmith@oracle.com> wrote:
>
> On 6/20/23 23:45, Jeffrey Walton wrote:
> > On Tue, Jun 20, 2023 at 6:49=E2=80=AFPM Alan Coopersmith
> > <alan.coopersmith@oracle.com> wrote:
> >>
> >> https://nvd.nist.gov/vuln/detail/CVE-2023-31975 is freaking out scanne=
rs
> >> since it claims this bug has a CVSS of 9.8.
> >>
> >>   From what I see at https://github.com/yasm/yasm/issues/210 though, I=
 can't
> >> see any CVSS higher than 0.0 being relevant here and think the CVE sho=
uld
> >> be withdrawn.  Am I missing something here?  All I see is 2 objects of
> >> 16 bytes each not being freed in the fraction of a second before the
> >> command exits and automatically frees the memory - in a command the us=
er
> >> deliberately chooses to run, which runs as themselves with no raised
> >> privileges, on an input file they provide, and which exits after proce=
ssing
> >> the file and doesn't hang around keeping that memory allocated - not a=
 bit
> >> of security risk at all there.  (Yes, it's a small bug and is good to =
fix,
> >> but not to raise security alarms for.)
> >
> > Memory leaks on exit are par for the course in GNU software per
> > https://www.gnu.org/prep/standards/standards.html#Memory-Usage .
> >
> > Nothing to see here, just move on.
>
> This isn't a GNU program, but that doesn't matter here.  My argument
> is still that this CVE should be revoked, and that this class of bug
> shouldn't have CVEs issued.

Agreed. I'm not sure how that got a CVE given its par for the course.

Jeff
