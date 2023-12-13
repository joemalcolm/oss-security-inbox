Received: (qmail 21668 invoked by uid 550); 13 Dec 2023 18:46:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19526 invoked from network); 13 Dec 2023 18:44:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux.com; s=google; t=1702493109; x=1703097909; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YvSIbcTKCa+HOF+5gEL0ejwNuop3uKu41gDtJyMoLWY=;
        b=GYMFnRMheL84Ke9CBe8Pr+elwrfdwKSOPNzCC1SM1ZY9OoMloodRBe7SbhwzVIzIEj
         Y0yu1gD1JrSFDLk5FAARYt4Dz9tCcbbWg1xnM9mOzBpEcIDS89LhyCor5ZouUKUYtoxL
         EED7c4u14K9PCgVFDrecOxPS96uzK2QQuHRpZoCHYaUh/kBoDUxTO+bal7JtThg+/gKz
         F6XJGaNHn5QyqTlggehoXUHEv34weeFv793TSRayGCLCi1C3d+Xq6z0DQeZin0DLzw60
         NLUQjQaObp1fnU0/KTE7Fzo9yxwDSCtDn/OPAloNip5oqqAqFBNmJ35D+mHodBhVY3JP
         fqbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702493109; x=1703097909;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YvSIbcTKCa+HOF+5gEL0ejwNuop3uKu41gDtJyMoLWY=;
        b=uH76UXHyG07AAtEtnVy0/YM47WcJlBdIy+y5BkkE2zUJwwRWd9z6MGy6xEe0AUjzV/
         yA2ReYeCL3GGoWVX8MA8SM8eZswSL/t/h2QqECJ3WWzizRpRpfV8UtaiHmrG/lqAxl6v
         QrSzb/AMXPjFZ5bS4kq2yTPNkq7enPQ11oNBev/MjwFj0FswmBHipNINcGV6c6w09sOE
         tF+8vMkXTfLSBHEatptOR7aQmcQx3y/LtGSuw2dGcHkYN7uzGfQn914YcPBw+zeWvLwD
         z483P+etl1xZxs0QlSc1cB4oXZsququwlLJfGiuI96nk5TrKz3gN0AoJxowIrnN75xyu
         AeZw==
X-Gm-Message-State: AOJu0YziNs4CeStCC6x5+UabiKBvpZrQmVdtU7aAVH8Der8Ivlg0wgze
	Para6Qk9U+bI22IhaReweR0/jlkwr2pZrSbXgSEc+g==
X-Google-Smtp-Source: AGHT+IFoI0zfvLuoltPptCdaRPvoV7NuXclk2irupdGlohRi2IXvX9/CULCiDpd6a1ZHvgEPeV7DwlGx/IfEMDDgNCY=
X-Received: by 2002:a05:690c:1e:b0:5df:c224:fb44 with SMTP id
 bc30-20020a05690c001e00b005dfc224fb44mr5501305ywb.23.1702493108413; Wed, 13
 Dec 2023 10:45:08 -0800 (PST)
MIME-Version: 1.0
References: <CAKe4=-LwgzB3e1gkwLuTmbMBGW4-L0-4=JVQ_ry1SWXNE266zA@mail.gmail.com>
In-Reply-To: <CAKe4=-LwgzB3e1gkwLuTmbMBGW4-L0-4=JVQ_ry1SWXNE266zA@mail.gmail.com>
From: Darya Malyavkina <dmalyavkina@cloudlinux.com>
Date: Wed, 13 Dec 2023 19:44:57 +0100
Message-ID: <CAL5rf4waYZe2bA6Vse7uWj_Gf_geha_Of3re-Cwc-BGe-XstkQ@mail.gmail.com>
To: Jonathan Wright <jonathan@almalinux.org>
Cc: oss-security@lists.openwall.com, Andrew Lukoshko <alukoshko@almalinux.org>, 
	benny Vasquez <benny@almalinux.org>, Igor Seletskiy <iseletsk@almalinux.org>, 
	Jack Aboutboul <jack@almalinux.org>
Content-Type: multipart/alternative; boundary="000000000000f5c889060c689016"
Subject: [oss-security] Re: AlmaLinux Distros List Application

--000000000000f5c889060c689016
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm Darya Malyavkina, Director of Release Engineering at CloudLinux. I
vouch for Jonathan Wright and Andrew Lukoshko

On Tue, Dec 12, 2023 at 9:35=E2=80=AFPM Jonathan Wright <jonathan@almalinux=
.org>
wrote:

> I=E2=80=99m submitting this application on behalf of the AlmaLinux OS Fou=
ndation.
>
>
> Myself (Jonathan Wright) and Andrew Lukoshko, our lead architect, would be
> joining if approved.
>
>
>    1.
>
>    Be an actively maintained Unix-like operating system distro with
>    substantial use of Open Source components
>    1.
>
>       We are actively maintained and have released 4 minor versions this
>       year (8.8, 8.9, 9.2, and 9.3) along with small updates within the m=
inor
>       versions, generally at least a few updates per week.
>       2.
>
>    Have a userbase not limited to your own organization
>    1.
>
>       Our public mirror system alone serves 750k unique systems weekly,
>       and is used worldwide for a variety of things.
>       3.
>
>    Have a publicly verifiable track record, dating back at least 1 year
>    and continuing to present day, of fixing security issues (including so=
me
>    that had been handled on (linux-)distros, meaning that membership would
>    have been relevant to you) and releasing the fixes within 10 days (and
>    preferably much less than that) of the issues being made public (if it
>    takes you ages to fix an issue, your users wouldn't substantially bene=
fit
>    from the additional time, often around 7 days and sometimes up to 14 d=
ays,
>    that list membership could give you)
>    1.
>
>       Historically we have been following Red Hat releases within 1-2
>       days, and since our shift in June away from following Red Hat we ha=
ve been
>       able to release some security updates ahead of Red Hat (Iperf3 patc=
h and
>       AMD microcode/kernel patches specifically). We would not be beholde=
n to
>       CentOS Stream updates for our patch releases.
>       4.
>
>    Not be (only) downstream or a rebuild of another distro (or else we
>    need convincing additional justification of how the list membership wo=
uld
>    enable you to release fixes sooner, presumably not relying on the upst=
ream
>    distro having released their fixes first?)
>    1.
>
>       While we've historically done that (which is why it didn=E2=80=99t =
make
>       sense to join earlier), we shifted in June to our own OS that is
>       ABI-compatible with RHEL.
>       5.
>
>    Be a participant and preferably an active contributor in relevant
>    public communities (most notably, if you're not watching for issues be=
ing
>    made public on oss-security, which are a superset of those that had be=
en
>    handled on (linux-)distros, then there's no valid reason for you to be=
 on
>    (linux-)distros)
>    1.
>
>       we have many participants on the oss-security list.
>       6.
>
>    Accept the list policy (see above)
>    1.
>
>       accepted
>       7.
>
>    Be able and willing to contribute back (see above), preferably in
>    specific ways announced in advance (so that you're responsible for a
>    specific area and so that we know what to expect from which member), a=
nd
>    demonstrate actual contributions once you've been a member for a while
>    1.
>
>       Immediately we can begin to help reporters ensure their reports are
>       following the requirements and are confirmed/replied to. As we adva=
nce our
>       understanding of how things operate, and the need arises, we can ex=
pand our
>       work into contributing more deeply.
>       8.
>
>    Be able and willing to handle PGP-encrypted e-mail
>    1.
>
>       done.
>       9.
>
>    Have someone already on the private list, or at least someone else who
>    has been active on oss-security for years but is not affiliated with y=
our
>    distro nor your organization, vouch for at least one of the people
>    requesting membership on behalf of your distro (then that one vouched-=
for
>    person will be able to vouch for others on your team, in case you'd li=
ke
>    multiple people subscribed)
>    1.
>
>       Darya Malyavkina from CloudLinux will vouch for us.
>
>
> --
> Jonathan Wright
> AlmaLinux Foundation
> Mattermost: chat <https://chat.almalinux.org/almalinux/messages/@jonathan>
>


--=20
Best regards,
Darya Malyavkina
Director of Release Engineering at CloudLinux

CloudLinux.com <http://cloudlinux.com/>  |  KernelCare.com
<http://kernelcare.com/>  |  Imunify360 <http://imunify360.com/>  |
AlmaLinux <https://almalinux.org/>

helpdesk.cloudlinux.com: 24/7 Free, exceptionally good support
Follow twitter.com/CloudLinuxOS for technical updates

--000000000000f5c889060c689016--
