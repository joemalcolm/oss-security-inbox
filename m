Received: (qmail 1099 invoked by uid 550); 29 Dec 2025 17:05:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17539 invoked from network); 29 Dec 2025 10:47:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767005211; x=1767610011; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2K5rAj/cEZAhcrBtAj+is60o80qpgBa2QlO2C5NnPR8=;
        b=fcVjslgGBQHNJEOz7Mr8UeU/CfQUwPyYhCavPz33aCRBhCD79QJQC14Us6hXffelch
         g/LajEvt61irCc8tT/jyLwxfOFjfEcbpop9i3U4guHteFyb52NDv3eSHGvPw9FXY59FV
         WFaNOpHFSGV7KpvvBuin9965TEjMJ2MifLEUl/IrTH0U3NCq3f/fqfuqY+RdE0mQ86Ev
         IB2iJK/qr2xqlfh7RnZteWmafsNP7Ygl/rWQM/8yIqJ/apO7y+27kgqNzcvg8eq4s8s4
         Ih3SUXs4VGx+MEzZLp6SD+Nr9c/8cENO2vV4LQFlZkuowPgOI1qrzk9tx3c5U+Ylb4L3
         +Idw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767005211; x=1767610011;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2K5rAj/cEZAhcrBtAj+is60o80qpgBa2QlO2C5NnPR8=;
        b=ifWIbgRmp7Rpf/j2rM0AKZn67uCP/7btaXhC81vuMrB/ATReuQrGtHBLDMCrwluFgC
         AU5eFbTgJIGxi38Vq+D1YtIYSz2+5v1+sRwGgy0n0gkyuznrr9oQ6wPKl82bms+UYQfJ
         Z8dJSrZoFvkUwzSIk4AiEu38UaHD6QzDEV4fkl61F8rBv211292Sn+El2/8JLND4AQQ1
         wNaoS/06tYv5MhKqIna79a6hFFJphcI7oEn2eJK4fkRJKQFYEiiq10PSCv0rsr5R7Evp
         9RbfbqG/xq63cUpcbuSxwuo/AKMq3kfSxaM3wjJRHpT4SXOecIHtxDxFxCOUhBB4mtM1
         1Svw==
X-Gm-Message-State: AOJu0YynEXfLHXE9xUp2yJJ/zFS9spkNr4REuKkbnuc4EE3V06Yr8nb8
	nrRnf4LTddo7I9txT/vUtfCIfaehHcnskbfebFkbs3X6igHbewNbt5fxp4auJCf33zNnDcXDcBu
	kfC1bz5TEjL0akXW5VKiOev5PJ2S1XLvEL7Kj
X-Gm-Gg: AY/fxX7Wys6TJ2D/g2fPh8ebIhTfuGYv4SGXZqGVlJf5NbkOdoWI0fNOnXuGT7YWLp1
	1l4/J4VjD0t48p0BRUmjbuYTm6hIOeay7ohXvghn3LnByI+oT21g1JupKZsA3E6EtJl1j8XwE/q
	NvFleazzzZ72BYbHq+Mo6llx6xumQVMrRITdhqXr4mvLGk2x+vMDcGQTj1WSekOque9neV/bB4n
	hIBK3/FRnYMh7wbp18E1OfXac+PzyHATAUa0GFUibkjXWim4GoJcwHO8fovPaxbJ42ww2u0d9F4
	g8UA015TX5hVZjMyGGz8yla6iLU=
X-Google-Smtp-Source: AGHT+IFVS1ANO5NPH+VvRCujJUIdTkFsLBlcN7VZlGK1F0aTIA5UOgyhwE8Owiy7fz+haimwXdun6p95eJASIEEgP18=
X-Received: by 2002:a05:6808:e85:b0:43f:7287:a5e3 with SMTP id
 5614622812f47-457b21413a1mr12568628b6e.28.1767005210926; Mon, 29 Dec 2025
 02:46:50 -0800 (PST)
MIME-Version: 1.0
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
 <87y0mnj593.fsf@gentoo.org> <e689f7a6-3167-41ea-9ec0-88b87df4d68a@gmail.com>
In-Reply-To: <e689f7a6-3167-41ea-9ec0-88b87df4d68a@gmail.com>
From: Neal Gompa <ngompa13@gmail.com>
Date: Mon, 29 Dec 2025 05:46:14 -0500
X-Gm-Features: AQt7F2r4iKC9qOv7FiK4h7GocDzw5HKeOxvNEjKxrOlU04kS-B81uiQmimsXVQ8
Message-ID: <CAEg-Je_psmtK-f3jod46Q3q1DFx9McmdYBMpZjeKesRSsWdhBg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Sam James <sam@gentoo.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

On Sun, Dec 28, 2025 at 9:51=E2=80=AFPM Demi Marie Obenour
<demiobenour@gmail.com> wrote:
>
> On 12/28/25 05:00, Sam James wrote:
> > Demi Marie Obenour <demiobenour@gmail.com> writes:
> >
> >> https://gpg.fail lists many vulnerabilities in GnuPG, one of which
> >> allows remote code execution.
> >
> >> All are zero-days to the best of my knowledge.
> >
> > In 2.5.14:
>
> Fedora isn't running 2.5.14 even in Rawhide.  It's a zero-day for
> Fedora users at least.
>
> Upstream GnuPG is increasingly unwilling to collaborate with other
> OpenPGP implementations, and distros are having to patch GnuPG just to
> restore interoperability.  If possible, it would be best for distros
> to either outright fork the project and create a new upstream, or stop
> packaging GnuPG entirely in favor of Sequoia's compatibility layer.

The Fedora Linux family of distributions already doesn't use GnuPG in
the critical path anymore. RPM and DNF have been switched to
SequoiaPGP for quite some time. That change was inherited by Red Hat
Enterprise Linux 10 as well.

This is why we have PQC support in our PGP stuff.



--=20
=E7=9C=9F=E5=AE=9F=E3=81=AF=E3=81=84=E3=81=A4=E3=82=82=E4=B8=80=E3=81=A4=EF=
=BC=81/ Always, there's only one truth!
