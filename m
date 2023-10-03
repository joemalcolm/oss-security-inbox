Received: (qmail 15929 invoked by uid 550); 3 Oct 2023 19:48:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9650 invoked from network); 3 Oct 2023 19:47:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696362437; x=1696967237; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T/X0iiu4AZYvl+ai14QETCuL23j2+ygkmsjkNG7qo3E=;
        b=g/eiT9yDLh9XGIImcwHgsesjIvfG+F8ndYYRceGkqAFrHKfkQKQ6RPuB3k81154dfQ
         4K+DYeM8DEXuQvL2R5F3prySOpEOOGmHN4f3GL/jQp8dhmr+uWXIQ2dR9P02HsCL5op8
         EoxCf1IExBwIYi9fnFlClsbTTKultT7+jcPnXgvPeRVIuJGLQ4fjf/YXk90VaQZ7qqNu
         8lBKxLNaK74h+eYAc30FKxkpnWsyponCj8HwKNg5VfmqO4/VSigJlwWT7rXfdbGwCJ6J
         Com5gUFOXWwL1weJB9eBa/2HOo6GoDEmFrDpodXuFNplhl5WAQkJa1Zp6tdsEpzsI7p9
         ozPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696362437; x=1696967237;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T/X0iiu4AZYvl+ai14QETCuL23j2+ygkmsjkNG7qo3E=;
        b=I4fRoMpf7bCc2p5VIsRNxSMV9e16VA8578dNB5L1quDXGe2JnwI7GvL7KCB+SiQBzE
         5ls+0T/4pc9E6Yr/NR6cs1PSrrysyfzOVjdxeZKp+jaWewtAyYXbVA0kDvUCwV59sMTd
         z/JuwpCrJjFrB09GQVdb3EXg1tZ6ThK4WfaF2gLSMaobjG/JgMg5GptogqX2apEjgHuh
         vQMuqSP2zmWVZTdaMDxjnAHbhNaz+j3QLJlZspH1AqJUHBjoBU2pgfz20n17Vo5OuEvL
         eghFn2KqlJZvrMU19Qc+57JCbPqfXkwxi6yGz9VoX+8ntNOCwaPljaT6FTLLVC9Ge/zj
         py7w==
X-Gm-Message-State: AOJu0Yx8gH0C3AsEql8MUdyXZQvh4SwldjXG4H3S7t5aqSL8LS9CUjon
	YQSyh6n9bcQie9etDXr2rprVeSnKcqS8cCsY6OrWLKW4qls=
X-Google-Smtp-Source: AGHT+IFWnYn3ySDov06/sCRkgtSlgp/pbk8GdSfTyocndxUBwdKFsuiY337aLJl8u+MK5XyUo58VZriIZTpRm1Yq68Y=
X-Received: by 2002:a81:6c0a:0:b0:5a0:e86e:fd5c with SMTP id
 h10-20020a816c0a000000b005a0e86efd5cmr655062ywc.0.1696362437043; Tue, 03 Oct
 2023 12:47:17 -0700 (PDT)
MIME-Version: 1.0
References: <20231003191637.GA22984@openwall.com>
In-Reply-To: <20231003191637.GA22984@openwall.com>
From: Siddhesh Poyarekar <siddhesh.poyarekar@gmail.com>
Date: Tue, 3 Oct 2023 15:47:06 -0400
Message-ID: <CAAHN_R2jD-CdpMauH+L_pz1mYBiKSD03jh8Azhw8KUFG=f+ytw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-4806, CVE-2023-5156: glibc: potential
 use-after-free in getaddrinfo()

On Tue, Oct 3, 2023 at 3:18=E2=80=AFPM Solar Designer <solar@openwall.com> =
wrote:
> I wish someone more knowledgeable about this specific issue would post
> this, but since no one did, let me do it.
>
> Current upstream glibc NEWS contains these entries:

We're in the process of setting up a glibc CNA, so we will hopefully
send out upstream advisories more regularly once we've got that in
place.

>
> > CVE-2023-4806: When an NSS plugin only implements the
> > _gethostbyname2_r and _getcanonname_r callbacks, getaddrinfo could use
> > memory that was freed during buffer resizing, potentially causing a
> > crash or read or write to arbitrary memory.
> >
> > CVE-2023-5156: The fix for CVE-2023-4806 introduced a memory leak when
> > an application calls getaddrinfo for AF_INET6 with AI_CANONNAME,
> > AI_ALL and AI_V4MAPPED flags set.
>
> Apparently, CVE-2023-4806 has existed for ages, whereas CVE-2023-5156
> only existed for ~10 days last month.

CVE-2023-5156 was a regression from the fix to CVE-2023-4806; we
requested a separate CVE for the benefit of distributions that may
have already released the fix for the first CVE.

>
> Bug 30843 (CVE-2023-4806) - potential use-after-free in getcanonname:
>
> https://sourceware.org/bugzilla/show_bug.cgi?id=3D30843
> https://sourceware.org/git/gitweb.cgi?p=3Dglibc.git;h=3D973fe93a5675c4279=
8b2161c6f29c01b0e243994
>
> Main upstream commit:
>
> > commit 973fe93a5675c42798b2161c6f29c01b0e243994
> > Author: Siddhesh Poyarekar <siddhesh@sourceware.org>
> > Date:   Fri Sep 15 13:51:12 2023 -0400
> >
> >     getaddrinfo: Fix use after free in getcanonname (CVE-2023-4806)
> >
> >     When an NSS plugin only implements the _gethostbyname2_r and
> >     _getcanonname_r callbacks, getaddrinfo could use memory that was fr=
eed
> >     during tmpbuf resizing, through h_name in a previous query response.
> >
> >     The backing store for res->at->name when doing a query with
> >     gethostbyname3_r or gethostbyname2_r is tmpbuf, which is reallocate=
d in
> >     gethosts during the query.  For AF_INET6 lookup with AI_ALL |
> >     AI_V4MAPPED, gethosts gets called twice, once for a v6 lookup and s=
econd
> >     for a v4 lookup.  In this case, if the first call reallocates tmpbuf
> >     enough number of times, resulting in a malloc, th->h_name (that
> >     res->at->name refers to) ends up on a heap allocated storage in tmp=
buf.
> >     Now if the second call to gethosts also causes the plugin callback =
to
> >     return NSS_STATUS_TRYAGAIN, tmpbuf will get freed, resulting in a U=
AF
> >     reference in res->at->name.  This then gets dereferenced in the
> >     getcanonname_r plugin call, resulting in the use after free.
> >
> >     Fix this by copying h_name over and freeing it at the end.  This
> >     resolves BZ #30843, which is assigned CVE-2023-4806.
> >
> >     Signed-off-by: Siddhesh Poyarekar <siddhesh@sourceware.org>
>
> also backported by upstream to branches all the way back to 2.34, but
> apparently even older are affected.

Yes, I've checked back to 2.28 for rhel-8; in fact that was where I
discovered the bug first and had hoped that my refactor had fixed it
like in case of CVE-2023-4813, but unfortunately it wasn't :/

Thanks,
Sid
