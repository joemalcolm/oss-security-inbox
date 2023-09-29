Received: (qmail 21709 invoked by uid 550); 29 Sep 2023 18:56:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25716 invoked from network); 29 Sep 2023 18:29:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696012168; x=1696616968; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ta6fKZ6Te4fvAOoaCqze0tH+JFRHAFz2ohU+Zz3O+XA=;
        b=b5/K9VLlwJUt705wSVxYxOWlOLAc//cVgv+GrDZDVTFFY1WkfFYI76enm7nOJwYymw
         SsSubYk/z3PQ+aq/hXz7gj6u7N1WQuXPPy5kA6tydAzxFZhnvXslc9hGWX76DSmqr7Oc
         iSPCr5//zfHVbArAY5geJE4BiOP0GGYy5NQmv7ibBQYzfgrSjwjnR5VC+L9tHZClsoDF
         U90nhnM/hrYRROPSXXwtcO4ZH9LHBoaO0bz437QrrSiG91PeBTt+jz8G983eVs+1itqO
         epVITBqXi3e2WvsLNsZslaqXStkyTsaa1pdsXh+Owg0iL5TaLAKptWFOIyVWKs9ao96C
         Fh2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696012168; x=1696616968;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ta6fKZ6Te4fvAOoaCqze0tH+JFRHAFz2ohU+Zz3O+XA=;
        b=Kk+iNKwBD0uAcrGCicRLju5ptLyt5wn+9VyvBRy70/JELflI8B1QQI/NbL67JSmupg
         nYUZk/nuW0IGr6dyty2sKtFy88d8uWGIk4lhivVEyTAsNVvilyARkIumz/O1WV5hkm+I
         9iNGmYE0HcUPO2tPFlg37Fh40JWi2s2W6HOHBi7TLjcdT0DXoqSla6A6vgrUFXG2qyoP
         4EKZgrvB9GiBZk2hSHiOtHsRGV17UTB3Pog1yODf5XclAlNjZzSR/unyy58gE3aoCIVI
         Bja+T7VyEd/KWv9CakyaPKrohME32w9NM/8ZGH+4R2f7kALQKuz2oCGK+vEjjleDfPxC
         o77A==
X-Gm-Message-State: AOJu0Yx/hp97AEw6AVWbJCwCREANAgOxyzRXHdF4BaK9SU4NFg/rnsSA
	KsFT4pm4DrJ4rSM4xmRk5SM6QdDRA4wSiWYkQb0WUjIF0g4=
X-Google-Smtp-Source: AGHT+IGLHFnnzdejL5GPGwQg3ow4nSR5+AxOpKFbbFzldU7fIUHI1yDMvgf28Y9XYVDIAHhhpVPy9q7FKnw22AskdJw=
X-Received: by 2002:a05:6808:10:b0:3a4:8140:97e8 with SMTP id
 u16-20020a056808001000b003a4814097e8mr5082890oic.14.1696012168117; Fri, 29
 Sep 2023 11:29:28 -0700 (PDT)
MIME-Version: 1.0
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com> <ZRXlPoozp5n+cWv1@itl-email>
In-Reply-To: <ZRXlPoozp5n+cWv1@itl-email>
From: Jeffrey Walton <noloader@gmail.com>
Date: Fri, 29 Sep 2023 14:29:17 -0400
Message-ID: <CAH8yC8mV5LGBhbFHo+u7j7xWGbKS5_tOPiGA=1XhwCg65-Dj3A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-5217: Heap buffer overflow in vp8
 encoding in libvpx

On Thu, Sep 28, 2023 at 5:10=E2=80=AFPM Demi Marie Obenour
<demi@invisiblethingslab.com> wrote:
>
> On Thu, Sep 28, 2023 at 11:37:23AM -0700, Alan Coopersmith wrote:
> > Google has announced another media parsing bug, this time correctly doc=
umenting
> > both the base library and Chrome versions affected in the CVE.
> >
> > https://www.cve.org/CVERecord?id=3DCVE-2023-5217 states:
> >
> >    Heap buffer overflow in vp8 encoding in libvpx in Google Chrome prio=
r to
> >    117.0.5938.132 and libvpx 1.13.1 allowed a remote attacker to potent=
ially
> >    exploit heap corruption via a crafted HTML page.
> >    (Chromium security severity: High)
> >
> > Unfortunately, the bug report it points to is restricted access still:
> > https://crbug.com/1486441
> >
> > But the Chrome release notes state:
> >    Google is aware that an exploit for CVE-2023-5217 exists in the wild.
> > https://chromereleases.googleblog.com/2023/09/stable-channel-update-for=
-desktop_27.html
> >
> > Mozilla has put out their own security advisory at
> > https://www.mozilla.org/en-US/security/advisories/mfsa2023-44/
> > and delivered fixes in Firefox 118.0.1, Firefox ESR 115.3.1,
> > Firefox Focus for Android 118.1, and Firefox for Android 118.1.
> >
> > https://bugzilla.mozilla.org/show_bug.cgi?id=3D1855550 is also still
> > restricted access.
> >
> > It does not appear that libvpx 1.13.1 has been released yet, but there
> > are two commits in its git repo with the 1486441 bug id listed:
> >
> > https://github.com/webmproject/libvpx/commit/3fbd1dca6a4d2dad332a2110d6=
46e4ffef36d590
> > https://github.com/webmproject/libvpx/commit/af6dedd715f4307669366944cc=
a6e0417b290282
> >
> > Mozilla's commit references these two libvpx commit ids as well:
> > https://hg.mozilla.org/mozilla-central/rev/c53f5ef77b62b79af86951a7f913=
0e1896b695d2
>
> How long will it take for corporations to accept that writing media
> codecs in C, C++, or any other memory-unsafe language is a fundamentally
> bad idea, and that it is better to rewrite the codecs in a safe language
> (such as Wuffs or Rust) than to try to secure the existing ones?

Small nit... Folks would lose a lot of platforms by selecting Rust.
Rust is only guaranteed to work on a handful of platforms. At this
time, it looks like it is i686 and x86_64. Confer,
<https://doc.rust-lang.org/nightly/rustc/platform-support.html>.

And that's been my experience with Rust. For a new project I worked
on, Rust only worked on x86_64. It could not compile its own cargos on
armv7, aarch64 or powerpc. We had to (re)start a project from scratch
after that. And it got written in C, though we should have done it in
C++. We lost so much time due to Rust we did not have the cycles to
move from C to C++.

Jeff
