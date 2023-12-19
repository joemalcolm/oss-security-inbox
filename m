Received: (qmail 17628 invoked by uid 550); 20 Dec 2023 07:41:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5991 invoked from network); 19 Dec 2023 22:49:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=almalinux.org; s=google; t=1703026173; x=1703630973; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BAF0K1jd/h71jvJHtkx1PzEM8WRYu+62bDSVG2dloDQ=;
        b=XytDLmfu0NbKk+1LQeqXiZQp3UXo81sS7n0pk4IeWvKmVubbnOJ7jwF5IDgwZgUA3F
         CJ806EjdfKo74AIOzDV+RR0YkKf8kpWetXYhu0L+yqJZF1D2zX7DQHtjo8ChXB6xrYdR
         iJXzgAFb3rkNSphR1+Hqyu3X6G3/PI8+YiFI33LobpXBTSDeqskpPD+DePfNjYd8G0Pp
         HDadFBUBH0mR8C/B/hN7wpiyCgnSPYgdT/ufSXmo3z73GocYJFpAeQR+hOipyoNpBtWJ
         EfH+A+BQGgHKzgNcWtc7vDd89hNqXyPKW0aZfHNi8DdF0+OvYBdYkv4XPpwCjfNM+fi+
         YH2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703026173; x=1703630973;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BAF0K1jd/h71jvJHtkx1PzEM8WRYu+62bDSVG2dloDQ=;
        b=N9Mv+UIZbcf1rSDhA1JgjeogBe2oMtTmMTyH/YQ9ezEQkqv26ye7dVrY/UfIfAdshM
         0IG+UJ8XVUzAN1MFgXDLd/6NjyoRt/X3Iq8k5fVVUWp+xpMV8MZ1X87lOz1l6aexzEA8
         5IPB6ZrLqCYqpz5pXbcU89S1untAPQMEh5P15cHZVBqnn6ayBbgLbXSc24yR/A+h4ffA
         nVRnPXLIzd7/0H/YGOzzwfOhkIKiV2jvo+au4MfiS4pIdiFKx/26s2TPmJeRF/OxJcdD
         svpo5J6YShDK2k+j8Oms49ZCIScSUtWZSoFx5WuCAHsF1NxlfZRtkmF7rZKVh1NV5ktj
         b9OA==
X-Gm-Message-State: AOJu0Yx3ZS5kzjzfJAj19lqmtYBZtWj3mQXpuHbzVmh83q61YQGFn1MB
	3BDAJ8DRsAoHAY6GHHYIlnwys5RwLXeQBnAgxYs7qA==
X-Google-Smtp-Source: AGHT+IGedEtkB+ALal1ut1Ung2pM6ru0486pRmXpLu49a2uLVau0xErocPBlqk5kiLqlI/4xM5lLOdcb1V68mQOfs24=
X-Received: by 2002:a05:651c:168c:b0:2cc:5f1f:b7d8 with SMTP id
 bd12-20020a05651c168c00b002cc5f1fb7d8mr2603588ljb.31.1703026173127; Tue, 19
 Dec 2023 14:49:33 -0800 (PST)
MIME-Version: 1.0
References: <CAKe4=-LwgzB3e1gkwLuTmbMBGW4-L0-4=JVQ_ry1SWXNE266zA@mail.gmail.com>
 <20231217205642.GA7164@openwall.com>
In-Reply-To: <20231217205642.GA7164@openwall.com>
From: Jonathan Wright <jonathan@almalinux.org>
Date: Tue, 19 Dec 2023 16:49:16 -0600
Message-ID: <CAKe4=-KBsSnPfCDKApdOq9uksfv=AenjWtKPZorRcKo3F+_SEA@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, Andrew Lukoshko <alukoshko@almalinux.org>, 
	benny Vasquez <benny@almalinux.org>, Igor Seletskiy <iseletsk@almalinux.org>, 
	Darya Malyavkina <dmalyavkina@cloudlinux.com>, Jack Aboutboul <jack@almalinux.org>
Content-Type: multipart/alternative; boundary="00000000000017c62d060ce4aea0"
Subject: Re: [oss-security] AlmaLinux Distros List Application

--00000000000017c62d060ce4aea0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 17, 2023 at 2:56=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:

> Hi,
>
> On Tue, Dec 12, 2023 at 02:35:35PM -0600, Jonathan Wright wrote:
> > I'm submitting this application on behalf of the AlmaLinux OS Foundatio=
n.
> >
> > Myself (Jonathan Wright) and Andrew Lukoshko, our lead architect, would
> be
> > joining if approved.
>
> This looks reasonable to me.
>
> >       Historically we have been following Red Hat releases within 1-2
> days,
> >       and since our shift in June away from following Red Hat we have
> been able
> >       to release some security updates ahead of Red Hat (Iperf3 patch
> and AMD
> >       microcode/kernel patches specifically). We would not be beholden
> to CentOS
> >       Stream updates for our patch releases.
>
> This isn't a lot yet.  I suppose linux-distros membership would enable
> you to do ahead of Red Hat updates more often?
>

It's not so much about competing with or doing things before RedHat as it
is about taking care of our users.  Since June of this year we are no
longer beholden to RedHat for patches.  Being on the distro list could mean
getting patches out sooner but that's more or less a side effect, not
necessarily the goal - though the goal IS getting patches to users as
quickly as possible, especially those shared on the private list, for
obvious reasons.

We didn't apply for the distros list before June as there was really no
point since we were tied to being a clone of RH, but that has now changed
since we are no longer just a clone, but a compatible downstream OS where
we can (and have been) make our own changes.


>
> >       Immediately we can begin to help reporters ensure their reports a=
re
> >       following the requirements and are confirmed/replied to. As we
> > advance our
> >       understanding of how things operate, and the need arises, we can
> > expand our
> >       work into contributing more deeply.
>
> These tasks are already accepted by some distros.  We can indeed
> re-assign, so that those older members handle more complex tasks
> instead, or maybe you'd volunteer for some of the tasks from the
> "Administrative tasks mostly unrelated to (linux-)distros lists (but
> relevant to the wider community)" category?  This category is
> essentially about expanding and improving the public oss-security
> content and its visibility.
>

We very likely would be happy to help in this regard, especially if much of
it can be done without necessarily being on the private side of the list.
The folks on our side that would be great at this type of work are not the
same as those of us (myself and Andrew) that would be on the embargoed list.


>
> >       Darya Malyavkina from CloudLinux will vouch for us.
>
> For others reading this - Darya has been on linux-distros for CloudLinux
> for a long while, so this satisfies the requirement as written.
>
> Alexander
>


--=20
Jonathan Wright
AlmaLinux Foundation
Mattermost: chat <https://chat.almalinux.org/almalinux/messages/@jonathan>

--00000000000017c62d060ce4aea0--
