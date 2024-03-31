Received: (qmail 24332 invoked by uid 550); 31 Mar 2024 15:11:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12178 invoked from network); 31 Mar 2024 12:29:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711888156; x=1712492956; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aDm+mvYpRlUAwwBtuBQHht3xoKVq6azfs1L/LdDxUyk=;
        b=bTa0Ancq4zbJIdHT/jfbxY5b6uPS3SYhZYkyeyHtIhuENA2z7OleeHlxUwmaym1ywE
         L7bqAOCTxEos3MrJHQseXn+UkBMqq53Q8To1zqkd0jcec+yY8/+kpXKa0/0YRzyTpZ3m
         EiPoNK32nnDBwsSMSqMmrMbbdDqDK/i/fgMfhtQwMCIIKfGOzDsNwyxD73Psram1tA0d
         3QM5DadwPxoPXIBB5eBK53yUctu2wDn3yrhdBldQdYpR15Mqk0CH/7ibBZO+Gji8WBy3
         r0eSS1PGpZI3GwsB40YaZQ4qF5d6b6KcdIGDk1dSGENozSi4CXGnD9wYGN1YkZ+ABWgo
         k+6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711888156; x=1712492956;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aDm+mvYpRlUAwwBtuBQHht3xoKVq6azfs1L/LdDxUyk=;
        b=JFSkUmRc2E0QSnx/0uLfsNR9R0pK1WgKmnY1TyRUgohUVq20esDeq/e/M6rWO109Ld
         DbwGuPpJi5ECq+H8Jgj2HQSgYaeo++OlRS4k6NHZ/rlx6rCTmVx4+xwUAhy3xkj2A8zi
         urXwMu4Qw5Akz5+ytrc9Lq9xpjxPzDn0M+tYiwpf3PACkzXfVrxJSeUzG/ukKZissL1/
         3eWIXq1JxExwIdNBjJQA02cIFGauRCRphV+nBGwSjsxNM3nZ6SJ8HwjNmGFQC67tzFxi
         8QjkMP0mSRwy0RGpE0SfzWXxDr7BQCqGlraHeu/LDH4wuIL6AH9U9gcvHulQEv1/CV+j
         c8SA==
X-Gm-Message-State: AOJu0YzA/PXOGrTlNxNzgCUk6PMpICeY5LZd1BU7oZqyQEojmUjmlJUi
	8Ct8ubjbzvEftjG9LfR8KRG5gXtQJSb+N8OvXylf2T4ZESDF/Is2iogQPTrlYK7JWOtJjNNKRpo
	4Wb9kuzaci3AFJbpxeQoaQNA5ZFDEwMzRdHuX/Q==
X-Google-Smtp-Source: AGHT+IFyLG6EtSTRA4dAQGrRq9XTcq3n7DfLk61+Nqoj9JD12420YG6Gx2XB/at2/zwh3BuM1SSywV/bWcuphkW9wTc=
X-Received: by 2002:a2e:7e12:0:b0:2d7:2ba:525 with SMTP id z18-20020a2e7e12000000b002d702ba0525mr4217846ljc.18.1711888155665;
 Sun, 31 Mar 2024 05:29:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io> <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com> <uu7k2m$61a$1@ciao.gmane.io>
 <CAOp4FwT+kqoG1JRawFu6tkz0LUMgkT9RCVfh7vyaN3bbFkYx3Q@mail.gmail.com>
 <72a9dfe5-a88d-4711-bc90-cd9269124f08@schafweide.org> <87cyrbzw2z.fsf@daath.pimeys.fr>
 <CAH8yC8nw_5rvGtemqZ3ojSaOCoLZnb+5q8m4NxTf5QTJ=5hoQg@mail.gmail.com>
In-Reply-To: <CAH8yC8nw_5rvGtemqZ3ojSaOCoLZnb+5q8m4NxTf5QTJ=5hoQg@mail.gmail.com>
From: Loganaden Velvindron <loganaden@gmail.com>
Date: Sun, 31 Mar 2024 16:29:01 +0400
Message-ID: <CAOp4FwT-F2H2dyqJoGM1d4G=-83LRDTk2GKcW56H-=9FUZ-EMQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh
 server compromise

Closer look at "Jia Tan" commits show that he/they disabled the Linux
landlock sandbox. Lasse Collin is doing
good work to audit the commits and I wish Github would reinstate his
github account.

commit f9cf4c05edd14dedfe63833f8ccbe41b55823b00 (HEAD -> master,
origin/master, origin/HEAD)
Author: Lasse Collin <lasse.collin@tukaani.org>
Date:   Sat Mar 30 14:36:28 2024 +0200

    CMake: Fix sabotaged Landlock sandbox check.

    It never enabled it.

After using git blame:
328c52da8 (Jia Tan       2024-02-26 23:02:06 +0800 1004) .

Pulling out git show:

commit 328c52da8a2bbb81307644efdb58db2c422d9ba7
Author: Jia Tan <jiat0218@gmail.com>
Date:   Mon Feb 26 23:02:06 2024 +0800

    Build: Fix Linux Landlock feature test in Autotools and CMake builds.

    The previous Linux Landlock feature test assumed that having the
    linux/landlock.h header file was enough. The new feature tests also
    requires that prctl() and the required Landlock system calls are
    supported.


The code to weaken the sandbox was shipped in the 5.6.1 version.




On Sat, Mar 30, 2024, 19:42 Jeffrey Walton <noloader@gmail.com> wrote:
>
> On Sat, Mar 30, 2024 at 9:38=E2=80=AFAM Pierre-Elliott B=C3=A9cue <peb@de=
bian.org> wrote:
> >
> > Bjoern Franke <bjo@schafweide.org> wrote on 30/03/2024 at 14:06:38+0100:
> >
> > > Am 30.03.24 um 04:50 schrieb Loganaden Velvindron:
> > >> Github has suspended the repo:
> > >> https://github.com/tukaani-project/xz
> > >> Im wondering what is the next step for the xz project as a whole ?
> > >
> > > https://git.tukaani.org/?p=3Dxz.git;a=3Dsummary exists and Lasse said=
 on
> > > IRC he thinks he would make a clean 5.6.2 release.
> > >
> > > Regards
> >
> > I honestly would like to extend my sympathy to Lasse.
> >
> > This situation must clearly be a hell for him.
>
> Lasse published a statement at <https://tukaani.org/xz-backdoor/>.
>
> > Someone asked what would become of xz as a project. I do hope in light
> > of this event, some people step in to help.
>
> Perhaps Lasse should turn over control of the project to an entity
> like the Linux Foundation. Xz is critical to Linux now, and it needs
> more oversight than Lasse can provide. (Not to impugn Lasse; he seems
> to be very busy. Extra [trusted] helping hands would probably be
> welcomed).
>
> Jeff
