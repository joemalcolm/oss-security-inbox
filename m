Received: (qmail 11891 invoked by uid 550); 16 Oct 2023 16:57:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1315 invoked from network); 16 Oct 2023 16:52:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux.com; s=google; t=1697475110; x=1698079910; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tv+2afTzTV76JdioAAsBwfI3hgtPqxTyHHHfvWtx9Ww=;
        b=NaWgcJPy5r/WZbZg/W/lXM8XREgKHcEzM0MO+xV2jHYuEMEMruHDhyj4rqKsNyWLgj
         kLlBKnjKJwJhGDH+eauNe3CAJyXHcRXXikYtY0fUEM820Uvn5m7caejbSwfhvkgCDEjg
         eoisl+Em6cS2LLaDOXqMLbzdm5ITZOtZQhBXJkZBXJVo3K9hlI4RonkiTTVt0On3c1GZ
         MYZj6t9HskA0aMSiIjFSKSgopWR7sR2BClv5UvBX3N+bpPTR9vf5+9MBKrlhmVM4OIvr
         ZNBL371OrzTuVFuLQuE2oGIL5ETsH/mLGlLXXAfjnetUFKJUZLx+T2NOd9n/d+YxjQPh
         OmWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697475110; x=1698079910;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tv+2afTzTV76JdioAAsBwfI3hgtPqxTyHHHfvWtx9Ww=;
        b=fedNLRnxAMTYDUrerJIDYG1yZMtcLMMbZFEu2pk1k6yQEwOx07g/Bny0fWTvcnu8Mm
         nftTLwEozutaVyqXS4nFLDcXjZQghSZAXePkXy8TPtu//ESdHtmWEQ+w/WD4+0f0S2NE
         Y7uOsXjbN0u9Qa8PrfbvK4F1M0JtRBAgdvGitgxxfL4yWPxPHsewUI7lCIHLyjNEixJ4
         QbJyd5XxSRwmzgZS6rJCW+Zux8bkw/dZAyf5CIiO0Oot8N3OM3W2FMjsM4X2q1suD7Wj
         YePePHpItA6S1N0fIcGhByNl1moXkuQCKNMjsBb4otorGVeokcsIOQ63zAoALjdE2+p6
         6ExQ==
X-Gm-Message-State: AOJu0YzzpzWpnPZRHSOPp5ye+XlS2FCwBkO7CV1zVJsnswbHwKbDNSgY
	h/SBehI9tzb01MzOKBysHInF2BgJJjfBzNZNDmKL5HuIqNf1fIg5RqM=
X-Google-Smtp-Source: AGHT+IGSjdr08btERuyXqv7EBz3YhelHG3aJ3OZGpvGabytV6SoPAuHL9ZmOLl2hUP9apxGi6bnU8m8JIXEKr3qLFsQ=
X-Received: by 2002:a25:6403:0:b0:d9a:5fce:1fc7 with SMTP id
 y3-20020a256403000000b00d9a5fce1fc7mr4802890ybb.15.1697475108431; Mon, 16 Oct
 2023 09:51:48 -0700 (PDT)
MIME-Version: 1.0
References: <ZSyUUSF_-3YbT14k@workstation> <20231016080850.GF10758@suse.de>
 <2023101612-snare-dart-c7cf@gregkh> <ZS1CSkbTjDYdGq8F@itl-email>
 <2023101622-imply-tidal-b6cf@gregkh> <ZS1UPsZo1VyHDAkV@itl-email> <CAMr=8w4N87t24jrRzw+hLHnhB9EoYDtjgic8yVPBqv6jJY_ZvA@mail.gmail.com>
In-Reply-To: <CAMr=8w4N87t24jrRzw+hLHnhB9EoYDtjgic8yVPBqv6jJY_ZvA@mail.gmail.com>
From: Igor Seletskiy <i@cloudlinux.com>
Date: Mon, 16 Oct 2023 09:51:10 -0700
Message-ID: <CA+-XxSFnokvdHyhHxjeQMjKt6CLNR7MO3wxncZ035zrMCoeMQw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000da80d10607d838a6"
Subject: Re: [oss-security] linux-distros membership application of openEuler

--000000000000da80d10607d838a6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Given that we are discussing early disclosure, I am unsure how open source
relates to it.
This is "pre" open-sourcing the code, so all the open source-related things
might not help at all.

I would second the call to "talk to your lawyers," especially when entities
like Huawei are involved.
I am singling out Huawei specifically because it is considered a treat to
US national security and is on the embargo list.


Regards,
Igor Seletskiy |  CEO
CloudLinux OS <https://cloudlinux.com/cloudlinuxos>   |   KernelCare
<https://kernelcare.com>   |   Imunify360 <http://imunify360.com/> |
AlmaLinux <https://almalinux.org>



On Mon, Oct 16, 2023 at 9:37=E2=80=AFAM Aron Xu <happyaron.xu@gmail.com> wr=
ote:

> Hi,
>
> On Mon, Oct 16, 2023 at 11:34=E2=80=AFPM Demi Marie Obenour
> <demi@invisiblethingslab.com> wrote:
> >
> > On Mon, Oct 16, 2023 at 04:52:32PM +0200, Greg KH wrote:
> > > On Mon, Oct 16, 2023 at 10:01:44AM -0400, Demi Marie Obenour wrote:
> > > > On Mon, Oct 16, 2023 at 10:23:50AM +0200, Greg KH wrote:
> > > > > On Mon, Oct 16, 2023 at 10:08:50AM +0200, Marcus Meissner wrote:
> > > > > > Hi,
> > > > > >
> > > > > > Regardless of your viability of subscription status I think we
> also
> > > > > > (sadly) have to consider current geopolitical issues here.
> > > > > >
> > > > > > As far as I understand, US companies and US citizens are not
> permitted
> > > > > > to work with Chinese organizations and/or Chinese nationals.
> > > > >
> > > > > They can when working in the open on public projects and other
> > > > > open-source-like things.  For "closed" lists and groups, please
> consult
> > > > > a lawyer as the rules there are quite varied and depends on the
> > > > > countries and companies involved.
> > > > >
> > > > > But to be sure, again, consult your corporate lawyers, they know
> the
> > > > > rules and the issues involved better than I do.
> > > > >
> > > > > good luck!
> > > > >
> > > > > greg k-h
> > > >
> > > > The question is _who_ should consult their lawyers.
> > >
> > > The people deciding if this group can be added to the closed list as
> > > they are the ones responsible for it, AND then if the group is added,
> > > the members of the list need to talk to their lawyers to see if their
> > > country laws allow them to participate in a closed group with such
> > > members.  Many countries might be fine, many might not be, it all
> > > depends on the participants and what country laws they must abide by.
> > >
> > > So in short, everyone involved in the list!  :(
> > >
> > > good luck!
> > >
> > > greg "I talk to too many lawyers" k-h
> >
> > The result of this is simply that those who do not have access to
> > lawyers on staff will not participate, which will reduce the value of
> > the list substantially.  I suspect that most people who report
> > vulnerabilities via distros@ fall into this category.  I know I do.
> >
> > Therefore, I recommend rejecting the application as too risky from a
> > legal perspective.
> >
>
> Not matter what would be the outcome, I'd like recommend an article
> from Linux Foundation which I think is a good read:
>
> https://www.linuxfoundation.org/resources/publications/understanding-us-e=
xport-controls-with-open-source-projects
>
> I'm not a lawyer though, but here are a few cents:
>
> 1) There is no general restrictions against Chinese organizations and
> nationals;
> 2) Open source software (which is publicly available) is not subject
> to EAR (Export Administration Regulation of the US);
> 3) According to =C2=A7 734.7[1] of EAR, "knowledge with the intention that
> such information will be made publicly available if accepted" is
> treated as "Published" and is considered publicly available.
>
> If I understand correctly, distros list is targeted to open source
> software issues with a policy[2] of "Please only use these lists to
> report and discuss security issues that are not yet public (but that
> are to be made public very soon)", then everyone could retain their
> peace of mind.
>
> Regards,
> Aron
>
> [1]
> https://www.ecfr.gov/current/title-15/subtitle-B/chapter-VII/subchapter-C=
/part-734/section-734.7
> [2]https://oss-security.openwall.org/wiki/mailing-lists/distros
>

--000000000000da80d10607d838a6--
