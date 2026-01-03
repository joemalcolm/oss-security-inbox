Received: (qmail 23704 invoked by uid 550); 3 Jan 2026 01:31:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18074 invoked from network); 3 Jan 2026 00:48:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767401292; x=1768006092; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f4kkSX0Z8f5U0yZte4g0UrXDte65ymgl/TQuTqFynPg=;
        b=bZkBjdzXnPn0xAImXDDJNCqJwmT+Rzh03jRou6rcjmI7atjYgiXkcefZT/f7e6SY/X
         +/aRNKEv/TryuFTAFe5veQ5hRbu9gqwPsw3x06LoTP4nXARcpkhRDq71u2Qul5ukIAZP
         VGj71/1UPa9TErkMOYIyJYfYQ8JE0muFnW+bR2Uh0kKLjPoU3zNs1pDBGtfFb2ooVjbU
         Yg0dEFTkZO9DqAgPmuMoBf5XXy67nB0fGkvIrnhiS3wCX0tYwuKur620Eu8xjYWW4gCR
         N6J7+VR1rpc/yv7IugltqZpAWlEIQIgJmZSdv6wPbCzNQpYS8cN3VRwjytG6KDUzQ0aR
         A+qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767401292; x=1768006092;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f4kkSX0Z8f5U0yZte4g0UrXDte65ymgl/TQuTqFynPg=;
        b=FhKnyGlHFhYXOnlmweyo5F5PxVe31f5cGlKbkT1n4Plr4Ft4XD2fQBRm+zayhKW3//
         tuW3xAnShWgCzYC/nduJ2qjR9aFngJmfi4cW0QwirkSR/CfQJT+ohl7CdjH9sq7NTarc
         kQhRBMZOSudFOlvxFEtWt65whkebXDgXaDs0NtufORj6gk8AJVZXrTHzqhuQxL9wcFgc
         0+OVns3Tt3WjWH6gQh9hNMgLHJnefuWGwur+esBKNT8a3oRJi41uvFxPCjOOCeT8IG/1
         TcSlqO8/PfFasYGzufXXsXkSnRefqj1SdmrCTe5DrwulDMZuahbb3R6xYI4bxMrDLcPa
         +liw==
X-Gm-Message-State: AOJu0Ywv9F4oxj1cmvgu/7po+4rQubm4KGVvsXBWdROpCTT3c5mM1/rL
	WIQuI+ph05lSB+ZYzT2P8RVUiY/T54E/gCRP+TjPOKyrOpnnT7V6WzuaXmmQTMQoeeBducXvbB+
	fH64Fj3NREHEJMp0jG7E+8dgFl0dCsGb8sYzs
X-Gm-Gg: AY/fxX5/DfrrWv8Idp7E5HN0hwPOZyQJjZfgtrZ8mWoQ15+yJHgQZtQGZMbMnXBZ5uh
	zghLE3GH/WlQaaWxjI6PeWys9z5gI8PK0mOfpaCiatOmXZK8m9MLwAfRN0+yyuV9c1cIIqFcGBh
	h1WETRINDn1Rup128CeTQCczurv1XVF9bXJFRgrnWsPyfmk+9BrNAXn6yFsRf2BIxAU/iS72vgk
	/n6vX0FGOJea1Vu73T9eZWPPrddDN4n+vbK7GtXRD3DvB5XsTILexbJ3+c0mINsrwxKHDR+
X-Google-Smtp-Source: AGHT+IHR0hyhLPdYeVvjboYBwAeaa3HtG5rBliHsX2VlqNv037inRzx/YS/yF1cV5b5gzTRzG+gPk6P4YKi8KTvQYyA=
X-Received: by 2002:ac8:5d04:0:b0:4ed:b570:2d4c with SMTP id
 d75a77b69052e-4f4abd7acadmr629489061cf.43.1767401291412; Fri, 02 Jan 2026
 16:48:11 -0800 (PST)
MIME-Version: 1.0
References: <d2c0f3cb-d66c-43ec-9b61-05802df1a048@posteo.org>
 <bd7c5319-8048-4dcf-b679-5e0355551650@posteo.org> <CAM=PXV5UD8cajTnkcemP+cymphiLe7nRQYBBGAimz+S7svYVxA@mail.gmail.com>
 <b9f2a1c5-08d6-4c68-a50d-b7088f74fef0@posteo.org>
In-Reply-To: <b9f2a1c5-08d6-4c68-a50d-b7088f74fef0@posteo.org>
From: Greg Dahlman <dahlman@gmail.com>
Date: Fri, 2 Jan 2026 17:48:00 -0700
X-Gm-Features: AQt7F2rztgCgid6-pl-ZdbIOF982EEUGBnvZZ6zQcIkqKspxLTTzBflYiLK-cHE
Message-ID: <CAM=PXV5xJyqj0wOPpHb+95_QgGVg6zejHfLgcjtY=MrdcAHs7g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000002677b00647712e3b"
Subject: Re: [oss-security] Systemd vsock sshd

--0000000000002677b00647712e3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply, I have been busy trying to figure out what breaks
with apparmor and other options.

Obviously runc is similar to the pain points of dbus, where it is call
anywhere with no ability to set defaults, but I think a combo of the below
works pretty well. Container runtimes should still set reasonable defaults
in the long run IMHO, but a combo of the below seems to work, but it will
probably break kata containers etc...  You can launch a vsock C2 container
with runc as nobody with no issue and just a few env vars as an example.

I am not sure if there are any hypervisor tools that are in
flatpack/snap/bwrap etc... but pretty much everything that is given userns
and unlabeled may need a apparmor.d/local file for users actually using
vsock for critical use cases.

This qualsys post from earlier this year applies:
https://seclists.org/oss-sec/2025/q1/253

I am still trying to do more testing, but
crun/runc/podman/buildah/chrome/chromium/firefox/etc. don't seem to break
with a container only workload I have tested with the apparmor addition.
Unfortunately putting it in globals would break things.



Kernel boot string
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Disables systemd sshd vsock listener, will not protect the L4 bridge.

The official way to disable vsock sshd is through a kernel command line
parameters or system credentials logic. [systemd-ssh-generator]

   systemd.ssh_auto=3Dno


Mask systemd socket
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This will disable the systemd sshd vsock listener, but will not protect
the L4 bridge.

   sudo systemctl mask sshd-vsock.socket

Note:

  If another unit **explicitly** wants "sshd-vsock.socket" it may
  be started.


AppArmor
=3D=3D=3D=3D=3D=3D=3D=3D

This will remove access to the L4 bridge, which will also remove
access to the systemd sshd vsock listener for targeted binaries.

Add the following to "/etc/apparmor.d/local/<filename>" for each
high risk command.

   audit deny network vsock,


SElinux
=3D=3D=3D=3D=3D=3D=3D

TODO

Seccomp
=3D=3D=3D=3D=3D=3D=3D

CRIs and sandbox commands should probably follow the methods
containerd used when containerd blocked vsock [7442]

[7442] https://github.com/containerd/containerd/issues/7442

On Fri, Jan 2, 2026 at 4:14=E2=80=AFPM <wish42offcl98@posteo.org> wrote:

> I do not use Fedora, but I checked the update repo for f42.
> Neither openssh =C2=B9, nor systemd =C2=B2 have been updated for Fedora 4=
2 in the
> last few weeks. Thus I have to guess that your method to setup/test the
> VM was different.
> Just in case, I have masked the vsock socket on all of my instances (no
> VMs though) and I will check on occasions if masking disappears.
>
> Nonetheless, I dug deeper into systemd and checked their source code =C2=
=B3.
> systemd-vmspawn uses another service:
> systemd.unit-dropin.sshd-vsock@.service =E2=81=B4
> And there is also sshd-vsock@.service =E2=81=B5 which might require anoth=
er
> masking - same for sshd-unix-local@.service =E2=81=B6.
>
> Since I do not use VMs, it was rather an addition for this list, thus I
> won't dig deeper for now.
> busctl is unknown to me (yet).
> The "RestrictAddressFamilies" option for services might be another idea
> to restrict sshd - but I don't know if it affects the unix-socket/vsock
> sockets generated by systemd - and whether this also influences access
> to local sockets (e.g. to control systemd itself).
>
> I haven't understood the L4 bridge issue completely yet, so I would need
> to read more into it and test it.
> My guess on the L4 bridge problem:
> - Exposed vsocks are in global namespace.
> - VMs with enabled vsock feature (on hypervisor and inside VM) expose
> their services.
> - Containers (with unmitigated container runtimes) run on the hypervisor
> (not within VMs) are able to access the vsocks of VMs.
> That's a short description of my current understanding to it.
>
>
>
> 1 https://bodhi.fedoraproject.org/updates/FEDORA-2025-ad76584c00
> 2 https://bodhi.fedoraproject.org/updates/FEDORA-2025-61132a053f
> 3 https://github.com/systemd/systemd/
> 4
>
> https://github.com/systemd/systemd/blob/v259-stable/src/vmspawn/vmspawn.c=
#L2654
> 5
>
> https://github.com/systemd/systemd/blob/v259-stable/src/ssh-generator/ssh=
-generator.c#L228
> 6
>
> https://github.com/systemd/systemd/blob/v259-stable/src/ssh-generator/ssh=
-generator.c#L265
>
>
> On 12/30/25 21:44, Greg Dahlman wrote:
> > Thanks for the reply Alex,
> >
> > I didn't include that option because I ran into an issue that I couldn't
> > find the root cause for. Specifically on Fedora, a `dnf upgrade` result=
ed
> > in the mask disappearing.  I could find some complaints with Fedora
> version
> > upgrades, but couldn't find anything on package upgrade.
> >
> > As I don't have access to the RedHat support portal I decided to exclude
> it
> > out of caution.
> >
> > It looked like there was nothing in /usr/lib/systemd/system-preset for
> > sshd-vsock.socket that I found, and those should respect the mask for
> > sshd-vsock.socket and wouldn't remove the
> >   /etc/systemd/system/sshd-vsock.socket symlink as I understand it.
> >
> > I think that because it doesn't show up in `busctl --activatable`, and =
no
> > packages I can find "Wants" sshd-vsock.socket explicitly that would
> > probably work.
> >
> > I just tried a fresh install of Fedora Linux 42 workstation and didn't
> > experience the unintended unmasking with a dnf upgrade. That was
> reliable a
> > few weeks ago. Maybe I just was unlucky with a package that was fixed?
> >
> > Either way I think it is an option for people who use configuration
> > management tools that can periodically check sshd-vsock.socket is still
> > disabled.
> >
> > Also for normal *systemd* services that need isolation from the vsock
> > bridge you can use:
> >
> > RestrictAddressFamilies=3Dnone # disable all af families
> > RestrictAddressFamilies=3DAF_INET # only AF_INET
> > RestrictAddressFamilies=3D~AF_VSOCK # not AF_VSOCK
> >
> >
> > The L4 bridge problem will be harder for projects that use CRI's that a=
re
> > not containerd like the k8s/podman/crun/runc.
> >
> > If anyone on here is involved with them, or sandboxing tools
> > like bubblewrap etc... Filtering address family 40 will still be requir=
ed
> > by default to have any real intra-container/pod/process network isolati=
on
> > on a node.
> >
> > Thanks,
> >
> > Greg
> >
> > On Tue, Dec 30, 2025 at 12:12=E2=80=AFPM <wish42offcl98@posteo.org> wro=
te:
> >
> >> I have searched for that - instead of blacklisting the vsock module, I
> >> did myself two measures:
> >> - systemctl mask --now sshd-unix-local.socket
> >> to kill and mask the sshd unix socket created by that generator,
> >> - systemctl mask sshd-vsock.socket
> >> to mask the sshd vsock created by that generator (use --now if the
> >> socket has started or use systemctl stop... ).
> >>
> >> Though, vsock untested but I found that source mentioning that socket.
> >> https://linux-audit.com/system-administration/commands/systemd-analyze/
> >> Masking the sockets should stop them from starting again.
> >>
> >> The vsock kernel module should not be blacklisted if some hypervisor
> >> features are required:
> >> https://libvirt.org/ssh-proxy.html
> >> https://wiki.qemu.org/Features/VirtioVsock
> >>
> >> Greetings
> >> Alex
> >>
> >>
> >> On 12/29/25 05:11, Jacob Bachmeyer wrote:
> >>> On 12/27/25 21:46, Greg Dahlman wrote:
> >>>> [...]
> >>>>
> >>>>    **Systemd v256 change** - When the *openssh-server* package is
> >>>>    installed on a VM with vsock support, systemd now automatically
> >>>>    starts an *sshd* instance that listens on the **af_vsock** socket
> in
> >>>>    the **global network namespace** without any manual configuration.
> >>>
> >>> Obvious question:  what manual configuration is required to kill that
> >>> listener?
> >>>
> >>>
> >>> -- Jacob
> >>
> >>
> >
>
>

--0000000000002677b00647712e3b--
