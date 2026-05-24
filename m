Received: (qmail 21727 invoked by uid 550); 24 May 2026 19:35:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9824 invoked from network); 24 May 2026 18:37:36 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779647847; cv=none;
        d=google.com; s=arc-20240605;
        b=ilk/Cr2JQw3w5z9tFvh9SNVNXcPcNVGlYv4BygJomUGga1rndFhX2n2+5CPNANKArX
         9YN2ectC90LkrpMkq0P5/K5RTeKPrFZDQRT3uJEKUGROv69YFX33xcmdHYs+jkZh93qo
         p64yas7o68JUDh61A/svPtS6gmpIAISZmGpPgC1vcCVU2D02iOwfdhODRuq/fgxWPto2
         T3uPAwxUcIOVNCgamcHdDOfnn+3Bz+84Ep9XGNd0OkbeEhTepUfzyPiQKnCrp7oJ3Xq9
         JMlGvAAIIqGK8gn71QZqaLuRE+gzEFvHU1Jw8yV1NJKwj5Sw267nr9788G4hkKM5JdMA
         zeTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C2IHXzjsZxOFD8UuBO5NaTFPlJA+3/RcgCm0NsOaP8Q=;
        fh=g6zAH8SGPfwV0Op3cJgYJocSP92ELfY1VVdr4FeaCjs=;
        b=K9dOHbu3N87yihFs/YdnyWpX5SJm6aEyOe0T/Zq4pMsF0CVMjjmuMuW1KTjocSXJX6
         jg6P8XJITuuA9Pulp8Csw6vPE1oVOO+h7Xj+SL+h0Zj2NWn3GyNi193k86GsAXfSpDWb
         ZrRdVK5QVN2bdMY4M86AXhPE5eAKdsUL5VGVA3L5dqbrIaH5JesaMzySIarWT5Sr43sx
         IA6kJuskyeH4VNJ6FT/8SZn7zqZE/Cz5leA4I4taJnYSKt11So/J3d7SdjSPa5xFdd+U
         UMUeF8ZF55Kd9b601uo6Owa1HdPg2vAFk61Q2JuitTUVUem88Ffof2LShvt6PcR4hu4k
         chWA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779647847; x=1780252647; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=C2IHXzjsZxOFD8UuBO5NaTFPlJA+3/RcgCm0NsOaP8Q=;
        b=ce4qjDG66Jy+UZ7f6vSZoDbiSJcFb1ATLjI8gcl0f27DOfDZQHMv4NKRNx0xrIA2aL
         r2dIR8VBRpytDyir0nKU7TXYjWAP1vVFBOUvIg5WqUzOM++AFrj4J70pVGMIOFo+cO5C
         4fuIxouXN8bS61vBvZVPCDNBbidTcyuCgA7Nkji8bp8vEwBKBh8UOyPjpa8Bk+Ti/GqF
         /MnRB20CtaVekKzXaaMejv9F3qNnZJyVSvX9Ht6H1Cidwvc+l1B1fAWffDAvXhmWQV0X
         8/gJenmO6UjLSjiPJhOvFHYY2PqZARVeygvm2tHpwljEjG8T/2EOuNjamHCakCpzZYvy
         CmIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779647847; x=1780252647;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C2IHXzjsZxOFD8UuBO5NaTFPlJA+3/RcgCm0NsOaP8Q=;
        b=AXh9kSrdorFErza61U0vQvZIJwVHWqbJchk/THnnx9hnCrE0ZQRQxowznkQ2KwFS+U
         Suc+gPzmoQ6lIS4nJSxGt9Xs4OewQMyatwk0l7anFt0hq3kDPEtQXcfQoSWyRwBoa874
         UwXaMlXJteeYSlzHqzGy0pnfXTD9v5Nh/rtH6qmmfyE+2AZbBtg5IUt/6x1JBN2KiyCy
         80lOylJsZjgBlZxtEjA+0A3d0vy9XgRZVwC2DQZwVFfaGAxL7HQbNfh4nSNxfY4pUyrr
         4HFgK0haYjJcbEb3Z03DFlxgH+RxcEZNIjsW7JY5GSoEIXAo07VnnDS0iNrVBDCT3qI9
         ZdaA==
X-Gm-Message-State: AOJu0YwVodLszpNQt/wBC+WqXWltk4hM3Br26kIYdOycitE/CfBHX8re
	aQRaOwLqeHZa8QtPshB4OISfKIzThPqNUv0t5xUIBD22yo1L6LpyFl7tjZV+pTOKxHW4kt97xRM
	ts62klxjELVkjk6AfUWjHlbzyoSaFXOU/ihG0
X-Gm-Gg: Acq92OE7qLOzToPf4Dmgv3KXwj7KXF6dAJiBfLdvo5wciOMC6e5PdV6GlRGFQK+XcCS
	ELniZnB+wDM6XXuWrcAlSD5IgbNdACjwKffX3aAa1Ift1arrcygtBGKotJ6FQWuTv6H3xoi20BJ
	Rb+pMes+arIC3/88aRJ+zPMS4oCqzG2soI/OjhPFX5IevMsO5g1XNPaS6YYPz/hKfn5von+hDb8
	CtB7i65vchC9aKDUaqp8reOZwZp9kCd8+i+kqmoQLPBN1+sdiy5l6FsjBe2VEsQYw3e68fGSqR7
	ZWQiAQc9nYOofEEEG+BasFzIkQupwQ+aXhrnJf0=
X-Received: by 2002:a05:6820:621:b0:69d:8de0:bf3 with SMTP id
 006d021491bc7-69d8de00c88mr4523578eaf.9.1779647846782; Sun, 24 May 2026
 11:37:26 -0700 (PDT)
MIME-Version: 1.0
References: <CA+7nKoUW7p1=zC=b2C5j7+27jPtHRFyD-fo4BWO9AV4yndHLLA@mail.gmail.com>
 <20260524165449.GA14609@openwall.com>
In-Reply-To: <20260524165449.GA14609@openwall.com>
From: Matt Christie <mattacusspartacus@gmail.com>
Date: Sun, 24 May 2026 14:37:14 -0400
X-Gm-Features: AVHnY4JlMiwxCiET6r3lOyCGGAUHKwVkQRTJIfcWFjWP4CHlGN1uODDmn1aVMAc
Message-ID: <CAG9GTtTU18iYd8zpnOnzVsG7JXeVD7Pb9qogMp58HPoxD-hU-g@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Manopakorn Kooharueangrong <manopakorn.sec@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000bb9a6d0652948d5d"
Subject: Re: [oss-security] root-project/root: Heap buffer overflow in
 TKey::Streamer / TBasket::ReadBasketBuffers

--000000000000bb9a6d0652948d5d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Don't usually reply/post here, but I work with ROOT on a regular basis and
they have a preferred route for reporting vulnerabilities.

https://github.com/root-project/root?tab=3Dsecurity-ov-file#readme

Ideally you'd also come to them with a patch, but this is asking a lot when
working in ROOT.

On the note of delayed posting, I was under the assumption that things
should ideally only be posted to oss-security after the coordinated
disclosure period and/or if a patch is available.

Thanks,

Matt Christie

On Sun, May 24, 2026 at 12:55=E2=80=AFPM Solar Designer <solar@openwall.com=
> wrote:

> Hi,
>
> On Sun, May 24, 2026 at 10:07:07PM +0700, Manopakorn Kooharueangrong wrot=
e:
> > I am requesting that you coordinate a CVE assignment.
>
> It's been many years since you could request CVE assignment from this
> list.  I guess this somehow got into the training of some popular LLMs,
> since we started getting this sort of requests again lately.
>
> > =3D=3D Disclosure =3D=3D
> >
> > The fix is already public via PR #22377. I plan to publish this advisory
> > once a CVE is assigned, or after 90 days from today if no CVE is
> assigned.
>
> You've just published this advisory to oss-security.  We also started
> getting this sort of nonsense about delayed publication in postings to
> oss-security lately, which again must be the way some LLM is "confused".
>
> > Please acknowledge receipt.
>
> Please disclose the specifics of your use of AI in your reports.
>
> Alexander
>

--000000000000bb9a6d0652948d5d--
