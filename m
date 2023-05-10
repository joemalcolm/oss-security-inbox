Received: (qmail 1806 invoked by uid 550); 10 May 2023 22:08:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12218 invoked from network); 10 May 2023 21:52:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1683755560;
	bh=RgmgU8f5zP92cQB+rVZXHNfDQaNDlqhikNOYijB8V3c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=FV6D4oOOkGlZoLzw7veQEEkw3omx9jnQKdtQFXGj/nb0omTOedaH9RDt9+Pp8qMCi
	 hE1Vjy6U5THxuVQjZxgMvi/a3cd+VWOlP1XI0/oRVgW7qEx+Zt7r9PADnO92sdzgbv
	 8Jy6AOIC6sc00SlHCAwCLJgdP12qXYyLj0JCtgiXjEDFI14oTXSe7N1iYO8z8F1LZ2
	 5wPqLYo37IvGoeRLLCHiDbAGtNyHrPgI6PUzwYi6J4Vz9nY8p2YZC9toLgLNh7zmlL
	 RBoelSJgvYUpdYWron5QBX0Bm8if93UROp/z1dIRS0agR2JZFvjyaNOy6hm/BZLeqh
	 y7NflIoOXfWZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683755559; x=1686347559;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RgmgU8f5zP92cQB+rVZXHNfDQaNDlqhikNOYijB8V3c=;
        b=UvXsz4rKKIChZkuENFbEBv0nPbWu/mbB/wiAT0z7RDVcrlUgN5g4kPINo2CidqqRih
         KLL9c/2S7+ua7cwHjVeHtQ+2iYtxfJOIPhXRVqHeqkptip+sJoWwDnfGonyABUbgWou/
         Kll01wp1FKRA5E/12ub1CRnsCpqHCvF1cER9fCGEoYR0uK/2IgzNl5a8Z7ff49xN+0AH
         S1sCE8uAsfXIZSVgIrNi7yAkbTVxqrhNO3ymHZEYwRw0q2QSSAHFiPsqh5PDK/t6cDm3
         +mY0ShfJCHqlSMoc4FEH9otNtxFzq5usVKbCBL6Vms2D9mTqlcq4anGXXGRN/bwkivaT
         7YAg==
X-Gm-Message-State: AC+VfDxnapjvZYF8z+PUmke/1KdTXR6uCd5BpZGGVMyb9+yTkCzt5Tk/
	VtCg0bH/tHv7H1SxkQqRrEgcr/hesJZZmCMYtaUxlLAOgmLPlnYkzOieZVZM1P8nX1IEdBNszLt
	AUxWbUCec09+7m6/gC8f5iqnGrdLq/e8eA9S5rNRPSgOK0qFUjGDc/oyL4x6KwyHO7dR5WrdZ+J
	Q=
X-Received: by 2002:a1f:45d6:0:b0:440:441:37c1 with SMTP id s205-20020a1f45d6000000b00440044137c1mr5219445vka.8.1683755558644;
        Wed, 10 May 2023 14:52:38 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5dagDZMgCyBzXjwCxqayihXCSmy00aUKmeKEB2c7vv4oTU64GdwX+hKduCFDALeUgbPGLarqJu/311UVmgXto=
X-Received: by 2002:a1f:45d6:0:b0:440:441:37c1 with SMTP id
 s205-20020a1f45d6000000b00440044137c1mr5219436vka.8.1683755558170; Wed, 10
 May 2023 14:52:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAD3upLvuttgu3i6qZyB2LLY2CPcTvMdhQQLKdAYV2eoPD5Wjjg@mail.gmail.com>
 <20230510165545.GA25380@openwall.com> <ZFvuu+PpS3BO2T/t@quatroqueijos.cascardo.eti.br>
In-Reply-To: <ZFvuu+PpS3BO2T/t@quatroqueijos.cascardo.eti.br>
From: Tobias Heider <tobias.heider@canonical.com>
Date: Wed, 10 May 2023 23:52:27 +0200
Message-ID: <CAARv3RQS-sV4JCkRCJ1EOgfi+9MR0G8MsiS-xT9gXNjddqmJ-A@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Turritopsis Dohrnii Teo En Ming <tdtemccnp@gmail.com>, ceo@teo-en-ming-corp.com, 
	Piotr Krysiuk <piotras@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] New Linux kernel NetFilter flaw gives attackers
 root privileges

On Wed, May 10, 2023 at 9:39=E2=80=AFPM Thadeu Lima de Souza Cascardo
<cascardo@canonical.com> wrote:
>
> On Wed, May 10, 2023 at 06:55:46PM +0200, Solar Designer wrote:
> > Hi,
> >
> > On Wed, May 10, 2023 at 11:52:58PM +0800, Turritopsis Dohrnii Teo En Mi=
ng wrote:
> > > I have just come across this article. Thought of sharing it.
> > >
> > > Article: New Linux kernel NetFilter flaw gives attackers root privile=
ges
> > > Link: https://www.bleepingcomputer.com/news/security/new-linux-kernel=
-netfilter-flaw-gives-attackers-root-privileges/
> >
> > We don't normally want in here links to news articles on something that
> > was already brought up in here in more detail.  However, as a moderator,
> > I reluctantly approved this posting so that we can use the resulting
> > thread to discuss whether this issue got blown out of proportion and if
> > so what we can do to avoid that going forward.  Here's the original
> > posting this refers to:
> >
> > https://www.openwall.com/lists/oss-security/2023/05/08/4
> >
> > Another Linux kernel issue, in io_uring subsystem, was also disclosed in
> > here on the same day, but I think didn't gain such tech media attention:
> >
> > https://www.openwall.com/lists/oss-security/2023/05/08/3
> >
> > Is the netfilter issue really worse than the io_uring issue?  I doubt
> > it.  So _maybe_ it was something in the wording that tripped someone
> > writing for one of those tech news websites, then others picked it up?
> >
> > Piotr's posting about the netfilter issue mentions intent to disclose an
> > exploit later (like it should have, thank you Piotr!)
> >
> > Tobias' posting directly links to an exploit (which is also fine).
> >
> > Is intent to disclose an exploit later more newsworthy than having done
> > so right away?  I doubt it.
> >
> > So maybe it's just random, and there's nothing to see here, after all.
> >
> > Now as to the actual issue and its description, I think we should
> > clarify what exactly is meant by "unprivileged local users."  Piotr, I
> > guess you actually meant not literally unprivileged, but users with
> > CAP_NET_ADMIN, which can be had via unprivileged user/net namespaces if
> > enabled in the distro / on the system, or when already in a container
> > with such capability granted to container root.  Correct?  I think going
> > forward we should always make this clear right away.  Here's a former
> > netfilter core team leader also bringing this up:
> >
> > https://twitter.com/LaF0rge/status/1655867494152667140
> >
> > LaForge - @LaF0rge@chaos.social @LaF0rge:
> > > Really curious to see how CVS-223-32233 for #linux #netfilter nf_tabl=
es
> > > https://seclists.org/oss-sec/2023/q2/133 can be exploted fom
> > > "unprivileged local users".  AFAICT, nf_tables_api  goes through
> > > nfnetlink, and nfnetlink_rcv() checks for CAP_NET_ADMIN way  before t=
he
> > > code in nf_tables_api.
> >
> > and a reply:
> >
> > Alex Plaskett @alexjplaskett:
> > > Didn't look in depth at this one but you can trigger nf_tables_api
> > > operations from a user / network namespace and distros such as Ubuntu
> > > have unpriv user namespaces enabled.
>
> If users don't need user namespaces, they can disable it on Ubuntu kernel=
s as a
> mitigation by doing:
>
> sysctl -w kernel.unprivileged_userns_clone=3D0
>
> Or persisting the option by adding a .conf file at /etc/sysctl.d/ with the
> following line:
>
> kernel.unprivileged_userns_clone=3D0
>
> Cascardo.

Another thing worth mentioning is that the apparmor team has done some very
interesting work on providing finer control over unprivileged user namespac=
es
on a per application basis:
https://gitlab.com/apparmor/apparmor/-/wikis/unprivileged_userns_restriction

This would allow having opt-in unprivileged userns support only for confine=
d and
explicitly permitted applications and could hopefully drastically reduce the
impact of similar bugs in the future.

Tobias

>
> >
> > As expected.  Now, from a typical distro user's standpoint,
> > "unprivileged local users" may be just right.  However, not all distros
> > have unprivileged user namespaces enabled by default.
> >
> > Alexander
