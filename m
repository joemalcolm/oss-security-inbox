Received: (qmail 7913 invoked by uid 550); 8 Nov 2023 22:50:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27713 invoked from network); 8 Nov 2023 20:56:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699476965; x=1700081765; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ifu6vblA6TTsm9g4Nc30TL/m0YQPzXKuF2uMFQ8Dt5s=;
        b=iehIuevOC9CcEufFS0luvOOc/qx0+Wxci6Js0o8zEXz2eQywTqRK/w6acVkhPToTZz
         usvWZ9uCo8GMJFSSrO/r7C3v971qRsPICbaz1GNAnFrpKmYiKlKovZrve3cpdJVTS8P/
         SiomK6U40ch/skgcQOrtTV6a5clIJvwicQJzwUe7itJeQ5WV4gHWgUo3Q+D6vf5jlWVc
         aQUVdBpli473eRyMzh9HcqixLKpdCUB7IPuxzpLobtmliaZdskeURtjwRT6gNYLPwVE9
         5psI+nfuHMzg4gWjnhvu6nZy3pGFO4KCprf7QQoVnag/R33Bdx6ZfhRj1vVxfGjA17KV
         bX4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699476965; x=1700081765;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ifu6vblA6TTsm9g4Nc30TL/m0YQPzXKuF2uMFQ8Dt5s=;
        b=aYhTCMvd0bWewsoGWZfN9ORkGjZrCNtc1UMNyWN8kS00x8J/pqNP15EyUhGFbqa6zc
         GeozByErRFXNC6iansh/t4Aykw3xbi2WeRFDa/KtG54QCOQHAsl6aGEh6G6ADNxB6reg
         cwKIl0xejiiCjYA6jqEilsUb00XMc/d+JU1kOj2/SGA4zWXOPJiQQXC4242ppbl1lOxO
         +P3jy8vmXSV4WxMXvQxBUINGoIrNKOqqEYs+7dEZw2ugSvPVvm+0WThjY7qdUgKqZ4MB
         3FR+hPq/OwiSkizmv6uKVnagDqZtWIbB57IEBHJ8enH61g6cEJ3aobg4h8QzfFJ04eQj
         xaYQ==
X-Gm-Message-State: AOJu0Yy4z3RMxGmmrzQIJLbm1PozvGPDjH0rMN9UtQS4SR39A7ILGFaZ
	D+MEvN2QfFo2GL7BkEtU/kKiV7NBHbxfX8ets80Wa7YHBYfLAg==
X-Google-Smtp-Source: AGHT+IHXU7men0xPneryb45UvcjmMxo8CeV6Rg9W0D+35Q0ehIAFCzyYslKJApLKZQiJEOPq5odlySuxFnN3hvWRjbA=
X-Received: by 2002:a17:907:97c4:b0:9c2:a072:78c4 with SMTP id
 js4-20020a17090797c400b009c2a07278c4mr2781932ejc.25.1699476964618; Wed, 08
 Nov 2023 12:56:04 -0800 (PST)
MIME-Version: 1.0
References: <c01c1617-641d-4ec2-847f-2e85ea4676f7@notcve.org> <720a3438-0411-4f13-8531-7e6bcac83e77@oracle.com>
In-Reply-To: <720a3438-0411-4f13-8531-7e6bcac83e77@oracle.com>
From: Brian Peters <brianrpeters@gmail.com>
Date: Wed, 8 Nov 2023 15:55:53 -0500
Message-ID: <CAK_vis6udRU5MRodhseyqVdPVXD2iv0cU7uXqpAGxpGVh_fKAQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c7b7c10609aa5088"
Subject: Re: [oss-security] !CVE: A new platform to track security issues not
 acknowledged by vendors

--000000000000c7b7c10609aa5088
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I somehow doubt the presence of the ! makes much of a difference.

What about NVID? NVID-2023-0001
Not (A) Vulnerability ID

On Wed, Nov 8, 2023 at 2:39=E2=80=AFPM Vegard Nossum <vegard.nossum@oracle.=
com>
wrote:

>
> On 08/11/2023 14:22, !CVE Team wrote:
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > What is a !CVE
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> >     - A common place for !vulnerabilities (read not vulnerabilities)
> >
> >     - Security issues not covered by the traditional CVE.
> >
> >     - An identifier following common naming starting with an exclamation
> >       mark(!) Example: !CVE-2023-0001
>
> I am not a lawyer, but I'd assume you would run into some issues with
> the naming of all this -- wasn't that the exact issue that somebody else
> ran into when they tried to assign identifiers to bugs that MITRE
> wouldn't acknowledge? Here's what they said back then:
>
> <
> https://cve.mitre.org/news/archives/2021/news.html#April022021_Message_to=
_DWF_from_the_CVE_Board
> >
>
> I somehow doubt the presence of the ! makes much of a difference.
>
>
> Vegard
>

--000000000000c7b7c10609aa5088--
