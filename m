Received: (qmail 17970 invoked by uid 550); 1 Jan 2024 23:26:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1194 invoked from network); 1 Jan 2024 22:59:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704150023; x=1704754823; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gc5QnJf9r/5G0HS/RFU79W1qT04jk0O15b902Yl5UwM=;
        b=ODfnawVHwSxztbXzf5ugBrBbDHRLQFKal5Y3oKiHaPgSh86tqBDyg83yysntGfjLvq
         ib5Ux09YwyHa8ixHUwRTW9CIsSDqxfwXMnwqSwBTef3MI+R6szXpqifXjwyTY32p0XNf
         zvqQyr2WjZh2cq3savXTWEM3z9nFp47U9Sr9XjJOXWKc+tb/lUe6KF3/1s2JmQPBEQlf
         zLKD8NOE/3UtgaW/pxJ+XubI349+nEAvYsAtsZH3WowzKv92jlN6+FKJYr0jQ8btl1D5
         OAPIhGZNRtmi+sN/E/Eg3NMya0h/FYZJti3mkQnzW9sY2Uu1UG1qhsNIm8PZoCiIrIhX
         v09A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704150023; x=1704754823;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gc5QnJf9r/5G0HS/RFU79W1qT04jk0O15b902Yl5UwM=;
        b=UBLHDVA3Q7ArZOUGCbIXGhDiCXbx1HsOvMFdq9kJvZg3qOjestvSABGOiukJPk9Hvc
         d6EgoNh5oqi0VJCaM6IeIGODvfpnCdUjpbTYVP9PDlc5jcTpjqjIltar2XdtdvpyeBR5
         HuJlgzZHtq64hnr8RfvuBt45kRMx+4H9N8wG5SIkCJGjGtRXoOYr3G4zuz0vCLc1s6OA
         oKYlYJmBSosJ6GJxaXxwUrnzcQVUZLvQW8GmEuiNKvmlFN25YKmw4lEj+jq+v2kfAjPz
         hyigOp44vhtpnLqosgOkeBhjp6qxG7/V1UY8Yt3S/zkETXhaPH35r350s8K4+El18R2s
         qrfw==
X-Gm-Message-State: AOJu0YwGQ0mKcqSUR3zfSN8NIozWF0D3oUzNgJR6l6BF20a0dYfcA0m9
	VIS6Yyj/3hfEl4AWWGkzegkMwKR9kOVQivx4sL5/QJaj
X-Google-Smtp-Source: AGHT+IFlnh7n+kI4rMz+YKETWdLxT7beYXj6LxR2EfpkNdmxNy3kghIJutTsrcJrRMepYL0sVgM2IwO8cbQA7TXW7k0=
X-Received: by 2002:a05:6808:1b25:b0:3bc:171d:4539 with SMTP id
 bx37-20020a0568081b2500b003bc171d4539mr297369oib.81.1704150022939; Mon, 01
 Jan 2024 15:00:22 -0800 (PST)
MIME-Version: 1.0
References: <20231229130718.GA6740@openwall.com> <2537-1704125446.658888@yYwZ.TdlG.pmeQ>
 <ZZMMi8DQbVuIvZPH@itl-email>
In-Reply-To: <ZZMMi8DQbVuIvZPH@itl-email>
From: Jeffrey Walton <noloader@gmail.com>
Date: Mon, 1 Jan 2024 18:00:11 -0500
Message-ID: <CAH8yC8kAsB9Kp-14iNPaft5H6XGDpM0hN7rE5y=5qZrmSoeDSQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-51766: Exim: SMTP smuggling

On Mon, Jan 1, 2024 at 2:06=E2=80=AFPM Demi Marie Obenour
<demi@invisiblethingslab.com> wrote:
>
> On Mon, Jan 01, 2024 at 04:10:46PM +0000, halfdog wrote:
> > Solar Designer writes:
> > > Hi,
> > >
> > > Exim was also susceptible to SMTP smuggling, and version 4.97.1 is now
> > > released to address this.  Included below is doc/doc-txt/cve-2023-517=
66
> > > from the exim-4.97.1 branch (with erroneous Date: line omitted).
> > > ---
> > > CVE ID:     CVE-2023-51766
> > > Credits:    https://sec-consult.com/blog/detail/smtp-smuggling-spoofi=
ng-e-mai
> > > ls-worldwide/
> > > Version(s): all up to 4.97 inclusive
> > > Issue:      Given a buggy relay, Exim can be induced to accept a seco=
nd messa
> > > ge embedded
> > >             as part of the body of a first message
> > >
> > > Conditions
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > >
> > > If *all* the following conditions are met
> > >
> > >     Runtime options
> > >     ---------------
> > >
> > >     * Exim offers PIPELINING on incoming connections
> > >
> > >     * Exim offers CHUNKING on incoming connections
> > >
> > >     Operation
> > >     ---------
> > >
> > >     * DATA (as opposed to BDAT) is used for a message reception
> > >
> > >     * The relay host sends to the Exim MTA message data including
> > >       one of "LF . LF" or "CR LF . LF" or "LF . CR LF".
> >
> > Interesting, that also LF . LF is causing the effect. As there
> > might be some aggressive mail server testing for that issue in
> > near future anyway, could it be, that this was exactly the issue
> > affecting Debian mailing lists at least 2018-2023? If not so,
> > and there is a second bug, the increased testing and also public
> > bug report from below will give them some interesting times ahead
> > anyway.
> >
> > But if so, any automated mailing list forwarding might be quite
> > likely (due to trigger probabilities) to have left truncated
> > and non-truncated messages online, so that finding those pairs
> > automatically, e.g.  using more unique text parts from list A
> > messages to search for messages on any other list B and check,
> > if one of them seems truncated.
> >
> > Here are some message examples from 2018 showing the trunction:
> >
> > https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D849754#60
> > https://lists.debian.org/debian-mentors/2018/01/msg00331.html
> >
> > Then there was also a public bug report on those
> >
> > https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D922652
> >
> > or the ones from below.
>
> I think the only reasonable thing for an SMTP server to do is to reject
> all LFs and CRs in DATA that are not part of a proper CRLF outright.

+1.

Postel's Law strikes again.

Jeff
