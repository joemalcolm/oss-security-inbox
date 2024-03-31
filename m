Received: (qmail 7732 invoked by uid 550); 31 Mar 2024 00:37:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1572 invoked from network); 31 Mar 2024 00:35:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711845350; x=1712450150; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XnQCjiY20aAnIdabtgwMLWg+06bB8q2kOonmWkItnv8=;
        b=PwNhOnNJkr669ZNRh+k4hQm+puqF88GkThXV+hAUG8toQV8MuzPLGA8v/t8BFMSh2Z
         4LauWERhE3DG/zdaEBeQ8eYWNofnIQxx7VI+5fkw8zaVsIWuia+9JzfDdmRP6vmWPyZA
         /zbjgZLxbT/qPipWQ2WpkGWp8JBj5f/PtV3cCQDMbxj8Ta7JgcTBPuFehL7CFgDBeVrF
         +5wlDsV3uaCFlEkEdYtI6iApxlbAJPR/LjCHsd4r5MaU25tcMN9z8QkvQJQ6GCXd7ddr
         /ZkBD1aoOwTlmAVpRUMrpKj1X6+ypCMiGj10YV7KXoctUsntEvRCYOVN5wzEU4kro8wf
         YFVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711845350; x=1712450150;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XnQCjiY20aAnIdabtgwMLWg+06bB8q2kOonmWkItnv8=;
        b=ur1XVsm38mdoV9f8zFPaN49xwbBgHOvFBOhjJamLyPSFg1pn7KoZZdMeoustsFB8Y2
         ugCgU6HFHJHlzVefL5cs+q2SO0MgW3yg0xKbJcZnA+HsU+fvfLP9OW4blTTf4vsxaWWe
         YQn9jApn8TW7WRKvDBT2GaqZAojruTufKRwh7arZ5QB6D5WlEbFVLYo+sY2eio4pxeUV
         lLHt7qaKfBacjuRKr1nrwlQShYqITntMXHov00I4Wyp91leipGaCV5j0EHudgabwEiJE
         6vfoFivpwDHzkjmGZTTgbf5410mWvX8aXTkg1+N/fBjPiNv+120IuHTOJ2ZFzrSmuRym
         8BdQ==
X-Gm-Message-State: AOJu0Yy7XjPK+Q694aHhjzhXMB2e/ySUhtQlo6IxkVh/fD9SpRuvCt/l
	bY4QhZqN2P/zNjmy87f/c+ILT1IW7whzf47d4+eqaK5MhR0QrCQ/W5ELu8yWGaNeYikB+u+KKJL
	ZKUGSZ8xmhDlJucQrXMcbPJy22mwTfhtn
X-Google-Smtp-Source: AGHT+IHPztL5b5N5s544/w+ep0bgkktu9SEpxp3gpZcl17LroRjEljCt46wjJt+P7mE+nzSFw5ra+wWJz+fZkAESHFM=
X-Received: by 2002:a5b:146:0:b0:dc7:347e:c6f4 with SMTP id
 c6-20020a5b0146000000b00dc7347ec6f4mr4459967ybp.32.1711845350078; Sat, 30 Mar
 2024 17:35:50 -0700 (PDT)
MIME-Version: 1.0
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io> <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com> <uu7k2m$61a$1@ciao.gmane.io>
 <CAOp4FwT+kqoG1JRawFu6tkz0LUMgkT9RCVfh7vyaN3bbFkYx3Q@mail.gmail.com>
 <72a9dfe5-a88d-4711-bc90-cd9269124f08@schafweide.org> <87cyrbzw2z.fsf@daath.pimeys.fr>
 <CAH8yC8nw_5rvGtemqZ3ojSaOCoLZnb+5q8m4NxTf5QTJ=5hoQg@mail.gmail.com>
 <5e72e6db-733c-423a-8213-f4698780cbab@wichmann.us> <n13o1633-6409-9p3p-95or-94on654ps8s4@vanv.qr>
In-Reply-To: <n13o1633-6409-9p3p-95or-94on654ps8s4@vanv.qr>
From: Pat Gunn <pgunn01@gmail.com>
Date: Sat, 30 Mar 2024 20:35:38 -0400
Message-ID: <CADz+4x_dLKtA8bz=ATTLdrO6GGtzgC3fzxA7ccvGKg-5FvStvg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000080200614ea0e1a"
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh
 server compromise

--0000000000000080200614ea0e1a
Content-Type: text/plain; charset="UTF-8"

I hope this spurs efforts to create better tools and follow software
practices that might make it easier to spot this kind of thing. I wouldn't
be surprised if there are other commonly-used tools that already are
compromised but don't have performance issues that have yet led someone
down the "that's funny" path that leads to easy discovery.

On Sat, 30 Mar 2024 at 20:25, Jan Engelhardt <jengelh@inai.de> wrote:

>
> On Saturday 2024-03-30 21:43, Mats Wichmann wrote:
> > On 3/30/24 09:32, Jeffrey Walton wrote:
> >
> >>> Someone asked what would become of xz as a project. I do hope in
> >>> light of this event, some people step in to help.
> >>
> >> Perhaps Lasse should turn over control of the project to an entity
> >
> > In light of this scenario (at least what I understand about it),
> > it's got to be even harder now for an overloaded maintainer to
> > accept help of a significant nature.
>
> I think it may not make much of a difference.
>
>
> In the instance of xz, the usurper convinced maintainers with
> contributions over the course of some 2 years to gain reasonable
> control of the project, and in essence, users.
>
> If instead, we picture that a maintainer withholds control (either due
> to lack of will, or lack of time), an usurper would have to start a fork
> and convince *users* directly to trust and favor the replacement, an
> undertaking which might have reasonably taken about 2-3 years as well
> (judging from the timeframes it took libjpeg-turbo or systemd to get a
> footing in distros).
>
>
> Other software might have completely different "usurp time"
> characteristics. That all depends on both how integrated a software
> is in the larger ecosystem and how many users there already are that
> would care (for either an improvement or when it breaks).
>

--0000000000000080200614ea0e1a--
