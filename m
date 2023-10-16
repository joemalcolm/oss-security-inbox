Received: (qmail 15988 invoked by uid 550); 16 Oct 2023 17:21:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7592 invoked from network); 16 Oct 2023 17:13:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697476373; x=1698081173; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6vlUCXxZODMznZOGehi3iTglWDm4Ak25W4V83ZAkUmk=;
        b=mpEwXkMW7PfdCyHFpfbpnlixatg3nkzcxpgWyDMpuSKvcEvspAxlI8HMa+SNDx2uA3
         tHEdZkNNZhZv4x6aB/Zab/QLO/uS37Y8sCWeZYLjzyiubiKlUivSmm2BWEkW9GgOpjrL
         Zv5ohgTabfWq0SMu+A9S5MjvR9BnBAKcBqKR3esJ/7HIQXSzSnhD/gBPlMcqrynK9cFk
         VCSs2KYtusCjIO8ZIAgmoZohvQHQXOHdL6sMFBEDC5wsUVZPdK8IITraARPJtRh4xD0z
         +Hj6RNolQ7XAxqLDmyDbJAPfPVfuoEMvNfRiF0nbnMJkcNxduL/Z2nLmS1N2uEJsJwOV
         ij0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697476373; x=1698081173;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6vlUCXxZODMznZOGehi3iTglWDm4Ak25W4V83ZAkUmk=;
        b=O46MsFTtdIVZTT/aO04EfRtWsF1u/HmEUiNH363L9Pjmy7a8xVE5A1hHTwN35ogLue
         TLSiSaJk32FfmC/lLmDJjgOjdwR3pUw9OUrLKU+ioEk3jBErMYynTkjCt192kZjaVcYL
         OLjfZIQZ4A6sYUBd7/y/4lXns2Elbcw0eUn3ZjHDytjkN/+uAOM/v+Rq41atLs5g3H7c
         T1vdRO+G3/d2W1GezvC/wHw5rfc+WyegYsbtzWQcKgjDQLYbM9J9QTd8dPBDEjLiTqdH
         irQM6knpBAo8rbN8zJIrpqDmRbNIPyBSAKf8fMHZJy2HCO5rO53bSCNHpk8fH277vhoR
         dzHw==
X-Gm-Message-State: AOJu0YyFeeJcfndqbRIYAzSVAoqcwDPxGcyYSBeHv2Rg3R35DaNM/QsY
	2cRVy/nO+0DRE75GmLAjqoYFHzGJB5CHiO971A3i4qfCSROQLg==
X-Google-Smtp-Source: AGHT+IGea2b+tf83r+lMlmn6KFMpQ7Rj4e+Q0+5y/80NWrw/rFE4/tzHmUG2tDexnHl3+msPRGIpl5mG1kIgGN60TxY=
X-Received: by 2002:a17:90a:db8e:b0:27d:a94e:607f with SMTP id
 h14-20020a17090adb8e00b0027da94e607fmr1414446pjv.43.1697476372687; Mon, 16
 Oct 2023 10:12:52 -0700 (PDT)
MIME-Version: 1.0
References: <ZSyUUSF_-3YbT14k@workstation> <20231016080850.GF10758@suse.de>
 <2023101612-snare-dart-c7cf@gregkh> <ZS1CSkbTjDYdGq8F@itl-email>
 <2023101622-imply-tidal-b6cf@gregkh> <ZS1UPsZo1VyHDAkV@itl-email>
 <CAMr=8w4N87t24jrRzw+hLHnhB9EoYDtjgic8yVPBqv6jJY_ZvA@mail.gmail.com> <2023101605-outshoot-undying-fb27@gregkh>
In-Reply-To: <2023101605-outshoot-undying-fb27@gregkh>
From: Aron Xu <happyaron.xu@gmail.com>
Date: Tue, 17 Oct 2023 01:12:37 +0800
Message-ID: <CAMr=8w5fMdeY4Fund1=3W+w37T3_jsBZBS7AyS-ZGLK9t3R3wg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] linux-distros membership application of openEuler

On Tue, Oct 17, 2023 at 12:51=E2=80=AFAM Greg KH <greg@kroah.com> wrote:
>
> On Tue, Oct 17, 2023 at 12:15:30AM +0800, Aron Xu wrote:
> > Hi,
> >
> > On Mon, Oct 16, 2023 at 11:34=E2=80=AFPM Demi Marie Obenour
> > <demi@invisiblethingslab.com> wrote:
> > >
> > > On Mon, Oct 16, 2023 at 04:52:32PM +0200, Greg KH wrote:
> > > > On Mon, Oct 16, 2023 at 10:01:44AM -0400, Demi Marie Obenour wrote:
> > > > > On Mon, Oct 16, 2023 at 10:23:50AM +0200, Greg KH wrote:
> > > > > > On Mon, Oct 16, 2023 at 10:08:50AM +0200, Marcus Meissner wrote:
> > > > > > > Hi,
> > > > > > >
> > > > > > > Regardless of your viability of subscription status I think w=
e also
> > > > > > > (sadly) have to consider current geopolitical issues here.
> > > > > > >
> > > > > > > As far as I understand, US companies and US citizens are not =
permitted
> > > > > > > to work with Chinese organizations and/or Chinese nationals.
> > > > > >
> > > > > > They can when working in the open on public projects and other
> > > > > > open-source-like things.  For "closed" lists and groups, please=
 consult
> > > > > > a lawyer as the rules there are quite varied and depends on the
> > > > > > countries and companies involved.
> > > > > >
> > > > > > But to be sure, again, consult your corporate lawyers, they kno=
w the
> > > > > > rules and the issues involved better than I do.
> > > > > >
> > > > > > good luck!
> > > > > >
> > > > > > greg k-h
> > > > >
> > > > > The question is _who_ should consult their lawyers.
> > > >
> > > > The people deciding if this group can be added to the closed list as
> > > > they are the ones responsible for it, AND then if the group is adde=
d,
> > > > the members of the list need to talk to their lawyers to see if the=
ir
> > > > country laws allow them to participate in a closed group with such
> > > > members.  Many countries might be fine, many might not be, it all
> > > > depends on the participants and what country laws they must abide b=
y.
> > > >
> > > > So in short, everyone involved in the list!  :(
> > > >
> > > > good luck!
> > > >
> > > > greg "I talk to too many lawyers" k-h
> > >
> > > The result of this is simply that those who do not have access to
> > > lawyers on staff will not participate, which will reduce the value of
> > > the list substantially.  I suspect that most people who report
> > > vulnerabilities via distros@ fall into this category.  I know I do.
> > >
> > > Therefore, I recommend rejecting the application as too risky from a
> > > legal perspective.
> > >
> >
> > Not matter what would be the outcome, I'd like recommend an article
> > from Linux Foundation which I think is a good read:
> > https://www.linuxfoundation.org/resources/publications/understanding-us=
-export-controls-with-open-source-projects
> >
> > I'm not a lawyer though, but here are a few cents:
> >
> > 1) There is no general restrictions against Chinese organizations and n=
ationals;
> > 2) Open source software (which is publicly available) is not subject
> > to EAR (Export Administration Regulation of the US);
> > 3) According to =C2=A7 734.7[1] of EAR, "knowledge with the intention t=
hat
> > such information will be made publicly available if accepted" is
> > treated as "Published" and is considered publicly available.
> >
> > If I understand correctly, distros list is targeted to open source
> > software issues with a policy[2] of "Please only use these lists to
> > report and discuss security issues that are not yet public (but that
> > are to be made public very soon)", then everyone could retain their
> > peace of mind.
>
> But note, the information is _not_ public for a period of time, and so,
> might fall outside of the information described above in the lf article.
>
> Especially given the content of the information as well, this isn't just
> "here's a patch to add a new feature for foo-baz" type of stuff.
>

That's actually the critical thing covered by =C2=A7 734.7[1] of EAR
mentioned in the last message. The original EAR text says "knowledge
with the intention that such information will be made publicly
available if accepted" in the "Published" category, so it is
considered publicly available while in the process of getting actually
published.

> Again, if you have questions, please talk to a lawyer from your company
> as only they can answer it properly for your situation.
>

And again I'm not a lawyer for sure, :-)

Well I've contacted OpenAtom Foundation's lawyer and am waiting for a
response, but I'm not sure yet whether they would provide a public
response.


Regards,
Aron
