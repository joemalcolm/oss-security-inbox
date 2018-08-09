X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6390" "Thursday" "9" "August" "2018" "11:48:09" "-0400" "David T." "davidmthomsen@gmail.com" "<CAPdG+L4yRYA=cXjSFzObScoh4aucX3m9map8E9QgktejmuhN3w@mail.gmail.com>" "149" "Re: [oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)" "^Date:" nil nil "8" "2018080915:48:09" "[oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)" (number mark "        davidmthomse Aug  9  149/6390  " thread-indent "\"Re: [oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)\"\n") "<PGJFXqAeINIwWp-evlCTv9UYslwbmEx7Zrx7iVEZVT7FAif-Sel-jlRui94dl7psSkIlLm9jE1GC_MTeXyBg6q6B3F9QWK_r4ej55qx1Y0s=@itk.swiss>" ("<CACdnJuvnc9iwaK6n9T_+PO0CUz9HYErQQ6eY+sJZM_o_h9tfaw@mail.gmail.com>" "<zNUITbiErWCUUDg_EPIWn8eZBFHlC7rwJsZ8XinnBTSFr6OydsAZUvPs8nXHKBxi0DJFw8K2KmePb8dysPMxfPcOURSJ6QR2HcKgaVRmmTs=@itk.swiss>" "<20180809125120.GA2475@openwall.com>" "<PGJFXqAeINIwWp-evlCTv9UYslwbmEx7Zrx7iVEZVT7FAif-Sel-jlRui94dl7psSkIlLm9jE1GC_MTeXyBg6q6B3F9QWK_r4ej55qx1Y0s=@itk.swiss>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28600 invoked by uid 550); 9 Aug 2018 16:18:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1767 invoked from network); 9 Aug 2018 15:48:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=ng3JQcTnTehMH3U7/J+JuaH33nnsg17w8DfVwXK9/SI=;
        b=um7wPVrOQAJINLEKGv9ZDJfyHi+Mgsi35kt3OD1fy32QZ3cEGmbE4bPnSFuBR63xB2
         cPp2oqw+pSQtjwk+MbVbnYdkRVDpLsNg5HW75KicTDh1s1DovVNCMz18YRn6w5OpPmNx
         kXvopFLW2+k8W2Ok/JrqiibGztFu5zoFHBmdXpDJ/KaTaIE3C8KzcOguNYGeqMqF2CCT
         3h/J6fjCCS1k0K/KPJ8sy3GxJFe5m8UDeE29CBHzrfr0Ai9hVaxKniFpXimksly0CvMr
         gE4ul8vNNImolBb84AFC8gVbyVVvhxubSsLu+yDZHX2+fXWV8WaaIt9RX0ZcyHRhjM6F
         yvjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=ng3JQcTnTehMH3U7/J+JuaH33nnsg17w8DfVwXK9/SI=;
        b=Mqw8xl/XxP5ffwLnrP+C4GOF6QLCFZ991zLnjoyz9ccasPimLR7fB3O+X38lsZcYnE
         fSWOPKmLHvPH9dFYNzPz3jj/eKa0+axNYB3UWMOwH2joJo0b10h8u1jibyloPMovFBtp
         xnZxnYquPQi3jI4RzGosu57xntiYIijQmuxfPzo+jhDLhAaeMF86O685flTaR2ZtLcgK
         n2A6PDzW3avXkv0zZpfE494aY3IvX4H917hOGMO6nR4vK8sGOqKUyPR+h9eOteuoquAc
         NI9Z5g6ziTO2NdxZ7VCt/kK344ts5qE3tcEg797/BcC9JpwoqDYmkbzVt8Ze7pGp0flW
         qM/w==
X-Gm-Message-State: AOUpUlE3eR3z5h8Ix7Yuy/CP5GEEkvu36ac0pjdxLiyA+KT2rzytFe53
	fxWjYJZZTIF4gN2erRvOU1wEvOi4YwIeakNtQog7+Q==
X-Google-Smtp-Source: AA+uWPxQvIozQg1imYLRYj6L185kV4O6R1zZY2IxXmJer7rHAMei0tHPRQjY9pfkk3vxk8uxeB4gbMiNldvMZZ/Znxk=
X-Received: by 2002:aca:f189:: with SMTP id p131-v6mr2519391oih.14.1533829699752;
 Thu, 09 Aug 2018 08:48:19 -0700 (PDT)
MIME-Version: 1.0
References: <CACdnJuvnc9iwaK6n9T_+PO0CUz9HYErQQ6eY+sJZM_o_h9tfaw@mail.gmail.com>
 <zNUITbiErWCUUDg_EPIWn8eZBFHlC7rwJsZ8XinnBTSFr6OydsAZUvPs8nXHKBxi0DJFw8K2KmePb8dysPMxfPcOURSJ6QR2HcKgaVRmmTs=@itk.swiss>
 <20180809125120.GA2475@openwall.com> <PGJFXqAeINIwWp-evlCTv9UYslwbmEx7Zrx7iVEZVT7FAif-Sel-jlRui94dl7psSkIlLm9jE1GC_MTeXyBg6q6B3F9QWK_r4ej55qx1Y0s=@itk.swiss>
In-Reply-To: <PGJFXqAeINIwWp-evlCTv9UYslwbmEx7Zrx7iVEZVT7FAif-Sel-jlRui94dl7psSkIlLm9jE1GC_MTeXyBg6q6B3F9QWK_r4ej55qx1Y0s=@itk.swiss>
Message-ID: <CAPdG+L4yRYA=cXjSFzObScoh4aucX3m9map8E9QgktejmuhN3w@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000066670d0573028e88"
Date: Thu, 9 Aug 2018 11:48:09 -0400
From: "David T." <davidmthomsen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux TCP implementation vulnerable to Denial of
 Service (CVE 2018-5390)
To: oss-security@lists.openwall.com

--00000000000066670d0573028e88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Does anyone know if there as been an POC for this? Trying to figure out how
critical this is.

On Thu, Aug 9, 2018 at 11:38 Stiepan <stie@itk.swiss> wrote:

> Hi,
>
> Thank you for fighting censorship on what is supposed to be a list for
> managing security issues of open software. The issue is that it has gone =
so
> far from its original idea, with the embargoes and removal of direct CVE
> requests, that legal action remains the only logical one, for anyone not
> part of the "club". As to getting some funding to run it properly, I
> continue to do think it would make sense, if you can ensure independence
> from a specific organization or government's interest (cc-ing Google, not
> ITU or Protonmail, arbitrarily, says long on this very issue and the one =
of
> Linux governance overall).
>
> Best,
> Stiepan A. Kovac
> President
> itk AVtobvS SARL
>
> Envoy=C3=A9 depuis ProtonMail mobile
>
> -------- Message d'origine --------
> On 9 ao=C3=BBt 2018 =C3=A0 14:51, Solar Designer a =C3=A9crit :
>
> > Hi,
> >
> > A co-moderator had rejected Stiepan's message since it "does not provide
> > any additional content to oss-security readers". I'm also unhappy about
> > that, as well as about the focus on legal aspects in Stiepan's postings
> > in here in general. However, the message raises an on-topic question
> > (the request for more detail) and brings up an on-topic issue (the
> > semi-embargo potentially causing harm). I feel strongly about us not
> > getting into censorship, and I feel that rejecting this message would be
> > it. So I went for the effort of manually restoring the already-rejected
> > message into the moderation queue, then approved it.
> >
> > On Thu, Aug 09, 2018 at 07:12:27AM +0000, Stiepan wrote:
> >> Could you please provide some more details on the issue?
> >
> > I agree that more detail must have been posted in here, especially given
> > that such detail was on linux-distros.
> >
> > The issue is now also public via CERT:
> >
> > https://www.kb.cert.org/vuls/id/962459
> >
> > which links to:
> >
> >
> https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=
=3D1a4f14bab1868b443f0dd3c55b689a478f82e72e
> >
> > which includes the following detail:
> >
> > ---
> > Juha-Matti Tilli reported that malicious peers could inject tiny
> > packets in out_of_order_queue, forcing very expensive calls
> > to tcp_collapse_ofo_queue() and tcp_prune_ofo_queue() for
> > every incoming packet.
> >
> > With tcp_rmem[2] default of 6MB, the ooo queue could
> > contain ~7000 nodes.
> >
> > This patch series makes sure we cut cpu cycles enough to
> > render the attack not critical.
> >
> > We might in the future go further, like disconnecting
> > or black-holing proven malicious flows.
> > ---
> >
> > The CERT Vulnerability Note also talks about a related issue in FreeBSD.
> >
> > Partial timeline for this issue as I became aware of it is as follows:
> >
> > 2018/07/23 - the commit referenced above
> > 2018/07/23 - notification from CERT to some distros
> > 2018/07/23 - grsecurity tweet linking to the commit
> > 2018/07/27 - posting to linux-distros
> > 2018/08/06 - CERT Vulnerability Note published
> > 2018/08/08 - posting to oss-security
> >
> > Of course, I am unhappy about this semi-embargo, and even more unhappy
> > about the semi-violation of linux-distros list policy on only having
> > non-public issues in there. However, with CERT involved and with
> > related issues affecting more than just Linux, there was little I could
> > do, short of playing full BOFH and breaking the semi-embargo for
> > everyone. While I think that would have been for the general public's
> > benefit overall, I didn't feel about it strongly enough to actually do
> > it this time. I apologize for letting this happen. (At the same time,
> > I did force another semi-public issue to oss-security right away since
> > that one didn't involve coordination with so many parties.)
> >
> > It appears that everyone involved, including the CERT people, Matthew,
> > and others commenting on the linux-distros thread, were unhappy about
> > the publication delay. No one I saw said that they wanted the delay.
> > Yet somehow CERT didn't pull the trigger sooner. I guess two weeks
> > feels very soon for CERT as it is, even if it is a very long embargo for
> > linux-distros. Also, I guess the discoverer/reporter of the issue had a
> > say on it behind the scenes, and other related issues and non-Linux were
> > considered in CERT's decision-making.
> >
> > I am also unhappy about the two-day delay between publication of the
> > CERT Vulnerability Note and the mandatory posting to oss-security (it's
> > mandatory since the issue was on linux-distros). I've been pinging
> > off-list to make this happen at all, and would have probably made the
> > posting myself if it didn't happen for another day.
> >
> >> About the same period, our secure e-mail provider suffered an
> unprecedented DDoS with some e-mail messages never reaching us.
> >> Since this has business impact,
> >
> > This is almost certainly unrelated. (And I dropped the CC's to
> > ProtonMail and ITU on this reply, not to spam them with further
> > discussion of the unrelated issue.)
> >
> >> we consider legal action against the opaque Linux-distros
> vulnerability-disclosure-among-friends-for-fun-and-profit scheme, that we
> exposed at the ITU earlier this year. This is digital divide in the works,
> with real impact for non-club-members.
> >
> > Personally, I strongly oppose legal threats (let alone action) in our
> > community. The way I see it, what we have is primarily a matter of
> > different opinions on how to handle security issues best, and most
> > people are genuinely acting the way they think works best for everyone
> > affected. With many parties involved in coordinating a disclosure, it
> > usually becomes difficult. There isn't necessarily a right or wrong
> > here. But whoever brings legal action is definitely wrong.
> >
> > Ironically, Stiepan had also suggested (here on oss-security a while
> > ago) that we apply for funding for running the (linux-)distros list (and
> > I explained in a reply why we shouldn't).
> >
> > Alexander

--=20
Very respectfully,

David M Thomsen

--00000000000066670d0573028e88--
