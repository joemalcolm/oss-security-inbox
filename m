Received: (qmail 13413 invoked by uid 550); 14 Feb 2024 15:56:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7323 invoked from network); 14 Feb 2024 15:53:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1707926187;
	bh=Xf6Z28JyezytVN1lX6dTXsXl681Cx/G0kDDkP2ePkl0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type;
	b=Z7UkdenCoD32kyyyASLN+H8W1ljYhRrYkDtZseJKQfVQinQPZ57CFJvAL+bRbdjlX
	 byWqTyf76/Ghu/+RnrOo3Uss5Qb0vSs+ncCdGUgQqKVJZRyDkj2qyDJ4iGEnjR4Z5q
	 A21ZT66VdC5aeo+XfPTl3rqMgiBK2Gq0rkNwCHBvXF0BdGWkoErJMArPVxLGl8ijBU
	 wrKAYOLAvPY46Qwu5VKFhBjz4bb6acaVKotc1eEXuRfv9wUI1BsWT6CFVcOA34gZXU
	 ky9VLmypDPNofEKZDUuxFg5ufrjNGRk0zfXe2LJ/dxUgjuZeLjXLDYcj7l4xZdRVgX
	 uzSQSEMwDaL1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707926186; x=1708530986;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xf6Z28JyezytVN1lX6dTXsXl681Cx/G0kDDkP2ePkl0=;
        b=me1ozmY73f52TGuYRx6wj0TbfPmqQpKjYoj8kfqEhgiBAjvjdBGtBfkNtvKIunw6p5
         s9bIGmR0FAIFubEi1yjcvMT3Jz+Qjt2vkSN4wSoxDbP35mnMusGNXylGKvzfxKejbwoY
         3Qnbk3dodZwX49HcH5xCbLt9cUvfEUgwaDXGqndkedx0seeUCeUWAEIRenY0RvHgDCn5
         ivPJ/lJp6YTGLoI6J2DbI7Y5X3srEwePYtwbuCFim959wr/moB6G2e0LDBbZA+AT5c38
         9TE+sF4vKEadtPvRG0Jcx3qf4L415j6CaT9UHY6t1eWAC2YqGEp0EvV/yK8xhXEhXP80
         807w==
X-Forwarded-Encrypted: i=1; AJvYcCXPLbbet4/b0/iNZByTb1I+jKylqJjJ0V4msvlCpQ1OEunUUQdASLFlLhP2XBMPyyBNn51tRgJR2GNqcTyPGlPB4V/YGlaSIy5hkZeUk8Rc
X-Gm-Message-State: AOJu0Yyqx6YwnU1NHBjclqdfW/y8HhyhFwU8v22ljQfRDTp4Q9PH3qC/
	zPCILo38VVLknQip8HdFmJCq7+YlH38REjA3DqvGgB+opc+SpudtVtE4PRb1w0Z5w6qBbYiTD/8
	dPqk3zu8SjhzG4Pxp2Rd0UlqRTnQlwpNuTR1qv0OExNE+ja3h+bpru2YQMLp50dD9gxmruFqfLb
	b8kqZCdag+vhLZsM5+KBKoP+MiHQS6gcFlwE/spnZ7U/Sgqmd/BEQNSvAY
X-Received: by 2002:a4a:e615:0:b0:59d:d416:3372 with SMTP id f21-20020a4ae615000000b0059dd4163372mr2924839oot.0.1707926185968;
        Wed, 14 Feb 2024 07:56:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEo1F8I3y4AisH+iCWpTnqgUCPDe1vF9185K/yRG7Tho/BQzK+fkddWTnEjF6uwTPcbZp77UMznIjGRA/0wYPk=
X-Received: by 2002:a4a:e615:0:b0:59d:d416:3372 with SMTP id
 f21-20020a4ae615000000b0059dd4163372mr2924832oot.0.1707926185697; Wed, 14 Feb
 2024 07:56:25 -0800 (PST)
MIME-Version: 1.0
References: <CAAfJHtpMWco6y_wRRzrgQfJZmwzsMG6P8D5FFWLMAOihuc2dZw@mail.gmail.com>
 <ZczfqLnI23SC-A7Q@corsac.net> <CAAfJHtrrtWXmZzUbNhTKP9aXyu90ZsfcOa_cZhBkKS4uUign9Q@mail.gmail.com>
 <ZczhrQT3b1y6c5Dy@corsac.net>
In-Reply-To: <ZczhrQT3b1y6c5Dy@corsac.net>
From: Mate Kukri <mate.kukri@canonical.com>
Date: Wed, 14 Feb 2024 15:56:15 +0000
Message-ID: <CAAfJHtqy8hp6imxP=S+98RDJ=5YR0a8sN3hdTMtp8SotT7BBJA@mail.gmail.com>
To: corsac@debian.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Secure Boot bypass in EDK2 based Virtual Machine firmware

In the case of these OVMF/AAVMF images I believe the only other
built-in application accessible is the firmware setup utility and boot
selector.
These obviously provide many capabilities, but require a user present
at the console to access, and to the best of my knowledge not
vulnerable to this attack.
For firmware images provided by other vendors or distributors, I have no id=
ea.

On Wed, Feb 14, 2024 at 3:52=E2=80=AFPM Yves-Alexis Perez <corsac@debian.or=
g> wrote:
>
> On Wed, Feb 14, 2024 at 03:47:23PM +0000, Mate Kukri wrote:
> > That is correct in the general case, but here the issue comes from the
> > fact that a copy of the Shell was included in the firmware image
> > itself, and as a built-in application was implicitly trusted.
>
> Ah, thanks for the clarification, I didn't know about the implicit trust
> on "built-in applications". Out of curiosity, are there other such
> applications, which could be abused?
>
> Regards,
> --
> Yves-Alexis Perez
