Received: (qmail 32113 invoked by uid 550); 22 Sep 2023 15:22:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25744 invoked from network); 22 Sep 2023 14:51:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695394273; x=1695999073; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a266lGGYEh3cH7ebuvGUbSnxM/v6RIKjUSoN3voDtC4=;
        b=mZTxGaV11XoCjeuiKQjZFC/nsihkoRhDfh9h6j2ov3YaRkSdy82ryoPcvdY5dSwyxp
         TCk8ZKRuKeIKXVdwcgrJ2LPeSvb88Pd4tQ+auBzsvqzC/IANyzUlDQqiZDMvzfqDkmy0
         GfaLMX1yAdyz5hVsaFm0PhCGqU+VU+1cuNUYvWWFCJdxcUpvglZz8nwKH089PSpfX5Vh
         eDHVV3SxEclXy770Y4V0uCp12+ccLUUlPP1eZ/NOCE/BVSsBhC1EZbJLQZM44gHXXCiB
         VunplYuxgPYHv+///wAVBCLkIu+KLnydTJFjKzUMPtomYUlW9AQapu1f24UmQF9c/q5j
         MLfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695394273; x=1695999073;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a266lGGYEh3cH7ebuvGUbSnxM/v6RIKjUSoN3voDtC4=;
        b=rlisO2xyFZIBiD7LGdV5bkETANyMnQ373xIE5FfMXRLJhqrLoaGWz5iTjmfFOlbahN
         VE4yrsYUEgG2PXVhbT/wlGs/JwREo+q+n6tSLoUpDPzoIpwqubwXe/rIE5f1MGJs5jfJ
         76XaBBbnRoB85YPKSZg1pwtsU/iexNGFwDUe/FhooueUVKfkGca1xcQu9MD9ndwyEZ/H
         nuvYCrTML3c5Buw7/MEX5RCuyE7dMmrTIexCakd8zjX2O8m1gYz3LxJieRuMhy0MncB8
         AvnOyn9uViNaCwDouRglvvP4b7sVs3olYNZ1YfqsIdIUHVmNNzPluv4iZV3rQs97FiT4
         5SOg==
X-Gm-Message-State: AOJu0YyVGHvwsrw9chWa2cl3lZi/mL2oUsrTpBoxHf1oeGpr8LJApe7z
	XgAqCs9XIznjfje0gNRGxLnjno2e7Ew5PUtt+6j6ytL1js4w6NcRJqM2Xw==
X-Google-Smtp-Source: AGHT+IFPXDf7C+ytdB6O/lXMn5gqKolgO8RO6tCVPac4I+au9AgZC0OSTCoke9KrMn5bFhVS7XytvtWZJbZnrmsdpcQ=
X-Received: by 2002:ac8:7f90:0:b0:410:958a:465f with SMTP id
 z16-20020ac87f90000000b00410958a465fmr179228qtj.11.1695394272582; Fri, 22 Sep
 2023 07:51:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230921205250.GA13106@openwall.com> <20230922072817.092917d2.hanno@hboeck.de>
 <20230922105410.GA15143@openwall.com>
In-Reply-To: <20230922105410.GA15143@openwall.com>
From: Vincent Rabaud <vrabaud@google.com>
Date: Fri, 22 Sep 2023 16:50:44 +0200
Message-ID: <CAJMnc16px2pgN9qmH6iw=by+DLu4cXBmZZpDGe3Lf_QWPEW0bg@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005f5a490605f3bd91"
Subject: Re: [oss-security] CVE-2023-4863: libwebp: Heap buffer overflow in
 WebP Codec

--0000000000005f5a490605f3bd91
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, we have commented on that here:
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=3D62136#c7

On Fri, Sep 22, 2023 at 12:54=E2=80=AFPM Solar Designer <solar@openwall.com=
> wrote:

> On Fri, Sep 22, 2023 at 07:28:17AM +0200, Hanno B??ck wrote:
> > On Thu, 21 Sep 2023 22:52:50 +0200 Solar Designer <solar@openwall.com>
> wrote:
> >
> > > However, another maybe-important one also made it into 1.3.2:
> > >
> > > commit 95ea5226c870449522240ccff26f0b006037c520
> > > Author: Vincent Rabaud <vrabaud@google.com>
> > > Date:   Mon Sep 11 16:06:08 2023 +0200
> > >
> > >     Fix invalid incremental decoding check.
> >
> > It does not look to me that this fix is in 1.3.2:
> > https://github.com/webmproject/libwebp/commits/v1.3.2
> >
> > I've seen this commit as well and have been wondering for a few days if
> > we'll hear about abother libwebp issue soon.
>
> Oh, you're correct - this commit is _not_ in 1.3.2.
>
> I was looking at the main branch and wrongly assumed that all I see in
> there before:
>
> commit ca332209cb5567c9b249c86788cb2dbf8847e760 (tag: v1.3.2, origin/1.3.=
2)
>
> is in 1.3.2.  However, that commit tagged 1.3.2 got into main as part of
> a merge commit, by which point main already had other commits including
> 95ea5226c870449522240ccff26f0b006037c520 that were not in 1.3.2 branch/ta=
g.
>
> So there may be 1 to 3 commits fixing more security issues after 1.3.2.
>
> Thank you for correcting me!
>
> Alexander
>

--0000000000005f5a490605f3bd91--
