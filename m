Received: (qmail 31783 invoked by uid 550); 30 Mar 2024 15:41:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26185 invoked from network); 30 Mar 2024 15:33:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711812786; x=1712417586; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=by6SSDOGD9yLl8FNf82g67HiC3P3UgerhBl9k2js7oM=;
        b=Bxd84Y0k+gptsRJkU/46b/4/uvl3FQdBGrxCS716nfIZUrMSBm/oB1SbTozDTINMpS
         9F1+nYjqIxZvPjw81ebr8YV70s58OloVQZZkhik6KXEwpLRYMfGhYW6gCNgg2VHzfx3d
         n7WhzeoGO1OipJQx+06uY8cLBUEqeVyz/27OWCiqYOyEgl9aMLfulyPXPgvD6xgfHkLh
         2qWdZuKwmja15eltqFxEKnwVdhM0w7oT08TwfB1RT5TzJBZTbFX676UamqrCkuvSkEig
         v4zfCTYHM+Ra694jFcT0i+925q4J839xDCNG7IIdtdXingPiUDSXP5/zVjmSmbq2APls
         9aRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711812786; x=1712417586;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=by6SSDOGD9yLl8FNf82g67HiC3P3UgerhBl9k2js7oM=;
        b=WnfChWbPVXi7xHCmSa17JcKn7Arg7FnoowJC/TlFLx29MgBOXxNNPM7qOWMjR6LmKz
         aHrJ+Me8zSG04jErIGUcdoYku2pUB8+itOcNVVNDqCdY0BEzNCtsQp4TKIIIplrFDbSZ
         IGsBDT5fa73HubN7yCp3+opz3WRuWyAhR2gs/QHNXGEQ6/hAJdq60+YsVsvzcsnOBixJ
         flcdZhexXi9MOVO6U6PXbVy6cJiQuJdb/ihQyeD5CmUSWIiBweA583cUG1Cm+ZPshVW4
         GC4Zi2XcEHSaGtJcvxESgSrQO99PWZ16yMmLr4VwHGH8yxhjuTqbQKC6mIjksNp+fNjL
         cs8w==
X-Gm-Message-State: AOJu0Yx+lRU53tJnvBqbyYnRCPViC08SKFE3YnG6tpZs8cZQN/roRKwK
	5ft+EuMAcakRBLn5xCoRHlUeAwhjSKg1VG4WFMdm27+PNH0QevD/AQhaO9xTRpV0DjtnLBRELRl
	IGNgPSAhYu4/DZV01FA87T6vKQ8uFAb77Yi4=
X-Google-Smtp-Source: AGHT+IGy7PT7tWxZYxeEmx26wNqr/V3kfn7g41B7HTxoYS0Uwem09J0pQGTZlO+yvcZcZqoak+RVnbekNLwFMDRQVaQ=
X-Received: by 2002:a05:6820:2707:b0:5a5:23fb:4493 with SMTP id
 db7-20020a056820270700b005a523fb4493mr4054521oob.4.1711812785951; Sat, 30 Mar
 2024 08:33:05 -0700 (PDT)
MIME-Version: 1.0
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io> <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com> <uu7k2m$61a$1@ciao.gmane.io>
 <CAOp4FwT+kqoG1JRawFu6tkz0LUMgkT9RCVfh7vyaN3bbFkYx3Q@mail.gmail.com>
 <72a9dfe5-a88d-4711-bc90-cd9269124f08@schafweide.org> <87cyrbzw2z.fsf@daath.pimeys.fr>
In-Reply-To: <87cyrbzw2z.fsf@daath.pimeys.fr>
From: Jeffrey Walton <noloader@gmail.com>
Date: Sat, 30 Mar 2024 11:32:54 -0400
Message-ID: <CAH8yC8nw_5rvGtemqZ3ojSaOCoLZnb+5q8m4NxTf5QTJ=5hoQg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh
 server compromise

On Sat, Mar 30, 2024 at 9:38=E2=80=AFAM Pierre-Elliott B=C3=A9cue <peb@debi=
an.org> wrote:
>
> Bjoern Franke <bjo@schafweide.org> wrote on 30/03/2024 at 14:06:38+0100:
>
> > Am 30.03.24 um 04:50 schrieb Loganaden Velvindron:
> >> Github has suspended the repo:
> >> https://github.com/tukaani-project/xz
> >> Im wondering what is the next step for the xz project as a whole ?
> >
> > https://git.tukaani.org/?p=3Dxz.git;a=3Dsummary exists and Lasse said on
> > IRC he thinks he would make a clean 5.6.2 release.
> >
> > Regards
>
> I honestly would like to extend my sympathy to Lasse.
>
> This situation must clearly be a hell for him.

Lasse published a statement at <https://tukaani.org/xz-backdoor/>.

> Someone asked what would become of xz as a project. I do hope in light
> of this event, some people step in to help.

Perhaps Lasse should turn over control of the project to an entity
like the Linux Foundation. Xz is critical to Linux now, and it needs
more oversight than Lasse can provide. (Not to impugn Lasse; he seems
to be very busy. Extra [trusted] helping hands would probably be
welcomed).

Jeff
