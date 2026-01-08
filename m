Received: (qmail 13428 invoked by uid 550); 8 Jan 2026 22:34:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18206 invoked from network); 8 Jan 2026 22:21:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767910875; x=1768515675; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Gi8JXClQDKXBBjS1cYoOKS5g+fmnJP4UP9cRCWv/jaQ=;
        b=ZFi/qx0gu/YH4jiuNn4hA0kEhFTbvwP14IY+zxRQvBX4N7qnYDs0KTxBGRnQGi/ulT
         QvYcDiyX5HEV6yRKQPyfGP+f238rjIHOszLexelpqXmM/O9ZVnYBB6CJQvQNouTBWoc2
         i3nFLlB72DTAzl1h2Bsa53ZkuyZVO20xS1OxwNIp6+4Ma98+6l0M1bGglNQzomlGrw0m
         B/+8K/UYi1oPdzDwao5JIIJaXinFK3G68Qn2SREuv+8yChGyBvO+HojSCwHQLn/ZlMbu
         Vk+R7ftKFewq2igqNTMibxkwy3z4Hjynu1i37/SbC3dfUIQBShdvya4eVVhHgCXkGL71
         sAxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767910875; x=1768515675;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gi8JXClQDKXBBjS1cYoOKS5g+fmnJP4UP9cRCWv/jaQ=;
        b=R7AnOQ5byxSjrlHD4KfQBZ0TjwnQJu385pCwsE+iRtk/vOa7j26Qf+O84uI62dHtpu
         2po9UXBQ9ykzj+3vIP5vnEbL/q6KIUpJc/s7CHN0rNsF/kFr1omFMhTe3cyPkOWT9OWp
         xvhG7RRj0sJOJPCMrvkHmxLlb9fr4KZUugm1pGAcJNKXjOzINFEUG7btyU3+3bxJuLwR
         r1QKXJjU8wthrKKasZBRAJPBtyXrNDGAIVsHNABZ/m2k/Uo4SV+gHeVJQPrbglbrQRMW
         +C+J2i6R9NLOla0kLqh+LWCgX+dRr8p3fMFYtii+rXHv/v0mM3gUsPGYUfykwMROn4F+
         q3+A==
X-Gm-Message-State: AOJu0Yz+cyhAN70oPDcX7AxEQiTauTFpD0KpGC13vj7x8Q2bqRf0zM+Y
	qV6pnfeOGxMSttqN8u6mFCGJIMJ24S6xmMoPYNwVLEKDaS0s7F5DkwxWKKwWpAJzEKgToDDCnAR
	q45Mtw8DTYkHv32rLWEqESdE4TpITBGV1+L/G
X-Gm-Gg: AY/fxX5uv2saKr4QrOCVev8oKFlUYXPHbEerbGwQZhdLTZa2T/VOE3XMMwwpWOXgtol
	RetboxbGHkmqbLuWCuShkvZ7h8STfmbH+yOr2P2b53jQcHRtePBsokTLXtawTyOoQefK+rnIH+N
	IFXwX6P3s2xog2d4JOJmvAL2vRce7NC1rM1O6DOhlwroipUVDfLMDazI8ZseYnWzZm87XNTtavw
	Vs8oGCrZpNNoxm6za4LD73hudvMBqpLhx13lXtcYmTdOboWm9k+lDSwdl8MwTDKudmKq7o3opEu
	H86JJsk=
X-Google-Smtp-Source: AGHT+IFSu5Pf3YD8Cwgm957lo3+Q4pLbUptqsslxjyyWkDfW5xJoYpw6zR81bPKuUKNMJFHxohAQ0VwwMoEiT+pNVG4=
X-Received: by 2002:ac8:7d8c:0:b0:4ee:739:142 with SMTP id d75a77b69052e-4ffb4a6d327mr96810121cf.51.1767910874709;
 Thu, 08 Jan 2026 14:21:14 -0800 (PST)
MIME-Version: 1.0
References: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
 <20260108212019.GA31309@openwall.com>
In-Reply-To: <20260108212019.GA31309@openwall.com>
From: Greg Dahlman <dahlman@gmail.com>
Date: Thu, 8 Jan 2026 15:21:03 -0700
X-Gm-Features: AQt7F2qlb2W2xVwkO7Hbt8xUf5exAA_s_0hetKk9wCdVC0PWf8w53kDKLUetN0Q
Message-ID: <CAM=PXV7zqSmHzewL1fOWTYAvuKGxLSRADCpbf7Grig-ocQnHVw@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ae845f0647e7d389"
Subject: Re: [oss-security] Systemd vsock sshd

--000000000000ae845f0647e7d389
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

Note that the systemd socket activated sshd listener was the only really
embargoed information. That information was on this list for a while, so
you should consider it public and feel free to share with those impacted.
I have included the known working, end-user mitigations below in a few
locations and I have shared it with individuals I know in some larger sites.

I am holding off on a comprehensive blog post as I am waiting on a few
other stakeholders. I expect it to be published soon, maybe this weekend,
trying to only publish examples with known fixes.  However as when crun was
developed to replace lxc by the containerd team, there were no constraints
or defaults at the crun level on callers that is proving challenging.

While I can add apparmor rules to crun/runc/podman/bwrap/etc... SElinux has
proven to be more challenging, so those in k8s with mutating inlet
controllers should ensure that they deny address family 40 at the control
plane if possible.

Note: While local execution on a container host is problematic, restricting
access to the vsock loopback and VM bus from containers/sandboxes is
important.

I now have permission to share more information about one attack that I was
informed of, which was internal.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Known attack
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

A SAAS provider had a singleton container that originally allowed customers
to upload assets for branding via git and rsync, over time they added the
ability to pull assets from external tools which required them to allow
customers to log in to troubleshoot and run python scripts.  Their
expectations was that this container was not shared between tenants, and
that it was isolated.  As this was a tiny container, they just co-hosted it
with their app tier due to budget concerns.

An internal developer was approached by a customer.  That developer then,
claiming to be working on a new reporting engine container, added code to a
chain of notification engines pushing to the vsock proxy.  Any error being
explained away as safe because that new container wasn't in the app layer
pod.

That developer, either handed a time limited ansible key to the customer or
used the customers key to ssh into the customer's container, used
python/paramiko script to ssh to the container host, and launched a
multi-hop proxy as the container host debian built in www-data user.  That
container listens for all customer events and using the vsock proxy and
pushed targeted ones to the customer's asset container, allowing them to
exfiltrate sensitive data.

While the above attack did use the systemd vsock sshd listener for Escape
to Host <https://attack.mitre.org/tactics/TA0005/>, the attacker could have
just directly listened over the vsock loopback. Unfortunately this
orginization was only interested in a fix, and I don't expect more details
to be made public.



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Known mitigations
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


Kernel boot string
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Disables systemd sshd vsock listener, will not protect the vsock loopback.

The official way to disable vsock sshd is through a kernel command line
parameters or system credentials logic. [systemd-ssh-generator]

 systemd.ssh_auto=3Dno


Mask systemd socket
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This will disable the systemd sshd vsock listener, but will not protect
the vsock loopback.

 sudo systemctl mask sshd-vsock.socket

Note:

 If another unit **explicitly** wants "sshd-vsock.socket" it may
 be started.


AppArmor
=3D=3D=3D=3D=3D=3D=3D=3D

This will remove access to the vsock loopback, which will also remove
access to the systemd sshd vsock listener for targeted binaries.

Add the following to "/etc/apparmor.d/local/<filename>" for each
high risk command.

 audit deny network vsock,



I will reply to this thread once I do publish a more indepth post and my
time for testing is constrained.

If anyone has found reliable methods of constraining crun with SElinux by
default without breaking the upstream callers it would be appreciated and
accelerate that effort.

Thanks,

Greg

On Thu, Jan 8, 2026 at 2:20=E2=80=AFPM Solar Designer <solar@openwall.com> =
wrote:

> Hi Greg,
>
> On Sat, Dec 27, 2025 at 08:46:49PM -0700, Greg Dahlman wrote:
> > This information is to be publicly released on January 6 per requiremen=
ts
> > of the distro list.
>
> We're past this date now.  Have you already disclosed everything in this
> thread, or do you have anything additional you had shared with distros
> that you're yet to disclose to oss-security?  In the latter case, please
> do this ASAP!  (Sorry I haven't kept track of all the detail.)
>
> Thanks,
>
> Alexander
>

--000000000000ae845f0647e7d389--
