Received: (qmail 32409 invoked by uid 550); 21 Jun 2023 17:31:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23837 invoked from network); 21 Jun 2023 17:26:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687368370; x=1689960370;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TJ96j2Wx1vOf0rfIB4kAr2I5NLY0tNWTLEdTov88sLk=;
        b=HYK20X17okwTMaMaJy8PD5gx1i8PvbwCMZkGkuFGAiGS147CPjhYHTel+dOLl8fJcf
         CU+gL4OfWQ3q/paPVfBaEekVhodXVEAcE+VZurdZLxaUqO1GHM8jQbKrbpa+6/4TkRpv
         i4lTxUr8Gov4SDqbmsNUAprynldOwbok54293VoodHF88/UkSFMgcc+Z+mn3Plg4rqpR
         YJiXo1Ex26k3boZz4A7Vlwig+TcD2nqp0p+TmCjNOa6Vx53criiien13HaREl1ZJa18U
         oujmMcw0ilgq/gg3FxoCUfrquiWcAV6fx7sMLBo/mIQAnLy61tPzwYChtH0Y4xuAzxwL
         ZbPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687368370; x=1689960370;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TJ96j2Wx1vOf0rfIB4kAr2I5NLY0tNWTLEdTov88sLk=;
        b=c2F/ThIgbtMcWBx+rqIm0avd7fPVU48S7cv7lqYTjz6DDYif5yyGTwsLy4m8Z9/WYI
         SOLzkrUeTOX9UZWLXJ05dAjFWCpoTd6QekJkbVNG5+ySuCqok5Yu/HJgGjmfK930tiM0
         cgRC3V6jqs6YWjF8qjWX7UR38ZUhlc5r5AUG1I4Bl0Au/49q8NC35RIYEJh4Nm8X7hY+
         IVw1gWtk32wAb33UAK6/tJjqeBT336V6lYAsztTGO04Cr1w/bmGVZOxJdOSxL6zSxkjD
         XZNgks0NV5AKS5thfcKSbiocvM+t9vzG/BNogUtkbxkxGzHbRWNlx8zWSYa2aJDhnE3a
         5Mdw==
X-Gm-Message-State: AC+VfDxlf9iCFeswgN8kDxhoZ7EzzSFu/XN/xtINpR/3k+LUiUMoLmYK
	PT4flHM825OSaLZ1KieYs5bojZPmHDwsU8BYqfWH0D6W
X-Google-Smtp-Source: ACHHUZ7VnwfB+UYLgwkqRiLJ4OaeMGPcdFznKBlomaslBRVdZfpsBNTITvOxFbp2uE8w7N/zz/3be4of7hLqHF0Mw5U=
X-Received: by 2002:a05:6870:700c:b0:19f:4696:323a with SMTP id
 u12-20020a056870700c00b0019f4696323amr17436140oae.15.1687368369757; Wed, 21
 Jun 2023 10:26:09 -0700 (PDT)
MIME-Version: 1.0
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
 <CAH8yC8noq14ANkUfn9VVD0ESLey1uv_2yZCV6DX4vgmE4FUatg@mail.gmail.com> <alpine.BSF.2.21.9999.2306220132050.17927@aneurin.horsfall.org>
In-Reply-To: <alpine.BSF.2.21.9999.2306220132050.17927@aneurin.horsfall.org>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 21 Jun 2023 13:25:58 -0400
Message-ID: <CAH8yC8kEfhZqyby8aFC8hZGS2YBxGvtyjjc07ZiaCE7XJG-h-w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On Wed, Jun 21, 2023 at 1:15=E2=80=AFPM Dave Horsfall <dave@horsfall.org> w=
rote:
>
> On Wed, 21 Jun 2023, Jeffrey Walton wrote:
>
> > Memory leaks on exit are par for the course in GNU software per
> > https://www.gnu.org/prep/standards/standards.html#Memory-Usage .
>
> Don't bother with this, don't bother with that, etc...  Call me old-school
> (which I am), but I cannot abide sloppy programming[*].
>
> At the risk of starting a culture war, that is one of the reasons why I
> avoid GNU libraries whenever possible.

Yeah, I'm with you. It is sloppy programming from a bygone era.

I've had the discussion with Stallman and the Gnulib folks. They don't
realize the harm they are doing with that policy (or they don't care).
It makes security testing and evaluation orders of magnitude more
difficult because it's hard to impossible to differentiate the "good"
memory leaks from the "bad" memory leaks. Effectively, everyone with
higher standards must lower their standard to GNU's.

Jeff
