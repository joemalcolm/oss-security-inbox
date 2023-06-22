Received: (qmail 21826 invoked by uid 550); 22 Jun 2023 06:59:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23739 invoked from network); 22 Jun 2023 02:12:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687399916; x=1689991916;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SUY/GYXLYcix7hGh5QMlriFoMzDH1daBw4nnE/e/U8c=;
        b=bQ7/WghXV4/0xZiDK+MDURm0nY3wXBKE0cgab6lh7iNYfzmArOL9wLlg+Tw6PpVAAL
         dYOD4Uzj2Otf45C2yP6FAUJiNf/i6u1kumhv7k0xHuU7lscXZrRAdPE8NQv0xReDjCVg
         CvVIm+SiRAsOYm683TkW3/6Gd4uhvmIFUUgml6et9mGXJv3vUkO7Rk2efqmR/bv6VlU2
         GIteVsKqdHKweO8QT0Wa5WzzdnqO7VPdBBEo9x51i5w86FhQaQxvBrPElWUMZnTkM5Cf
         SWOlH+B9PdiZRAeFd31XPiabI4Yn4Fvet2RxuFrWGcKWrwD5Xg8OgJvoO/L8OvryqBaz
         f5iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687399916; x=1689991916;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SUY/GYXLYcix7hGh5QMlriFoMzDH1daBw4nnE/e/U8c=;
        b=JeY/QUditYHJWaagDMUBJspicXVnFAl2GMCR5wl5lgtvuDjJzuJTuChqwg3ehQdgjQ
         SupWp3ak1Z0y56t0WrwjX2kXURv3fZHC/WiNM0RaVBj+6dprBIxVdPnfXGtYuNdzWui2
         cueEPFyPfkl8C5hQeP9tYj1xRsY/ihYBRsmYEPbQenbn/HxboYgU9KGG27KrKE1Tvot9
         XmRKkx4Wgm7y2OH+Lo0pBWaclOAYvyk6+fMo+s8T99gfmXkbUsMyXWbdHvX2NFl79GhT
         TZEIbebaD+WfaMKUGzB86CydPNT/bSMBqzPzmqviPmVludnu7vua2K/iF/yvWzLeS7Ix
         L/fg==
X-Gm-Message-State: AC+VfDxQHywb9/wa47AG15D+N+P9j/tOQV3pOzauaXMsJVlrMB8u4nzZ
	fh1ziwtvvfm2YI52+Fmx/ogj3462A5fKQPF9RDlXYKSzhEQ=
X-Google-Smtp-Source: ACHHUZ4idjQUlsGENw+Bak6UWy8VQ7HpaTC4VhYvG3ZelpI01//0GZ4DXBX3HbJYkqntXtjsw7mbws5um3J9L8Db+90=
X-Received: by 2002:a05:6808:2088:b0:3a0:307f:45f5 with SMTP id
 s8-20020a056808208800b003a0307f45f5mr5464878oiw.14.1687399916020; Wed, 21 Jun
 2023 19:11:56 -0700 (PDT)
MIME-Version: 1.0
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
 <alpine.BSF.2.21.9999.2306220132050.17927@aneurin.horsfall.org>
 <ZJNx4OBlGqGFgOYD@itl-email> <1856911.tdWV9SEqCh@x2>
In-Reply-To: <1856911.tdWV9SEqCh@x2>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 21 Jun 2023 22:11:42 -0400
Message-ID: <CAH8yC8njh+1Q2QHvkN2pwAFWsL+v1HdxFYZYBDjk9h9qZHUcfA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On Wed, Jun 21, 2023 at 9:55=E2=80=AFPM Steve Grubb <sgrubb@redhat.com> wro=
te:
>
> On Wednesday, June 21, 2023 5:54:57 PM EDT Demi Marie Obenour wrote:
> > On Thu, Jun 22, 2023 at 01:44:04AM +1000, Dave Horsfall wrote:
> > > On Wed, 21 Jun 2023, Jeffrey Walton wrote:
> > > > Memory leaks on exit are par for the course in GNU software per
> > > > https://www.gnu.org/prep/standards/standards.html#Memory-Usage .
> > >
> > > Don't bother with this, don't bother with that, etc...  Call me
> > > old-school (which I am), but I cannot abide sloppy programming[*].
> >
> > Memory leaks on exit are a _good_ thing in general.  There is absolutely
> > zero point in calling free() if the program is about to exit =E2=80=94 =
the OS
> > will do a better job of freeing resources than the program itself ever
> > could.
>
> Sure, but how can static analysis or address sanitizers tell the differen=
ce
> between something created and leaked on the error path, vs something that
> mattered during the life of the program? Meaning something leaks in an ev=
ent
> loop and slowly accumulates leakage. Nothing gives you a free pass but th=
e OS
> when analyzing leaks. Mundane leaks need cleaning up so you can find the =
real
> leaks that matter.

Right. And shared objects are even worse. The test program exits,
memory is cleaned up by the OS, so who cares, right?

Just ask the OpenJDK developers who had to contend with the OpenSSL
memory leaks that exhausted all memory on Android devices. The
accumulated leaks literally used up all memory. That's because shared
objects are loaded/unloaded hundreds of times over the life of a
program on Android.

Another offender from GNU is ncurses. It leaks like a sieve, too.
Ncurses makes it nearly impossible to test GNU programs because
ncurses masks real problems (in itself and the program). And it causes
resource exhaustion on mobile devices, too.

It's very unfortunate the world has to lower its standards to that of
GNU software.

Jeff
