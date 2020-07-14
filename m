X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3923" "Tuesday" "14" "July" "2020" "14:20:07" "-0400" "Vincent Batts" "vbatts@kinvolk.io" "<CAHp2X_Q=2=8qauHjTQRqUOdfUxW5s7pypwLYBwpNQ5yFyE4p+w@mail.gmail.com>" "107" "[oss-security] Flatcar membership on the linux-distros list" "^Date:" nil nil "7" "2020071418:20:07" "[oss-security] Flatcar membership on the linux-distros list" (number mark "        vbatts@kinvo Jul 14  107/3923  " thread-indent "\"[oss-security] Flatcar membership on the linux-distros list\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Flatcar membership on the linux-distros list" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15758 invoked by uid 550); 14 Jul 2020 18:27:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13717 invoked from network); 14 Jul 2020 18:20:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kinvolk.io; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=TLi1GCHTXJYo563k6SuQdv3aTF8teVN40gCYCu0+e5o=;
        b=e+C/k42WknGSvhE5BwWidTZvNIeHHTGmTj/54K+qBzXxQ48R781Bwv9ADiQn3PKlfl
         HR1Yjcdap8J9xM4Joxp3/RvbKtnvb/9HWV27GhBKe1xRuOL/AtMuoBGZ8/55J6ljffdX
         m6q0dQPhqqdG39nLJw+w6CpToJy/GRTYIu5Ds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=TLi1GCHTXJYo563k6SuQdv3aTF8teVN40gCYCu0+e5o=;
        b=At6Vzg/lRxCKF52HvSGuqBkyQw+Pk8mvwmIvTdkyWG9NnEWcu2uPfFauIzTSRYvUlE
         a8ihAqj6Uy5pSLknAMefyQtiEkRyhzKcAK07tPT4G9GWf2xF9mVNFSOpignTMwBFKQ+m
         vM7I5fpCryKKSn0J9rF6EvUqv4bPY6Y84VJ/y93pxDyNcPl7kgxM+E+qdulAPzbGigT0
         BBT7yhtQasnpGLnpsiyLREKTXdsVscl3KKRfawpw00BjSnZKAvSteFdIlbr3bXi31yt/
         CGiH0fHr+gXmVGnOz2Jqd1mPq/USiiVkX5XsVijGM/0Y7DhQgBTWxLCD9vqc9XknzPQE
         WVeg==
X-Gm-Message-State: AOAM532FKDZqXU6tWu6Xuvp+Swo/pjOW2PSJ8tZ7Z3VsZy6vxLgulLK7
	1zccIa4FEUH9dv4S+6MhW2My2cGWzasZ9CM8G0imWoaBx/8e8Q==
X-Google-Smtp-Source: ABdhPJzHlwg6rTtcD6WMZIt4jFFIBcd2OJpbRgjNk8tb/73QOATmK61SOQPlHbCgaKafC12ITrlitMg9BqFD0KeMZ94=
X-Received: by 2002:a05:6402:174e:: with SMTP id v14mr5841221edx.153.1594750818683;
 Tue, 14 Jul 2020 11:20:18 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAHp2X_Q=2=8qauHjTQRqUOdfUxW5s7pypwLYBwpNQ5yFyE4p+w@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000000da16605aa6adc18"
Date: Tue, 14 Jul 2020 14:20:07 -0400
From: Vincent Batts <vbatts@kinvolk.io>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Flatcar membership on the linux-distros list
To: oss-security@lists.openwall.com, volkerdi@slackware.com

--0000000000000da16605aa6adc18
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey there,

Using the
https://oss-security.openwall.org/wiki/mailing-lists/distros#membership-cri=
teria
I=E2=80=99m outlining why Flatcar Container Linux ought to be on the linux-=
distros
list.

> Be an actively maintained Unix-like operating system distro with
substantial use of Open Source components

Flatcar has been building releases for 2+ years, when it was
friendly-forked from CoreOS Container Linux (which is now EOL=E2=80=99d).

> Have a userbase not limited to your own organization

Those pulling updated builds from our servers are in the 10=E2=80=99s of th=
ousands
(much beyond our organization).

> Have a publicly verifiable track record, dating back at least 1 year and
continuing to present day, of fixing security issues (including some that
had been handled on (linux-)distros, meaning that membership would have
been relevant to you) and releasing the fixes within 10 days (and
preferably much less than that) of the issues being made public (if it
takes you ages to fix an issue, your users wouldn't substantially benefit
from the additional time, often around 7 days and sometimes up to 14 days,
that list membership could give you)

https://www.flatcar-linux.org/releases/

Lists releases and issues addressed. Including issues like CVE-2020-0543
being addressed within days of other distros publicly exposing their patch
for this embargoed issue.

> Not be (only) downstream or a rebuild of another distro (or else we need
convincing additional justification of how the list membership would enable
you to release fixes sooner, presumably not relying on the upstream distro
having released their fixes first?)

Flatcar had been downstream of CoreOS Container Linux, but now is only
downstream to aspects of Gentoo and ChromeOS, though manages its own
components, build metadata, build infrastructure and update servers.

> Be a participant and preferably an active contributor in relevant public
communities (most notably, if you're not watching for issues being made
public on oss-security, which are a superset of those that had been handled
on (linux-)distros, then there's no valid reason for you to be on
(linux-)distros)

We have already been a participant on oss-security for some time and are
active in a number of communities. Glad to participate.

> Accept the list policy (see above)

We accept.

> Be able and willing to contribute back (see above), preferably in
specific ways announced in advance (so that you're responsible for a
specific area and so that we know what to expect from which member), and
demonstrate actual contributions once you've been a member for a while

There are a number of the items we will do through the course of normal
process (review, test, validate, monitor for issues going public). As for
owning or being a backup, I expect that would be a consideration after
being a member for a period.

> Be able and willing to handle PGP-encrypted e-mail

Yes

> Have someone already on the private list, or at least someone else who
has been active on oss-security for years but is not affiliated with your
distro nor your organization, vouch for at least one of the people
requesting membership on behalf of your distro (then that one vouched-for
person will be able to vouch for others on your team, in case you'd like
multiple people subscribed)

Pat Volkerding can vouch for me (CC=E2=80=99ed), and maybe others, but I as=
ked
volkerdi first :-)


vb


--=20

Vincent Batts

CTO


---
Kinvolk GmbH | Adalbertstr.6a, 10999 Berlin | tel: +491755589364
Gesch=C3=A4ftsf=C3=BChrer/Directors: Alban Crequy, Chris K=C3=BChl, Iago L=
=C3=B3pez Galeiras
Registergericht/Court of registration: Amtsgericht Charlottenburg
Registernummer/Registration number: HRB 171414 B
Ust-ID-Nummer/VAT ID number: DE302207000

--0000000000000da16605aa6adc18--
