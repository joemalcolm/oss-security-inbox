Received: (qmail 30069 invoked by uid 550); 24 Dec 2023 13:42:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30051 invoked from network); 24 Dec 2023 13:42:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703425413; x=1704030213; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VThj9iSnLYe3aa8XeGG5EZi6qjjrd8BiAPKq0HnwSLk=;
        b=M/UjMPDBBCaUiFSucCMQMoocyiqkcA+1Tu0quipzkLaTED+gFmhhvy9ps1SHjfbNEh
         6u/XLKdOdGwMBCmvLyiLB/kPmUa/rFwMgcnkRymX3doj9UP4l1Nq3/pBAJvKEYrSUUrM
         H4HxWDMgMEnAb0p+LRvinretDwoOvPtk1VEkDu3h0DEBrVOe0UEpookSsY/1KyqycO4M
         p3yVvTwXC0S8FD/Vj+MmNGbkjZ6FDW1TWa52VjNJWHXng4KNuYSqI3OniLOIXdqo3Yxq
         OU0TWnkLOa2sMjiuyAqywiCoVENyY73WrelWcs30hn73/HICLuVfyFZ6GF/xGDIiNW5S
         WSSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703425413; x=1704030213;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VThj9iSnLYe3aa8XeGG5EZi6qjjrd8BiAPKq0HnwSLk=;
        b=nGevwPELKDIquVJK6ZFq0gbAgjl4+8MdWuRYSX+iBAVqQxWfsIL/mGPULnI7SfHgxC
         hL0YJSj1MqSk72E6w8Fh19xZivCP/V4O0q+/tJl/tPrh3dC/KO/tOYnq8vV0q3Si9dKb
         JMnDJfttH/TFvnD7wsiCFBlUPS1w6WasfIh6+9Y5GFc7R176N2Ze4HAhN7Rfy7Bcyfob
         3c6ngt6oNVOj6Onxt7Tq8Dj7tmLVhR5OjPelz8mclfMj16Tukxfr84eQE811GRG2gxkF
         waeg/qNlTgwJFNdrx4a/NSAQpiUxfCV6fZNE2hyRL3XDYiNeIqqaRgdEPF5GTNOCzu51
         p99A==
X-Gm-Message-State: AOJu0YyJOaDiA4/w+yi3R4TOehYMgwuYau/ed6XDw7TFQoNM1i/w7Rrt
	yxI7lizsXXEVCYC9SkQlk28K6RuSQ0uFO8gSxle35vs0sJE=
X-Google-Smtp-Source: AGHT+IGaQsIztwYaFwRIsPplg3BWHHYbSu8HiXaKaHf4Y3zmheD4ROoukfHDGz0X91nIO1W71vSTt7PJbZtZMJPF5fc=
X-Received: by 2002:a05:6214:f0f:b0:67f:89ae:102a with SMTP id
 gw15-20020a0562140f0f00b0067f89ae102amr5692614qvb.32.1703425413058; Sun, 24
 Dec 2023 05:43:33 -0800 (PST)
MIME-Version: 1.0
References: <ZSyUUSF_-3YbT14k@workstation> <20231016080850.GF10758@suse.de>
 <2023101612-snare-dart-c7cf@gregkh> <ZS1CSkbTjDYdGq8F@itl-email>
 <2023101622-imply-tidal-b6cf@gregkh> <ZS1UPsZo1VyHDAkV@itl-email>
 <CAMr=8w4N87t24jrRzw+hLHnhB9EoYDtjgic8yVPBqv6jJY_ZvA@mail.gmail.com>
 <20231223181636.GA8305@openwall.com> <CA+-XxSE0v4B32UjrVZgu5WUpTb+78W3zpupnoJq4FeR3omPGSg@mail.gmail.com>
In-Reply-To: <CA+-XxSE0v4B32UjrVZgu5WUpTb+78W3zpupnoJq4FeR3omPGSg@mail.gmail.com>
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Date: Sun, 24 Dec 2023 21:43:06 +0800
Message-ID: <CAN_LGv2C4DNFaK2TRA5upQuwaP=SY3K6zzOzp7zT8J-k1HaM0Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] linux-distros membership application of openEuler

Hello Alexander,

Thanks for the summary that you posted. I have read it carefully and
found a phrase, "an isolated one application like that so far", that
effectively says that this legal issue regarding communications to
sanctioned entities is *new*. Could you please recheck that it is
indeed the case? The question formally arises because there are Alt
Linux representatives on the list already, and I do not know if there
are US sanctions against them. To any Russian lawyers that might want
to jail me because of this question: go away, this question is not to
be interpreted as my endorsement of any sanctions.

Also, Igor has communicated an important note about the mandatory
disclosure of vulnerabilities to the Chinese government. Therefore, a
question arises: is the Chinese government the only one that requires
this? Can existing list members certify that they do not have any
requirement placed upon them by the applicable laws to disclose the
postings beyond what is permitted by the list policy - i.e., "at
anywhere beyond the need-to-know within your distro's team"?

On Sun, Dec 24, 2023 at 2:50=E2=80=AFAM Igor Seletskiy <i@cloudlinux.com> w=
rote:
>
> Alexander,
>
> Thank you very much for doing the research and the summary.
> There is another point that I am concerned about.
> Based on what I know, in 2021, China passed a legislature that requires
> people to disclose vulnerabilities to the Chinese government within 2 day=
s.
> I don't have a good grasp on the actual terms/conditions, but based on th=
is:
> https://www.chinalawtranslate.com/en/product-security-vulnerabilites/
>
> *(2) Infomation on the relevant vulnerabilities shall be reported to the
> Ministry of Industry and Information Technology's network security threat
> and vulnerability information-sharing platform within 2 days; The content
> sent shall include the name, model number, and version of the products in
> which network product security vulnerabilities exist, as well as the
> vulnerability's technical characteristics, threat, scope of impact, and so
> forth.*
>
> I read it as adding Chinese entities or residents to the list would force
> them to disclose a subset of security vulnerabilities to the Chinese
> government before public disclosure.
>
>
> Regards,
> Igor Seletskiy |  CEO
> CloudLinux OS <https://cloudlinux.com/cloudlinuxos>   |   KernelCare
> <https://kernelcare.com>   |   Imunify360 <http://imunify360.com/> |
> AlmaLinux <https://almalinux.org>
>
>
>
> On Sat, Dec 23, 2023 at 10:24=E2=80=AFAM Solar Designer <solar@openwall.c=
om> wrote:
>
> > Hi,
> >
> > First of all, thank you to everyone who contributed to this thread (I
> > include a summary at the end of this message, so please check that I got
> > it right), and I'm sorry I did not publicly comment on this application
> > for so long.
> >
> > I did not ignore it - there were a few off-list messages between Aron
> > and me, and I've been thinking of how to approach the problem best.
> >
> > I think the application (almost) meets our 9 criteria (once someone
> > vouches for Aron), and if we judge solely by those then we'd need to
> > accept openEuler.  However, as several people said, there are legal
> > concerns, and even if the concerns are maybe unfounded, this would
> > likely reduce usage of the linux-distros list.
> >
> > Overall, given these concerns and us having an isolated one application
> > like that so far, I think it's best if openEuler does not join
> > linux-distros now.  However, I understand this might not work long-term,
> > as similar concerns could arise in context of another application later.
> > One approach is to wait and see, and revisit these concerns in a more
> > general manner if and when that issue does come up.  Another approach is
> > to bite the bullet and proceed with accepting openEuler now, then
> > revisit and possibly generalize if related concerns arise in context of
> > another application.
> >
> > Here are some things to (re)consider if and when we are about to accept
> > a controversial member like this:
> >
> > 1. As suggested by others, we could seek statements by lawyers and/or
> > relevant organizations such as the Linux Foundation.  We actually have
> > much of this already, see below.
> >
> > 2. We could setup a sub-list with only non-controversial members, or a
> > super-list with extra members on it, technically in the same way we
> > currently have distros (which includes non-Linux) vs. linux-distros.
> > Given that existing separation, we'd end up with four lists/addresses,
> > which would unfortunately be complicated and could be distracting and
> > discouraging for issue reporters.
> >
> > 3. We could enforce delayed publication of the full private list
> > content, not just vulnerability disclosures, to more obviously meet
> > export regulations due to literally everything getting published.  Per
> > other recent discussions, we already know this would discourage some
> > people/projects from contributing/participating, but would at the same
> > time be a welcome change for some others.
> >
> > 4. Alternatively to the above, we could state that it's the senders'
> > choice to publish everything they send to the list in case they're
> > concerned about (otherwise possibly not) meeting the regulations (in
> > their jurisdiction).  Being extra burden, this would discourage some
> > people from contributing.
> >
> > On Tue, Oct 17, 2023 at 12:15:30AM +0800, Aron Xu wrote:
> > > Not matter what would be the outcome, I'd like recommend an article
> > > from Linux Foundation which I think is a good read:
> > >
> > https://www.linuxfoundation.org/resources/publications/understanding-us=
-export-controls-with-open-source-projects
> >
> > Yes, it is, and specifically the "Be open and be public" section in it.
> >
> > Even more specific is the statement Linux Foundation made on Huawei:
> >
> >
> > https://www.linuxfoundation.org/blog/blog/linux-foundation-statement-on=
-huawei-entity-list-ruling
> >
> > > I'm not a lawyer though, but here are a few cents:
> > >
> > > 1) There is no general restrictions against Chinese organizations and
> > nationals;
> > > 2) Open source software (which is publicly available) is not subject
> > > to EAR (Export Administration Regulation of the US);
> > > 3) According to ?? 734.7[1] of EAR, "knowledge with the intention that
> > > such information will be made publicly available if accepted" is
> > > treated as "Published" and is considered publicly available.
> > >
> > > If I understand correctly, distros list is targeted to open source
> > > software issues with a policy[2] of "Please only use these lists to
> > > report and discuss security issues that are not yet public (but that
> > > are to be made public very soon)", then everyone could retain their
> > > peace of mind.
> >
> > I am also not a lawyer.  As I'm aware, many countries, including the US,
> > Canada, EU countries, and even e.g. Russia and India and many others,
> > accepted the Wassenaar Arrangement.  My understanding is that the
> > individual countries' export regulations are thus implementations of the
> > Wassenaar Arrangement, perhaps with some local tweaks.  (Indeed, the
> > classification codes mentioned in the EAR section you reference above
> > match Wassenaar's.)
> >
> > So the focus on US vs. China seen in this thread here looks unjustified
> > from a legal perspective.  However, it may be justified from a practical
> > concern perspective.
> >
> > Then there's the issue of "Huawei and its non-U.S. affiliates" being on
> > the US sanctions "Entity List".  Reading the FAQ here:
> >
> >
> > https://www.bis.doc.gov/index.php/documents/pdfs/2447-huawei-entity-lis=
ting-faqs
> >
> > I don't see relevance to what we're doing.  Per my reading, this says
> > that for items already subject to EAR, a specific license for exporting
> > to Huawei is required and would likely be denied.  We assume (and LF
> > agrees) that what we're doing is not subject to EAR (and if it were,
> > we'd have problems with most international communication like this, not
> > just with US vs. China or Huawei).  So again, the legal concern looks
> > unjustified, but I understand that people are concerned in practice, and
> > that's a problem on its own.
> >
> > Here are specific quotes from the two LF publications referenced above:
> >
> > > Be open and be public
> > >
> > > First, communities should strive to keep their technical conversations
> > open and public. If private technical conversations happen within
> > communities, that's normal, but it is recommended to make the community
> > decisions and outcomes publicly available. It is important for our proj=
ects
> > to make information available transparently and publicly as the private
> > exchange of technology or technical information may not meet the "publi=
cly
> > available" standard according to the EAR.
> > >
> > > One question that has come up has to do with exchanges of information
> > related to security issues under a security disclosure process. As a be=
st
> > practice, projects may want to consider making exchanges like this publ=
ic
> > upon the availability of fixes, and not limit this information to only a
> > confidential disclosure list.
> >
> > > Security Vulnerability Pre-Disclosure Lists
> > >
> > > A few of the Linux Foundation's project communities use security
> > vulnerability pre-disclosure lists to alert known implementers of the
> > project's open source software about vulnerability fixes that will be
> > disclosed by the developers and published publicly in the near future
> > (typically within 2 weeks). In these situations, LF project communities=
 are
> > conveying knowledge, information and written software patches that will=
 be
> > made publicly available when accepted for publication by the committers=
 on
> > the project and such disclosures are permitted under 15 CFR 734.7(a)(5)=
. [2]
> > >
> > > [2]
> > https://www.ecfr.gov/cgi-bin/text-idx?SID=3Dfcba36d2f267c2fdecc5694c1e7=
54aa7&mc=3Dtrue&node=3Dse15.2.734_17&rgn=3Ddiv8
> >
> > Here's my summary of what was said in this thread so far:
> >
> > Marcus Meissner brought up the US vs. China concern.  Greg KH said
> > things were not that bad, but kept suggesting to talk to lawyers, which
> > Demi Marie Obenour found very discouraging.
> >
> > Demi Marie Obenour and Igor Seletskiy are concerned about the legal
> > risks.  Demi Marie wants that "a trusted entity (such as the Linux
> > Foundation) made a public, broadly applicable, and easily interpretable
> > (by non-lawyers) statement stating that it would be okay for me to make
> > such a post."  I think we have that above.  However, she also adds "And
> > maybe not even then."  Igor brings up the Huawei concern.  I think LF's
> > statement above addresses it.
> >
> > This reads like 2 to 4 votes against accepting openEuler now.
> >
> > Heiko Schlittermann and Steffen Nurpmeso are for us not considering
> > "anything else than technical/security restrictions here."  In other
> > words, for accepting openEuler now if it meets our usual criteria.
> >
> > Tianyu Chen brought up that there could already be subscribers from
> > other sanctioned countries.
> >
> > W. Wadepohl expressed general unhappiness with linux-distros being
> > non-free and not addressing IoT device security.
> >
> > This reads like 2 to 4 votes for accepting openEuler now.
> >
> > Alan Coopersmith commented on who typically posts to the distros list,
> > and thus who would (not) be concerned about the legal risks.
> >
> > Per the above, there doesn't appear to be an obvious majority or
> > obviously better reasoned opinion for or against accepting openEuler.
> >
> > If any of the people who commented previously have something different
> > or more specific to say now (e.g., "my concerns are now sufficiently
> > addressed" and/or "my preference is such-and-such"), please do.
> >
> > If anyone else has anything valuable to add, please do.
> >
> > Sorry for the lengthy message, and thanks again.
> >
> > Alexander
> >



--=20
Alexander E. Patrakov
