Received: (qmail 11817 invoked by uid 550); 29 Dec 2025 18:31:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20463 invoked from network); 29 Dec 2025 18:17:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767032221; x=1767637021; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jwpqX3FGJK76EOxQaN1wGbfsI2J0cqs9jqrhUih1K18=;
        b=K53YkQDOwjKInQW9sDbr1nZKA8tjuPVz26eTzt69iq86E9e59T4rPKr17gOzeTLCSb
         RtDpoWAKs7OcDgzbPcLgB8dj3Oa5ZIWg3brd4ZZ/P2QjTaGpNtEXdFRL9FIkMakVLOQj
         I9Q1O+llHz5TW2QgpUjA4PvgRrWGKoe7vJetYm6hG89Nj9KYD3c7v3C2zHAIR3oomjSY
         qpkLQcYOYvIY7PK+sNy+aqsFupbc635fKoSnVao+zd0P1XCdyj3S+fWvoOxKvBzxlmzt
         Vufp8ITtZjWXrPN5tr2H8O5xo/4gWtqLH9kBjrAC5k9H3NJkaYnTs04NNmSlxWREYInD
         mXfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767032221; x=1767637021;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jwpqX3FGJK76EOxQaN1wGbfsI2J0cqs9jqrhUih1K18=;
        b=rv5myoCEsdF0jy0SWdvrpdZNkMpOAa//6WWfAaxofLqy26iq12+CmBYiZ45Y4H7mIZ
         SPH3z0wJd8D9vBGxZ6MHMMtPALqrUs8tYJrwcHAXMQNxS9J8YIy3Lr9p0X+asdetSjgK
         s9EB4f/HuQ47y30RxwXShZcEN5TcZgIrMCFmhdnAQhbh9eqdSjZKHyOKMLnYDN0JJtla
         VxbGjfqSZjmDHbSjcYVWkwQG/bQjGPOjHxKdLY9zs3ufpjzB1WF0AdIf6fjoda69KTQr
         DTUp2Cg2tzCy/UxfIiQyGOFSIORJ1LHK642VIr6D5h1MirWnXD9PO0j3hX0yFvusuqjO
         UTUA==
X-Gm-Message-State: AOJu0YwwiQOPlFoYaGd+IoAvpSFo2kqIolrzyTnwjL9AFFPhWzlqnHNj
	VJWrNFk8UE1NTBCVtDgJlV6O8cXvDqlyUO0x2a7yz4OS0BwSTJScWKUTARvz+uSwdBZzimunpZP
	rpCPN64f7ab4Wo38zdckIFGI7IqOLoQNbPJJL
X-Gm-Gg: AY/fxX6S8vAXQV7caqZVy8UChzjsDKXAhKSmdiaNhf4nAsdLVyMT4lNybJdcrI0sQPl
	ujPl+l9r7Qz5OkrHzl01QzoUaNl7BdbzEJBo4AzsPuxGKNry1XknOrDhDKysxTLay9lx+DmY1qP
	aTufDMcLs49vsAC3mrJipt4bazyiiCpPltDLh9/07swdUPz6HUhY+wmiWEkiSSYsXvQvpf1GhPJ
	QTQeBsf7bQgdIht4MTJlqnoobq/ffrCqrJiOKQD0T500M72FtGMFAPhNVznUH4lclqXQF45RLYH
	0qe09yY=
X-Google-Smtp-Source: AGHT+IEpL87V8NACYMojJZCJkmQpbCiWoNPhw50SGZkuy33M8co6BsFXBsoCkAKcBLL3UvsZS1+8PX4d5tsYjDgFnCM=
X-Received: by 2002:ac8:7f81:0:b0:4f3:4b53:a917 with SMTP id
 d75a77b69052e-4f35f43a9damr511553831cf.22.1767032220697; Mon, 29 Dec 2025
 10:17:00 -0800 (PST)
MIME-Version: 1.0
References: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
 <974a2abd-7449-4cf7-bbe6-e329aa4af59e@gmail.com> <SN7PR14MB73782CD825FF151648AB323596BFA@SN7PR14MB7378.namprd14.prod.outlook.com>
In-Reply-To: <SN7PR14MB73782CD825FF151648AB323596BFA@SN7PR14MB7378.namprd14.prod.outlook.com>
From: Greg Dahlman <dahlman@gmail.com>
Date: Mon, 29 Dec 2025 11:16:48 -0700
X-Gm-Features: AQt7F2ovTEytbgKCL-aSo-FmAGvaZolXtPM7PU0c2UZdyCPrjt3SXcwWe1v23yo
Message-ID: <CAM=PXV705V7Su6kwyKAipXtAqi+DU644Qxv_4LsqC=FVG5bg0Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000d2474206471b3fa7"
Subject: Re: [oss-security] Systemd vsock sshd

--000000000000d2474206471b3fa7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you Benjamin,

Yes, the kernel boot string is the only way to currently mitigate the
listener. The L4 loopback issue, which is a trivial extension, can only be
mitigated by patching the kernel the way chromeOS did or reliably filtering
af address family 40 (af_vsock) at the CRI, bubblewrap, etc=E2=80=A6 level =
with
seccomp.

The current state of apparmor and SElinux will make filtering at that level
opportunistic at best. It should also be noted that adding the kernel boot
string will be a breaking change for users who expect the hypervisor to
have ssh access to guests for administrative purposes.  The trusted
hypervisor, untrusted guest assumptions that vsock was based on are an
important use case.

For the listener specifically, a fix that would support both use cases
would require modifying `systemd/systemd/src/ssh-generator/ssh-generator.c
<https://github.com/systemd/systemd/blob/f76f0f99354b0485e3e13c2608bc26f969=
312687/src/ssh-generator/ssh-generator.c>`
to allow control of the socket-activated sshd listener through a
configuration file.

The ssh-generator is just emitting typical systemd socket activation unit
files, and I think the path that would be most productive if the
relevant stakeholders were willing or if the distro's were willing to to
patch the upstream source.

As af_vsock is a convenient socket() like interface, there are still some
use cases/projects that will break, but the above is the path forward that
seems to minimise the impact.

Greg

On Mon, Dec 29, 2025 at 10:17=E2=80=AFAM Benjamin McMahon <
benjamin.mcmahon@webpros.com> wrote:

> To prevent the vsock-based sshd from auto-spawning, see
> https://www.freedesktop.org/software/systemd/man/devel/systemd-ssh-genera=
tor.html
>
> In short: `systemd.ssh_auto=3Dno` is the kernel-command-line setting which
> persists after reboots.
>
> ~Benjamin
>
> ________________________________________
> From: Jacob Bachmeyer <jcb62281@gmail.com>
> Sent: Sunday, December 28, 2025 10:11 PM
> To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>;
> Greg Dahlman <dahlman@gmail.com>
> Subject: Re: [oss-security] Systemd vsock sshd
>
>
> [You don't often get email from jcb62281@gmail.com. Learn why this is
> important at https://aka.ms/LearnAboutSenderIdentification ]
>
> On 12/27/25 21:46, Greg Dahlman wrote:
> > [...]
> >
> >   **Systemd v256 change** - When the *openssh-server* package is
> >   installed on a VM with vsock support, systemd now automatically
> >   starts an *sshd* instance that listens on the **af_vsock** socket in
> >   the **global network namespace** without any manual configuration.
>
> Obvious question:  what manual configuration is required to kill that
> listener?
>
>
> -- Jacob
>
>
>
>

--000000000000d2474206471b3fa7--
