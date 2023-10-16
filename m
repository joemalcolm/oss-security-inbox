Received: (qmail 11800 invoked by uid 550); 16 Oct 2023 16:35:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21978 invoked from network); 16 Oct 2023 16:15:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697472945; x=1698077745; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b5aBzZbJ3fi/P8s4H9ypvbNLXo4jCBwsvBqjvb6raF4=;
        b=nTs0f6Wtk5det41/2MkfEfQX3TCnvIzeexfW7CtlYsCb3yihAhd/rdxiYKPMSDXMFA
         R+THxo6B/ogWfSXgF0e75y8PCb5jli6K4Beuc9E6O9m4Juy45u6w6yvz7DOm3Ble89aX
         Z56H05DUekjReMaUxVvKh/p/rAljZy+zRrM7li+mhPGjNG72l+StNNeisDJBuxo4z9Bc
         odW4Q0kcDWtUUyqgI2kl32N+LVrml9bO9kblZkSUlMiGYmiqGmGnlBDVY1tsbTrIlBRG
         VLaCf7suV8nTKkGTzx9bdQ1HyYBwZGp/s5YlEwNsAAFgN1bgzxAnlwDRxJA5XS1QIe0v
         7wpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697472945; x=1698077745;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b5aBzZbJ3fi/P8s4H9ypvbNLXo4jCBwsvBqjvb6raF4=;
        b=iudByaNb5c/C4k/teFet1DYW1WX44mfciGGF2eHUkVbc+yTWZ3M8i2FXZMdtPEuzox
         ZEXLgVgckRZc82n8RwW28K+rbOUQjyrCDvdrdH9jeWb5KDxDpgTUxTtj8CqUuHaTSMTk
         84pndw4PCggnhZ/AkxYm9jHEI0wyOXP/hV2ozfgrYQ9kLWgTGEGZw8/GMsXs/0ehumx9
         SjRLLw3xMHhZ2n1eMcYZIrmfqcvdIh90Pzq9KcitLcu4CjomAhFbd7CDVYs7EMadrAaA
         tpycP9iWs24CW2S4LV4WqDM6hXPbzVDVUOKXexmnzj1bn23EJy4sCs6WHv0RUnG+g8Ik
         UAgQ==
X-Gm-Message-State: AOJu0Yx+EhSHfHIlBpxNeAY46c9Lz1YxdAVxU2hUQg8jPpDNPfG6ZGeQ
	q5wwKxk/UoNd+9kP8+BPokBPdCDY6s41TjU6HKVofuSPig0QiA==
X-Google-Smtp-Source: AGHT+IEyrnZaMQ8JoR0uFJ9NT1K+Hn0giytk7D3zObOQBeMZD69m6PkY4hq0113Rpj5DwocJ93Rv6oD/hO3Wf0gcua0=
X-Received: by 2002:a17:90a:fd8a:b0:27d:a14c:eba6 with SMTP id
 cx10-20020a17090afd8a00b0027da14ceba6mr1711336pjb.21.1697472945440; Mon, 16
 Oct 2023 09:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <ZSyUUSF_-3YbT14k@workstation> <20231016080850.GF10758@suse.de>
 <2023101612-snare-dart-c7cf@gregkh> <ZS1CSkbTjDYdGq8F@itl-email>
 <2023101622-imply-tidal-b6cf@gregkh> <ZS1UPsZo1VyHDAkV@itl-email>
In-Reply-To: <ZS1UPsZo1VyHDAkV@itl-email>
From: Aron Xu <happyaron.xu@gmail.com>
Date: Tue, 17 Oct 2023 00:15:30 +0800
Message-ID: <CAMr=8w4N87t24jrRzw+hLHnhB9EoYDtjgic8yVPBqv6jJY_ZvA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] linux-distros membership application of openEuler

Hi,

On Mon, Oct 16, 2023 at 11:34=E2=80=AFPM Demi Marie Obenour
<demi@invisiblethingslab.com> wrote:
>
> On Mon, Oct 16, 2023 at 04:52:32PM +0200, Greg KH wrote:
> > On Mon, Oct 16, 2023 at 10:01:44AM -0400, Demi Marie Obenour wrote:
> > > On Mon, Oct 16, 2023 at 10:23:50AM +0200, Greg KH wrote:
> > > > On Mon, Oct 16, 2023 at 10:08:50AM +0200, Marcus Meissner wrote:
> > > > > Hi,
> > > > >
> > > > > Regardless of your viability of subscription status I think we al=
so
> > > > > (sadly) have to consider current geopolitical issues here.
> > > > >
> > > > > As far as I understand, US companies and US citizens are not perm=
itted
> > > > > to work with Chinese organizations and/or Chinese nationals.
> > > >
> > > > They can when working in the open on public projects and other
> > > > open-source-like things.  For "closed" lists and groups, please con=
sult
> > > > a lawyer as the rules there are quite varied and depends on the
> > > > countries and companies involved.
> > > >
> > > > But to be sure, again, consult your corporate lawyers, they know the
> > > > rules and the issues involved better than I do.
> > > >
> > > > good luck!
> > > >
> > > > greg k-h
> > >
> > > The question is _who_ should consult their lawyers.
> >
> > The people deciding if this group can be added to the closed list as
> > they are the ones responsible for it, AND then if the group is added,
> > the members of the list need to talk to their lawyers to see if their
> > country laws allow them to participate in a closed group with such
> > members.  Many countries might be fine, many might not be, it all
> > depends on the participants and what country laws they must abide by.
> >
> > So in short, everyone involved in the list!  :(
> >
> > good luck!
> >
> > greg "I talk to too many lawyers" k-h
>
> The result of this is simply that those who do not have access to
> lawyers on staff will not participate, which will reduce the value of
> the list substantially.  I suspect that most people who report
> vulnerabilities via distros@ fall into this category.  I know I do.
>
> Therefore, I recommend rejecting the application as too risky from a
> legal perspective.
>

Not matter what would be the outcome, I'd like recommend an article
from Linux Foundation which I think is a good read:
https://www.linuxfoundation.org/resources/publications/understanding-us-exp=
ort-controls-with-open-source-projects

I'm not a lawyer though, but here are a few cents:

1) There is no general restrictions against Chinese organizations and natio=
nals;
2) Open source software (which is publicly available) is not subject
to EAR (Export Administration Regulation of the US);
3) According to =C2=A7 734.7[1] of EAR, "knowledge with the intention that
such information will be made publicly available if accepted" is
treated as "Published" and is considered publicly available.

If I understand correctly, distros list is targeted to open source
software issues with a policy[2] of "Please only use these lists to
report and discuss security issues that are not yet public (but that
are to be made public very soon)", then everyone could retain their
peace of mind.

Regards,
Aron

[1]https://www.ecfr.gov/current/title-15/subtitle-B/chapter-VII/subchapter-=
C/part-734/section-734.7
[2]https://oss-security.openwall.org/wiki/mailing-lists/distros
