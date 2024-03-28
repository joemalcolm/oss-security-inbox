Received: (qmail 15866 invoked by uid 550); 28 Mar 2024 07:32:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15845 invoked from network); 28 Mar 2024 07:32:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711611430; x=1712216230; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=etJaHsr7anF/UIiD99r29gV6adwKVSCfPjUuVUGbyjI=;
        b=E8M0dpv20Bit3R0MqPMo9DEzpEG6H9c4kIVEvo61GpF7gS/RA3snKDnGtTaHqetJfu
         v+RfNOUNOcaSWF7XnVO62ioLjJjiGXmj+Azdip4FfslBQIOUZo7o9YVhHrwYXEWmkOuX
         cEw9YgQc4o9cDOR1tyyHostAUrDw/+iffCW6drECAd51oKDyvAn120OBuabzNj57n0aK
         1DWgVa6637duc3ZlYjgFQVHH9UBjR8BdRFjVt9fkxVN1qhj2t0/xWYu2OwIug1XU7Yfz
         8mLDA+olaet+WFfMI3an+PCZtUFbVPOg9cf7I/8PgDHdRQB2KoCUsnGy8CUCOWDCMA3i
         Y+ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711611430; x=1712216230;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=etJaHsr7anF/UIiD99r29gV6adwKVSCfPjUuVUGbyjI=;
        b=uaEt051pYgZ+Kpr5OfjZ7JKI0ehCKgX3sTRt3wfCxQARdUFjv2amaA6qHGlyPbMUx+
         WJMvexoF8YkpVXM93a2LlaKxzvh3xTA6FT/pJaA8pMHxqwv8HcYnFpA3DTfsxS/3lq5q
         XsJnPjSugnGXNb6WgpPO5ZA7ZomM9xGmyeuL/IKcDtsR1qXKbgCDGysLtnfqhB9r1wTA
         OQ+7harO2qRI05x3Ff1bzJcN88wDUz7w8Y4A3/oMhJu5C3zTHXGf8Ap+GS+6Ri3p1o+t
         WLSXSm+mxRv0jKsvJeDVVu9az6d4MlAvbsXi/zh9OSkmKXwGxyyBgkanBtt0z4wtvx01
         LhLA==
X-Gm-Message-State: AOJu0YwaHI3EfoWboX6Pz7aaGjv92r5C0aUJo8LeolbClsMIFANlhGFg
	b7qAT8kt+akVIhFOIk7QMKJdxh28bkafWUBaBxhMhalXZJT4hGAENDpmJzOU2Bq6PJCp2s3KR8c
	x60p8blGhrWyIZZQ46AhXbrQjTKw1jlzD32e40A==
X-Google-Smtp-Source: AGHT+IFspVvuTgmNiYINtvJu/bSxGLHB9xmPY7r5cZn2Fn0TAjklVKE6ceJSg4aZ0kCgqwWbdacHCWln2osskWGEVvA=
X-Received: by 2002:a25:dc0b:0:b0:dc7:46e7:7aea with SMTP id
 y11-20020a25dc0b000000b00dc746e77aeamr2246665ybe.47.1711611430056; Thu, 28
 Mar 2024 00:37:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAEOG19rkUU8Pam5N67xyE9upepp_MahcnY48nek-VBAwo_NyAg@mail.gmail.com>
 <20240327213041.qyr7sglmxgdmtcb4@jwilk.net> <ZgSlAmss1tT8M2vZ@itl-email>
In-Reply-To: <ZgSlAmss1tT8M2vZ@itl-email>
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Date: Thu, 28 Mar 2024 15:36:43 +0800
Message-ID: <CAN_LGv21fn2e4wYEfuStomeDo7qfWXciw51J3MgsTu5J=1dHog@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2024-28085: Escape sequence injection in
 util-linux wall

On Thu, Mar 28, 2024 at 7:04=E2=80=AFAM Demi Marie Obenour
<demi@invisiblethingslab.com> wrote:
>
> On Wed, Mar 27, 2024 at 10:30:41PM +0100, Jakub Wilk wrote:
> > While looking through upstream git for a fix for this=C2=B9, I stumbled=
 upon
> > another write(1)/wall(1) control character injection vulnerability,
> > introduced last year in util-linux v2.39.
> >
> > The offending commits are:
> >
> > * https://github.com/util-linux/util-linux/commit/8a7b8456d1dc0e7c
> >   ("write: correctly handle wide characters")
> > * https://github.com/util-linux/util-linux/commit/aa13246a1bf1be9e
> >   ("wall: use fputs_careful()")
> >
> > The added comment says:
> >
> > > The locale of the recipient is nominally unknown,
> > > but it's a solid bet that the encoding is compatible with the author'=
s.
> >
> > Alas the bet is not that solid when writer's locale encoding is control=
led
> > by an attacker.
> >
> > We can exploit this against terminal emulators that recognize C1 control
> > characters, such as Linux VTs or screen(1):
> >
> >    $ printf '\302\23331mMOO\302\2330m\n' | LC_ALL=3Dkk_KZ wall
> >
> > I don't see any good way to fix this on the util-linux's side. It shoul=
d be
> > fixed on the terminal emulators' side by disabling C1 support.
> >
> >
> > =C2=B9 https://github.com/util-linux/util-linux/commit/404b0781f52f7c04
> >   ("wall: fix escape sequence Injection [CVE-2024-28085]")
>
> Would enforcing UTF-8 validity (regardless of user locale) be a
> solution?

No, as UTF-8 validation does not make sense in non-UTF-8 locales.
Enforcing ASCII for non-UTF-8 locales and UTF-8 for UTF-8 locales
would help.

--=20
Alexander E. Patrakov
