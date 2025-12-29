Received: (qmail 15693 invoked by uid 550); 29 Dec 2025 18:44:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10110 invoked from network); 29 Dec 2025 18:43:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767033812; x=1767638612; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xEwzyvFWz1mNBhTGnfw6IlvgdDBr01ch49lEfU7ACAw=;
        b=AAdsUSn0ftkQQcmf9JEfbxbUePBWX0f/Gz1lHyW+zoyNqVKr5Yqlx0EJDe6beCDoTW
         YFYsT1x0XywEtWogUDYttMTET3hd/5fvSh7CE8Y2GL5Hblhy1r8Uzny2BaOgPFkyNg3+
         Yc20wCzNURPkXGIJo/JsQ/awjSi9maTOkgAKv4sePWKpSg6lFvdAlo/sqNfNAT8+K+4i
         6oiKNV02IispCTJHD/yB8BgJIzwfcqgUob2Ka0ZjmUvzwO+yJvkmc2tUIyIliY7aOiPA
         Y2YntGCTDzm7RoWj2/kx538G18Ql2eBwlQEbAoDLJ2Gdcsvjb8wb+QfYCSY2VuoLSIuJ
         V7KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767033812; x=1767638612;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xEwzyvFWz1mNBhTGnfw6IlvgdDBr01ch49lEfU7ACAw=;
        b=lzN0mZH7L8+XpHHr5Ykdkhvi+hqQmEpXJ8L7PToCkMotZOr7L2vYMFjSRV64JhwatH
         Roa6zTuJ+NTnDXkMBQOsy18S4AyCt+3ZJLtmIKubvFTQL4e5ycNbnoVOB/rEh2re9Yd7
         pgYOX4R5oM4Yp2EewFEbl1Grybf7Omz+5TY1+1e0WUmCsh0MEh0vhjRhd/oorujD3Yau
         aktkytsZl5r6WmLS7YoR6et3Ipw0piItbfA/YB51iVsIy5JGoaHHwzCmJkTtbj7tLnqj
         Emyunly5fh3bu2jR7aClcT2ArYNCXz5Pj3/21OxnF2TPj0QMxxtb5bxk5E0a6NnVMIWZ
         jkLA==
X-Gm-Message-State: AOJu0Yzv3EpD6tU4rM2MUj6Nu340ciouv8u/H4fylRAOomsLRvcMnKg6
	1DPzM2DfgVRVmjRr+uLhyY5VM0x9C4iNdHnYP0uKUNXDXTiTzOOxB0NLJRHoIEbJbv4OEuFfZRi
	60C0Q5ODBnBoLjBSq6tsbzTYSCkXYXhg+zas+
X-Gm-Gg: AY/fxX7YvrpDw2/9bz3ndq99XSoNRnLq+duxmITt0MYgiX1TOGR5nT6gXlid3KKb/wt
	j+4jDnKglz+cSw30ixQQ6G7+i+xMg87BI8saiitpn9kUWI1wa7hXSMA99pE+0me84sfC1E3IUPa
	lF8dbY2PGpL/BB7TD4LWvQrNq3EiT7YFMMp6iTXM7Z61hGTQ3w4LyUQAeBq1ALC+UFGDsqzmHsv
	dgz3B+Rvo16nz/tVMuEc5scvHqu7zJ2gp7fcYAtWrlai/MQ+a5UGexQZ6ureJ0rSMq+/6h/uRVQ
	30CkdmZv3s/thlXJ
X-Google-Smtp-Source: AGHT+IE/9u0dOPSfq2/OUD4QT9WcqJ6/3yKTTu4P7JQS4Hj7B4rD3pVcvvaDXFGfRmNyVCu4C9HfbpgOrw+Kbghkmeo=
X-Received: by 2002:a5d:64e6:0:b0:432:851d:1aeb with SMTP id
 ffacd0b85a97d-432851d1b36mr12777603f8f.61.1767033812014; Mon, 29 Dec 2025
 10:43:32 -0800 (PST)
MIME-Version: 1.0
References: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
 <974a2abd-7449-4cf7-bbe6-e329aa4af59e@gmail.com> <SN7PR14MB73782CD825FF151648AB323596BFA@SN7PR14MB7378.namprd14.prod.outlook.com>
 <CAM=PXV705V7Su6kwyKAipXtAqi+DU644Qxv_4LsqC=FVG5bg0Q@mail.gmail.com>
In-Reply-To: <CAM=PXV705V7Su6kwyKAipXtAqi+DU644Qxv_4LsqC=FVG5bg0Q@mail.gmail.com>
From: Pat Gunn <pgunn01@gmail.com>
Date: Mon, 29 Dec 2025 13:43:20 -0500
X-Gm-Features: AQt7F2pqJWdhi1hmBo8J4OeTABPVFlZVelPRggyiTFSNslepYRYujilU0Ecy50o
Message-ID: <CADz+4x-t+9rW+OSef9A1rf4wV6zwxZQLnSk_NsxYm4ONv3HH8w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000abdcd906471b9edc"
Subject: Re: [oss-security] Systemd vsock sshd

--000000000000abdcd906471b9edc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Would it be productive to reach out to the systemd maintainers to ask them
to have their software not do this and release a patch? This probably would
break some software that depends on the bad behaviour, but the fallout from
managing this may encourage them to think a little bit about security and
good software design in the future (tempted to add several paragraphs of
snark to this, but will omit).

On Mon, 29 Dec 2025 at 13:33, Greg Dahlman <dahlman@gmail.com> wrote:

> Thank you Benjamin,
>
> Yes, the kernel boot string is the only way to currently mitigate the
> listener. The L4 loopback issue, which is a trivial extension, can only be
> mitigated by patching the kernel the way chromeOS did or reliably filteri=
ng
> af address family 40 (af_vsock) at the CRI, bubblewrap, etc=E2=80=A6 leve=
l with
> seccomp.
>
> The current state of apparmor and SElinux will make filtering at that lev=
el
> opportunistic at best. It should also be noted that adding the kernel boot
> string will be a breaking change for users who expect the hypervisor to
> have ssh access to guests for administrative purposes.  The trusted
> hypervisor, untrusted guest assumptions that vsock was based on are an
> important use case.
>
> For the listener specifically, a fix that would support both use cases
> would require modifying `systemd/systemd/src/ssh-generator/ssh-generator.c
> <
> https://github.com/systemd/systemd/blob/f76f0f99354b0485e3e13c2608bc26f96=
9312687/src/ssh-generator/ssh-generator.c
> >`
> to allow control of the socket-activated sshd listener through a
> configuration file.
>
> The ssh-generator is just emitting typical systemd socket activation unit
> files, and I think the path that would be most productive if the
> relevant stakeholders were willing or if the distro's were willing to to
> patch the upstream source.
>
> As af_vsock is a convenient socket() like interface, there are still some
> use cases/projects that will break, but the above is the path forward that
> seems to minimise the impact.
>
> Greg
>
> On Mon, Dec 29, 2025 at 10:17=E2=80=AFAM Benjamin McMahon <
> benjamin.mcmahon@webpros.com> wrote:
>
> > To prevent the vsock-based sshd from auto-spawning, see
> >
> https://www.freedesktop.org/software/systemd/man/devel/systemd-ssh-genera=
tor.html
> >
> > In short: `systemd.ssh_auto=3Dno` is the kernel-command-line setting wh=
ich
> > persists after reboots.
> >
> > ~Benjamin
> >
> > ________________________________________
> > From: Jacob Bachmeyer <jcb62281@gmail.com>
> > Sent: Sunday, December 28, 2025 10:11 PM
> > To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>;
> > Greg Dahlman <dahlman@gmail.com>
> > Subject: Re: [oss-security] Systemd vsock sshd
> >
> >
> > [You don't often get email from jcb62281@gmail.com. Learn why this is
> > important at https://aka.ms/LearnAboutSenderIdentification ]
> >
> > On 12/27/25 21:46, Greg Dahlman wrote:
> > > [...]
> > >
> > >   **Systemd v256 change** - When the *openssh-server* package is
> > >   installed on a VM with vsock support, systemd now automatically
> > >   starts an *sshd* instance that listens on the **af_vsock** socket in
> > >   the **global network namespace** without any manual configuration.
> >
> > Obvious question:  what manual configuration is required to kill that
> > listener?
> >
> >
> > -- Jacob
> >
> >
> >
> >
>

--000000000000abdcd906471b9edc--
