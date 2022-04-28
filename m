Received: (qmail 17620 invoked by uid 550); 29 Apr 2022 11:31:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7391 invoked from network); 28 Apr 2022 23:36:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=hsLXX/rFzML/Jw3kHBF5sjKq4wfJstL6v+jJf9hfykU=;
        b=hlT1jX1YPIZO3Xt/Ds+Ajqw7STjjn1bX+Xw9+IVCVnFhGzISiOAFd+CsXm1RuAFs71
         Uq+VhQqmQmy8k5mDrkbL8gdiujvpk1b4bTbuIBFg5bQqPexkMUZJYRLsZldiJbgNQMlB
         g3BnJ90jIg/3HPCx2zx+1vWWKqRIScyKdONg/129SdMSTJuBEjBX0Xqwh6DPu5EZQaiB
         QD0OpnxuaX7B4d0rgy86iPp7xUtSmtNPYyRxsHfaAPcd5UYvJ4ZZHhH+IYENrb5XMYQQ
         6F1Ms8qDJ3NyPYjlHLKoP5Bk7mnsFyqebkIOD/CH9OxlJu6FCxiG6icjuJ3/sscLO0tU
         V2VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=hsLXX/rFzML/Jw3kHBF5sjKq4wfJstL6v+jJf9hfykU=;
        b=2sx+vs8YPRyoogl+TD/sO/79mNGPSC+gKwQONfFGnYNL+4plIKBal0jLptyPp/iMdy
         NTOthU5o7NSdtlvTbYqoqKgj55KOxLc9Euwe9gEtMUobOTWuNA5GAnS/LUSp0VwXjk4s
         UvWlce6S/KjzEFX/mxG5sQbLxceRkk57PKuKQuGK+YhxkH9QEVNsNez2sJ0T3VOq+r5F
         IOS/jK9fKTdNMLJFOmX4euZooODcNSLGGmGbn+6ml0AW/reYIlqXeWXWPWFAbS43/KpK
         DW0Vus85QI4TUxPpJeddOTbqC6qNtD+5EgTGQm4CC+LQBgPyo73fww5wMBYT3QBQnNJK
         iwDg==
X-Gm-Message-State: AOAM530nd+42j+5rxS0mo3rn/C5xmfTJQ+RMU/pceEESQSCwBWCAlrWk
	70h4EN02sXnGRqYitVAjM3SpRx0GYmY/4KPfXulI35hsDB0=
X-Google-Smtp-Source: ABdhPJznbz071BVmxsbJKby1vYO/I8DxBVjYTY3lOV8okR0BA9PHpkNq57jBMLRSLied1TIIoBKWqRkoF/2PmjZXmVo=
X-Received: by 2002:a63:1014:0:b0:399:3710:f204 with SMTP id
 f20-20020a631014000000b003993710f204mr30280653pgl.424.1651188993521; Thu, 28
 Apr 2022 16:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <484488E0-D662-4F58-80DB-499DE532FA3B@akamai.com>
 <20220428201003.GA1260523@millbarge> <142a2b8b-f5f5-526e-741f-35337a5a81f2@tao.at>
In-Reply-To: <142a2b8b-f5f5-526e-741f-35337a5a81f2@tao.at>
From: Iron-Bound <iron.bound@gmail.com>
Date: Fri, 29 Apr 2022 01:36:21 +0200
Message-ID: <CABTdhR-fZD5_vJU4-VyRo3Bz8A-yTZbCPjjUe=4GT6VqM_0VNw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006a7ea805ddbf65d9"
Subject: Re: [oss-security] CVE-2022-21449 and version reporting

--0000000000006a7ea805ddbf65d9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As for the corp in question, you can expect the legal/PR team is involved
for any 'perceived' damage.

> Would you expect Microsoft to evaluate Windows 3.11, Windows 95,
> Windows 98, Windows ME, Windows NT 3.51, Windows NT 4.0. Windows XP,
> etc for every single vulnerability discovered in newest products?

Last time I checked we don't have source to review Microsoft products..
Would also make the argument that unsupported software having CVE's is an
extra wedge to force companies to update that old unloved application in
the corner!

On Thu, Apr 28, 2022 at 11:38 PM Sven Schwedas <sven.schwedas@tao.at> wrote:

>
> On 28.04.22 22:10, Seth Arnold wrote:
> > On Thu, Apr 28, 2022 at 02:12:04PM +0000, Seaman, Chad wrote:
> >> In what universe exactly are versions omitted from vulnerability
> >> reporting because a vendor =E2=80=9Cno longer supports that version=E2=
=80=9D=E2=80=A6 this
> >> non-supported version is still vulnerable?
> >
> > A large part of software maintenance is managing technical debt --
> > and being able to walk away from no-longer-supported products is an
> > important part of that.
> >
> > Would you expect Microsoft to evaluate Windows 3.11, Windows 95,
> > Windows 98, Windows ME, Windows NT 3.51, Windows NT 4.0. Windows XP,
> > etc for every single vulnerability discovered in newest products?
>
> You and Jeremy arguing in bad faith here, OP didn't ask about anything
> like that.
>
> The problem at hand is, someone *already did all that work*, and Oracle
> is *actively intervening* to have it dropped from CVE reports.
>
> So the question is: Why is vulnerability information that already exists
> being censored?
>

--0000000000006a7ea805ddbf65d9--
