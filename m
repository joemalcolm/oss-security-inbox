Received: (qmail 5395 invoked by uid 550); 29 Dec 2025 20:00:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29897 invoked from network); 29 Dec 2025 19:54:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767038036; x=1767642836; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LuAwkxI2Vx/8HjkLdSwtozN6M8GuqeOE/0UkYTzLx7k=;
        b=R8Bx7GDrLbSqPwjnshF7dB/1sYiq/VvRWOvuYFzz+hsG/izmOSSMqgs8fRMc/TjQl2
         jXd45CENAcPGCcbECxcf9uBZTAA49hf5WtcQf0NIOBUmhxeK+0p99hrRw/rD0rSyaZcl
         N7lvwdqns+BaO6+Yyg6p8SyFM1MCFEMU+9kAxJq8C8pR1zG8PzJ4s2CXqO71qVWvEEcM
         qlq8Z82PFjS620PXGTVVLCcujkQBvcmoJrr89+PyIHLGIWk7z1IoerzCGdV5ifJjE+UK
         c829WItdCvxcSz2HsOyC14/+szIrhgQes49t9DKC4TPILO5G4cwMpe7N+k84O29SRUTd
         SW4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767038036; x=1767642836;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LuAwkxI2Vx/8HjkLdSwtozN6M8GuqeOE/0UkYTzLx7k=;
        b=G9/flbcINrf8lXpbCWqgvvIIIhyblDxoEit82Tym8tEtG0syOoYGSCTus/6G8qOU0l
         blr78TGJVyzWkNMZxHoGolYut3snKo8orbjGr5JUFTYW+1R6ltXUndgV63w+Gj4r1NFr
         2X/g2BI8VBbTEtosxRo5kZQCAwgZPykg8RXIrrT2esOqICi1Lw6cqtDXs4X+Hngi7EQT
         yAZ883E13+u+n+y+fKV0m8N2B0DzL9OdJ3+cSpuDNIUAGecc+x0kpi6UNsc0jWrwlzbC
         HQ/0zIHpghw5HyuPjbyb+rEZ1+/nPY9NUAgEWK/Vpz5YZuBNGZd2D18GNqm2+4UuWTk8
         Ql9g==
X-Gm-Message-State: AOJu0YxMupKdvDDCPubvFGvcaRQKxEf7KKhR8R/6huzhVs5i74PnGx4R
	Z8Q6vXbMkz4p2KPEWu+dqiDnBZj4S7lirwIZRsYJhnevOXnvolYIvOekYcHkBn+PPvYszIJcake
	uHTCUYZbwykLFTYRCqIghMgjyYDtkfshEfA==
X-Gm-Gg: AY/fxX5EOSYktJIgAdkBycpCdHoddHBkwUU9U3fKs8LUvdbcAAS5lsoD6ayrFSgMIrD
	aZazgyz18Vrt9M0My7KRJ7aDU/lVkgEyWnb/7Dmm8sY/JSoWN7K9w5/Rx5UcwDmgR9D8rnRpY0m
	bgyVpmK5o2Y8s2ky7cnYa2iA4FbMxQ8FEaDwD/AhFkvcQRCwTzHMfrMdDgzQ7pndvF8dWJYfT9B
	OOR7NBInElLiRKG4QuKPurB+tbQ5gkUQx5GAoKgdbreVJAXFqTfRuRt/8Yc8EW/wBarhiGxsIif
	4NIvmpM=
X-Google-Smtp-Source: AGHT+IHUn1FjeRNHuRJ2cNLtQ/8y/+qmjy8/Akn3NnHwG1uJ66LZ0Vw4JNgKbEUh0MRN16XnrbXpWUwfHx6iaeJiEU4=
X-Received: by 2002:a05:622a:1c11:b0:4f1:ac12:b01c with SMTP id
 d75a77b69052e-4f4abca8917mr491145161cf.3.1767038036345; Mon, 29 Dec 2025
 11:53:56 -0800 (PST)
MIME-Version: 1.0
References: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
 <974a2abd-7449-4cf7-bbe6-e329aa4af59e@gmail.com> <SN7PR14MB73782CD825FF151648AB323596BFA@SN7PR14MB7378.namprd14.prod.outlook.com>
 <CAM=PXV705V7Su6kwyKAipXtAqi+DU644Qxv_4LsqC=FVG5bg0Q@mail.gmail.com> <CADz+4x-t+9rW+OSef9A1rf4wV6zwxZQLnSk_NsxYm4ONv3HH8w@mail.gmail.com>
In-Reply-To: <CADz+4x-t+9rW+OSef9A1rf4wV6zwxZQLnSk_NsxYm4ONv3HH8w@mail.gmail.com>
From: Greg Dahlman <dahlman@gmail.com>
Date: Mon, 29 Dec 2025 12:53:45 -0700
X-Gm-Features: AQt7F2pCkLR6dsbuFqv5BuFJ629bdhMj-vQwa7bW2Fmq8x--FAvjVgCNwqZfGZU
Message-ID: <CAM=PXV4yADSZ2udrWhiWNocroCj4ceefd2V5ANOUYYcTF_+SHA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007607f806471c9a1e"
Subject: Re: [oss-security] Systemd vsock sshd

--0000000000007607f806471c9a1e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I did reach out to the systemd team, while I was working with the kernel
security team and I encouraged others to do so if they think it will be
productive.

There are sensitivities and frustrations that span all groups that make
that conversation difficult, but I think someone with an established trust
with the project could make forward progress.

That said, disabling this bridge will impact systemd's attempt to
enable zero config for VMs. The container ecosystem as a whole hasn't
exactly demonstrated that they will reciprocate. In a perfect world the
container runtimes would protect their use case from the remainder of the
shared kernel by default, unfortunately that is not what we have today.

I think if people with existing relationships reached out to the systemd
team there could be a discussion on this specific issue, but it is
completely understandable that when one use case appears to block your
projects use case repeatedly, your willingness to make sacrifices will
diminish over time.

I would just ask that people who reach out to the team take the above into
account.

Greg

On Mon, Dec 29, 2025 at 11:44=E2=80=AFAM Pat Gunn <pgunn01@gmail.com> wrote:

> Would it be productive to reach out to the systemd maintainers to ask them
> to have their software not do this and release a patch? This probably wou=
ld
> break some software that depends on the bad behaviour, but the fallout fr=
om
> managing this may encourage them to think a little bit about security and
> good software design in the future (tempted to add several paragraphs of
> snark to this, but will omit).
>
> On Mon, 29 Dec 2025 at 13:33, Greg Dahlman <dahlman@gmail.com> wrote:
>
> > Thank you Benjamin,
> >
> > Yes, the kernel boot string is the only way to currently mitigate the
> > listener. The L4 loopback issue, which is a trivial extension, can only
> be
> > mitigated by patching the kernel the way chromeOS did or reliably
> filtering
> > af address family 40 (af_vsock) at the CRI, bubblewrap, etc=E2=80=A6 le=
vel with
> > seccomp.
> >
> > The current state of apparmor and SElinux will make filtering at that
> level
> > opportunistic at best. It should also be noted that adding the kernel
> boot
> > string will be a breaking change for users who expect the hypervisor to
> > have ssh access to guests for administrative purposes.  The trusted
> > hypervisor, untrusted guest assumptions that vsock was based on are an
> > important use case.
> >
> > For the listener specifically, a fix that would support both use cases
> > would require modifying
> `systemd/systemd/src/ssh-generator/ssh-generator.c
> > <
> >
> https://github.com/systemd/systemd/blob/f76f0f99354b0485e3e13c2608bc26f96=
9312687/src/ssh-generator/ssh-generator.c
> > >`
> > to allow control of the socket-activated sshd listener through a
> > configuration file.
> >
> > The ssh-generator is just emitting typical systemd socket activation un=
it
> > files, and I think the path that would be most productive if the
> > relevant stakeholders were willing or if the distro's were willing to to
> > patch the upstream source.
> >
> > As af_vsock is a convenient socket() like interface, there are still so=
me
> > use cases/projects that will break, but the above is the path forward
> that
> > seems to minimise the impact.
> >
> > Greg
> >
> > On Mon, Dec 29, 2025 at 10:17=E2=80=AFAM Benjamin McMahon <
> > benjamin.mcmahon@webpros.com> wrote:
> >
> > > To prevent the vsock-based sshd from auto-spawning, see
> > >
> >
> https://www.freedesktop.org/software/systemd/man/devel/systemd-ssh-genera=
tor.html
> > >
> > > In short: `systemd.ssh_auto=3Dno` is the kernel-command-line setting
> which
> > > persists after reboots.
> > >
> > > ~Benjamin
> > >
> > > ________________________________________
> > > From: Jacob Bachmeyer <jcb62281@gmail.com>
> > > Sent: Sunday, December 28, 2025 10:11 PM
> > > To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>;
> > > Greg Dahlman <dahlman@gmail.com>
> > > Subject: Re: [oss-security] Systemd vsock sshd
> > >
> > >
> > > [You don't often get email from jcb62281@gmail.com. Learn why this is
> > > important at https://aka.ms/LearnAboutSenderIdentification ]
> > >
> > > On 12/27/25 21:46, Greg Dahlman wrote:
> > > > [...]
> > > >
> > > >   **Systemd v256 change** - When the *openssh-server* package is
> > > >   installed on a VM with vsock support, systemd now automatically
> > > >   starts an *sshd* instance that listens on the **af_vsock** socket
> in
> > > >   the **global network namespace** without any manual configuration.
> > >
> > > Obvious question:  what manual configuration is required to kill that
> > > listener?
> > >
> > >
> > > -- Jacob
> > >
> > >
> > >
> > >
> >
>

--0000000000007607f806471c9a1e--
