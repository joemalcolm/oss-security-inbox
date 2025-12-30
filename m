Received: (qmail 7476 invoked by uid 550); 30 Dec 2025 22:05:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11337 invoked from network); 30 Dec 2025 20:45:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767127494; x=1767732294; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3jOzFA/lka8mk55yor44sakeh2xJsgz+JglDPlqkXew=;
        b=nUJ3Z3gg4p1eCCr1FHc3FxichB5BuanlNlrttfOQHsb1z0ZxYLvqB2+HstSVTKjxN2
         LqH6CvRmLzWS+EJmUP0bZ5wEnQeL7GJ2UPzulQGSlZK4xbE135m4AYoZTf4jknIPj7is
         rupWtO6iSdsw+MuyvJy5DqkW7MzHXgBKtI9JeEupA3RwIz7gaM1nRJXV94yuOrV5r5s2
         o9R5ScdRjGAibevd7KtxRjQONKDJVVLQZKzAo/FlJJdI71i3hgWYKoHdlteNOOYVDLFF
         RDNIJyib2TQs49A4rQDEgCs4Guw81hpzCCDZbtZuxa7q7N6r2hRN2DH4M8FJXb1mBgwj
         yz5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767127494; x=1767732294;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3jOzFA/lka8mk55yor44sakeh2xJsgz+JglDPlqkXew=;
        b=OJFC8Yk+l7AKLKXIXV8Aq/fWs4uQBsK3iQuavLYy4LG1N9zzwR6zfb/7kv0Gjy8kf7
         Rqmyy5UKrh39gBeF2aa56XkB0j7TeUamfVLW/D/C6/rJ4eqNWhMpM2dCoplShOZSwM8z
         VRBPV7UKXKFjD+4bzAxGUfyHtyUMHsAxLR+tLP5euCTXiKJGATH5dkWJsHk1D4oC2YmP
         rEkcHKaHU6ibQoRbuoWJC4Y3AGAuZHf+0FBazY52QH00jmOqchSs7Vx1GmKn75GAw7Tt
         RzfA+idreX+RFlTuWvhoAIzNBHjExM+e1eWlX4/aWiRo5nccdXtvRCOf0j4RbCX2iXV/
         kMdQ==
X-Gm-Message-State: AOJu0YzzDBWx6nM2qh1CIWeckaketJ+H5X8NzVIUQFbUoK0f7xzOZw1z
	KlwIRf1mvY0gW7xPqLibgq+lrIY//HMkOaJOEGAIGYK3DCeGhOZSJRAI7A3XGxVl/nsbQfs+SYl
	u6iiwekmgtASIPz+he5ZS05QUwFpK3jkBu+5a
X-Gm-Gg: AY/fxX71Z6rX5cPajf+P9RePiEkawtrQ9tpU5uVKdL+nqG0zueKbA9O6tvx9cO76kPS
	3LwDaaQy0mFMkCWT73H1qYFXHjnMSJCJAl6vWXpdiQKEC3KltQ0lK8kANZpmDhJHxXA+4txKc0Z
	EHRXL+HY3cyoizlRMy2EMqusycbQ+aSERWd7LpOHRxYx9CwoNL0Kr609v8w0lVHEpgAoVIlaFo8
	7JaDvmkRD9fmaYBWTgvrQXE11sG+enSaa9SzIjjsIT7ESRSVcby1x8Jee8CMsBdyvjwv6Ss7Jow
	5lUlhXg=
X-Google-Smtp-Source: AGHT+IHofY9dUkl7ZQczrztCSEphxAqQXL/fV/wV8WGIeOR0tfTlxM2DzxVtpBw9SlWaimGmmb7oREpDPUgLM9IfJXQ=
X-Received: by 2002:a05:6214:4285:b0:882:44cc:f58e with SMTP id
 6a1803df08f44-88d8166590dmr644689006d6.2.1767127494206; Tue, 30 Dec 2025
 12:44:54 -0800 (PST)
MIME-Version: 1.0
References: <d2c0f3cb-d66c-43ec-9b61-05802df1a048@posteo.org> <bd7c5319-8048-4dcf-b679-5e0355551650@posteo.org>
In-Reply-To: <bd7c5319-8048-4dcf-b679-5e0355551650@posteo.org>
From: Greg Dahlman <dahlman@gmail.com>
Date: Tue, 30 Dec 2025 13:44:43 -0700
X-Gm-Features: AQt7F2rR5WdfvuAJcrKIgDZyEBI63b1hka3uMOcEtIaEW6HIEdQaDzh7pJd_6Bs
Message-ID: <CAM=PXV5UD8cajTnkcemP+cymphiLe7nRQYBBGAimz+S7svYVxA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000090a73d0647316ea0"
Subject: Re: [oss-security] Systemd vsock sshd

--00000000000090a73d0647316ea0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply Alex,

I didn't include that option because I ran into an issue that I couldn't
find the root cause for. Specifically on Fedora, a `dnf upgrade` resulted
in the mask disappearing.  I could find some complaints with Fedora version
upgrades, but couldn't find anything on package upgrade.

As I don't have access to the RedHat support portal I decided to exclude it
out of caution.

It looked like there was nothing in /usr/lib/systemd/system-preset for
sshd-vsock.socket that I found, and those should respect the mask for
sshd-vsock.socket and wouldn't remove the
 /etc/systemd/system/sshd-vsock.socket symlink as I understand it.

I think that because it doesn't show up in `busctl --activatable`, and no
packages I can find "Wants" sshd-vsock.socket explicitly that would
probably work.

I just tried a fresh install of Fedora Linux 42 workstation and didn't
experience the unintended unmasking with a dnf upgrade. That was reliable a
few weeks ago. Maybe I just was unlucky with a package that was fixed?

Either way I think it is an option for people who use configuration
management tools that can periodically check sshd-vsock.socket is still
disabled.

Also for normal *systemd* services that need isolation from the vsock
bridge you can use:

RestrictAddressFamilies=3Dnone # disable all af families
RestrictAddressFamilies=3DAF_INET # only AF_INET
RestrictAddressFamilies=3D~AF_VSOCK # not AF_VSOCK


The L4 bridge problem will be harder for projects that use CRI's that are
not containerd like the k8s/podman/crun/runc.

If anyone on here is involved with them, or sandboxing tools
like bubblewrap etc... Filtering address family 40 will still be required
by default to have any real intra-container/pod/process network isolation
on a node.

Thanks,

Greg

On Tue, Dec 30, 2025 at 12:12=E2=80=AFPM <wish42offcl98@posteo.org> wrote:

> I have searched for that - instead of blacklisting the vsock module, I
> did myself two measures:
> - systemctl mask --now sshd-unix-local.socket
> to kill and mask the sshd unix socket created by that generator,
> - systemctl mask sshd-vsock.socket
> to mask the sshd vsock created by that generator (use --now if the
> socket has started or use systemctl stop... ).
>
> Though, vsock untested but I found that source mentioning that socket.
> https://linux-audit.com/system-administration/commands/systemd-analyze/
> Masking the sockets should stop them from starting again.
>
> The vsock kernel module should not be blacklisted if some hypervisor
> features are required:
> https://libvirt.org/ssh-proxy.html
> https://wiki.qemu.org/Features/VirtioVsock
>
> Greetings
> Alex
>
>
> On 12/29/25 05:11, Jacob Bachmeyer wrote:
> > On 12/27/25 21:46, Greg Dahlman wrote:
> >> [...]
> >>
> >>   **Systemd v256 change** - When the *openssh-server* package is
> >>   installed on a VM with vsock support, systemd now automatically
> >>   starts an *sshd* instance that listens on the **af_vsock** socket in
> >>   the **global network namespace** without any manual configuration.
> >
> > Obvious question:  what manual configuration is required to kill that
> > listener?
> >
> >
> > -- Jacob
>
>

--00000000000090a73d0647316ea0--
