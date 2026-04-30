Received: (qmail 15579 invoked by uid 550); 30 Apr 2026 15:56:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13612 invoked from network); 30 Apr 2026 07:18:09 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777533478; cv=none;
        d=google.com; s=arc-20240605;
        b=MY3ChNa+pPjArKH02u3D9PQiWn0HOdGIvEvR8hjHj9LhWNAecg2x3DPeiN9G3Puyni
         EOnUuDAtG6gqaltVEf5OjmLzI9RgpBfEcDp6XiobxJVYYiNbZlhL0qAqrxcMapG8tcir
         gbX/zBXgZYwH4km+8VL44kxV4DA/W3oWFW/mgh4hCWLzQR0DApY5Z/ao8I1erlzbYf7K
         uXOcdxpwTEvT7vXP3xYAZS6vV0bJBdu7zjNZg6Uyp02AX+evcuP40M6our3kfWGqEh0i
         taORhVxPekKqZCCBaIA5t+rUl12hRhJacl1TYAo4COv2IxFUgenDnBEITMQOJGYUlqQk
         fN6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CRrgRJZdZi6tisLO9xFmtOUUivcZIDJhdwmkSe2aZX0=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=cWYJn6rMcl2E/RKFx+KpH+wHxjZV/BgqBoKz4w7fU56fcLkfbQJfE/BVWB7NxAIPqI
         MXpuBb3tn576OajDqiOiDwtM6c5IF7KmyFUGSplvrFohCK0xRW8yW6dUxIPlQ3gpIn1E
         S8eiVU6mz7LdutBzwe/S35tMP2irqAifmWTTQkxEZ9DmCm/dWKDbHEsuqXjV0SJ7cV4S
         ncklFrUhR5J87+QoTeZrH2wWhfy0XJ2FRYs3BTr8nebFxMQI+vOuEGo7H3/rdA0R5cBE
         bp4jw1ZRpiBa0CgplK+l6bzjtzpmK0IKBKjAB9drUcNNRuCdRaUc4V9ct0U4MPBW2XLq
         JQGw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777533478; x=1778138278; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CRrgRJZdZi6tisLO9xFmtOUUivcZIDJhdwmkSe2aZX0=;
        b=tOE5gddwrhPN6/xQB3IRAhx7Vn5oDcYH9mKKc+k7/wlK8RJsDA/7xX/Pd4qOaeD19s
         WuFKLh4o4kqTL3Gv+RGOXcV5/A+10iOK5Db/TmTVCHpmwKxaydjyRGfvH3M7DrwnRKQ1
         hMdiRcxlbbO9NLihu2pWU/kGWUAhHaMUS+4J9TChG1SZchi+1e4XwRgpWH6G77gdIicV
         CH7FxX9Ilzsykoy6S8I+paDalT0YhHBUwtD0Qx5mb+C3ySJN1P5yqo5Ai5qjgFRjQOOM
         HtjiXcD2ui+LbWCjlaf6u8N4BmEeyd0znhd8RB5ipESly/ebUJ0E32bBmGcVBK0uAwuM
         8uJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777533478; x=1778138278;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CRrgRJZdZi6tisLO9xFmtOUUivcZIDJhdwmkSe2aZX0=;
        b=pRj4HiKWzEzXdhBk2+2XdCLEnNCzvdqlRaa3hAaf1VT6Wcd1UE4M+kGgzWbYKvSGEU
         QUhInKn1suX+ZqCxax83POb8whby75N9it5og0oAkcMns86GxESJHGLHM/9Uwrau2D4J
         QvPtPtJ3sodpsaLfPxQltclus6XoeurL2MMlQPeFivS0MI2Ntrnm0IHqmeaJptnoS3hk
         2JVNCOT16PR89KQClBb9Jp2CMtJ85RdRJfleRC2i/kbmYYS5Gpw0zPuGujW6oLMJD7fu
         uKK1lXjzsG6CPiBHfQFpx+ElEXfgS2McruW3A7jU7sQy76YJarSQHyxWOIpHXM+Zka0t
         YM7g==
X-Gm-Message-State: AOJu0YwGlXuqZv4A6LNVcqHPJBRfrzImTtSZR6+27HA0oLSM4+VH6i9X
	ZGUzOgvtGC2TjNAwXfB7b5so0cJXE9X9ZWCI8i+37RO78ZIno2HYHKqyVbKp3Iz+MJ7KjpfoOIE
	zP+IFHaIjMzksXhVimy26RNlrmK8aFHL/Tg==
X-Gm-Gg: AeBDiet7QiafbvT2bkneWkDEK3jMyGGPlvdLiRGgc/4YKY6Fa+v8CTQ6Pm4yaNmJiPF
	99JLcGhmJ9PKJjAvXaiNx26WAde9l/C8gvUydhGigcfUAChrB/6QWiueSmOQgOwhxSzHLm21uyZ
	sZ58ZVS17iRsOVZQfyYWApva0nXHOlnEMigbRg2yipJcf89DscxXu1LzixVfyAGQCsmV0/6nBoR
	jI+VKn+USKJ7B27XgLsjErw20qqS45DtcfNJsV7M5uWwrAdYVDuAjl493uE0d+DVNWzNAxxA0X1
	lyj/nL7j64C4/aor7/Nz
X-Received: by 2002:a05:6512:3b85:b0:5a2:b8ca:a7e0 with SMTP id
 2adb3069b0e04-5a8522dd68dmr245135e87.5.1777533478358; Thu, 30 Apr 2026
 00:17:58 -0700 (PDT)
MIME-Version: 1.0
References: <afJorKIje4O6dXbH@netmeister.org> <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org> <afL-QhLfEKqHZqka@eldamar.lan> <2026043026-treat-devotion-23d7@gregkh>
In-Reply-To: <2026043026-treat-devotion-23d7@gregkh>
From: cyber security <cs7778503@gmail.com>
Date: Thu, 30 Apr 2026 03:17:45 -0400
X-Gm-Features: AVHnY4Ldw8YP7Oo5J2_rbkzfIdHsIiC4PIhO1e5qErHMM7XzffjkoD6sJPdt-Jw
Message-ID: <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation

That is very terrifying, is it is 10.0 score?

On Thu, Apr 30, 2026 at 3:16=E2=80=AFAM Greg KH <greg@kroah.com> wrote:
>
> On Thu, Apr 30, 2026 at 09:01:22AM +0200, Salvatore Bonaccorso wrote:
> > Hi,
> >
> > On Thu, Apr 30, 2026 at 05:52:37AM +0100, Sam James wrote:
> > > Eddie Chapman <eddie@ehuk.net> writes:
> > >
> > > > On 29/04/2026 21:23, Jan Schaumann wrote:
> > > >> Affected and fixed versions
> > > >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> > > >> Issue introduced in 4.14 with commit
> > > >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> > > >> 6.18.22 with commit
> > > >> fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
> > > >> Issue introduced in 4.14 with commit
> > > >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> > > >> 6.19.12 with commit
> > > >> ce42ee423e58dffa5ec03524054c9d8bfd4f6237
> > > >> Issue introduced in 4.14 with commit
> > > >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> > > >> 7.0 with commit
> > > >> a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
> > > >> https://git.kernel.org/stable/c/fafe0fa2995a0f7073c1c358d7d3145bcc=
9aedd8
> > > >> https://git.kernel.org/stable/c/ce42ee423e58dffa5ec03524054c9d8bfd=
4f6237
> > > >> https://git.kernel.org/stable/c/a664bf3d603dc3bdcf9ae47cc21e0daec7=
06d7a5
> > > >
> > > > So this is one of the worst make-me-root vulnerabilities in the ker=
nel
> > > > in recent times. I see that on the 11th of April 6.19.12 & 6.18.22
> > > > were released with the fix backported.
> > > >
> > > > Longterm 6.12, 6.6, 6.1, 5.15, 5.10 have not received the fix and I
> > > > don't see anything in the upstream stable queues yet as I write. My
> > > > guess is backporting that far back is not as straightforward. As th=
is
> > > > was introduced in 2017 all those older kernels are affected, right?=
 Or
> > > > am I missing something?
> > >
> > > It does not apply cleanly, no. Attached is the workaround we're going=
 to
> > > use. I'm not an expert on IPSec but I think this is the lesser evil.
> > >
> > > I attempted a backport but ran into a few API changes and wasn't
> > > confident enough to muck around with it, especially for something to
> > > deploy immediately.
> >
> > Backports have just been posted, for 6.12.y:
> > https://lore.kernel.org/stable/2026043038-unwilling-slogan-a20e@gregkh/=
T/#t
> >
> > (but I do not see them yet for all versions, but guess following soon)
>
> Yes, they are following, I'll be doing some kernel releases in an hour
> or so with these all applied.
>
> thanks,
>
> greg k-h
