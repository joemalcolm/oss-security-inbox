Received: (qmail 1884 invoked by uid 550); 5 Feb 2024 08:43:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1866 invoked from network); 5 Feb 2024 08:43:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707122781; x=1707727581; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PbQQGnelB+cCiEzBg37+laSiOjinK5W8/IRrzutbCzI=;
        b=NxMPbK/c00VaK6AEX0A2UYbuQ6Dlth4oBfEuDdW1PwLOeKFB9ZL5XslsU5M/WZ2U9i
         njIYZzcwZICfrwCeana/fyXhRORJ8wIsOiq2DbbrhwoR9mjUjNIUYwMmHxlBmw1vRcwb
         HCzATeRz5mJnklDmiLfIvcMXinCyH/QjM8IlzUhvyH0XKEm0xp+236rP6zG73jq7GTsf
         6/iXRd/kc4hWuKnPbq8g9GcQHUGDRSxklCexgnPW+EWhb8I1gRmkSvUCpnXmjBdmNiaU
         NDf3d7e8V6S12ftDC8S5KeZLgBJq55/kclzdtkILp0x5ycML5mfznSNqxhdxaWiXBV1v
         weig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707122781; x=1707727581;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PbQQGnelB+cCiEzBg37+laSiOjinK5W8/IRrzutbCzI=;
        b=g7zDSkyQJnEkLs75paNBaUCbUpnG4YmEalDoUjIEJT59IxO4wV7+HDTeT8OlPFoPWV
         mbTd+BCV1NP2nB9ZTFzrKHsQKgjsZcwcEItALSuDvjBYC1QPxNWrNSkdbyzbThEpJdUA
         Oq+164spYeC+OwBsF4+Rlmxfzww9/ryMRP1cStFuLFIPaNq3jYXVao+t+O+LjFw1WERx
         WcWqLvllAOjrU7FV8GLXgMqAHwfjv/lxE57P+1HRt+E8gpLWeg8vfE8WOtJ/0B8qdL3+
         vvnsnzuWmaCrHr7ESxMXLF+mgUJjmsJZF19/5Q3TE57qYJ8YLxnMrl6oFg6+BSpo5I0j
         PhfA==
X-Gm-Message-State: AOJu0Ywo3BZlQlcLxPTEsIuHeF0xS7rNbUubXL0fpp9kfo0WOMeGV2xO
	CNEydMWn/aIZPmJx7+MsSH+RufAIEmLEXH+QsA92aelV24iCSdrwehxwLQBXAybleHmbp33xoMz
	01+H4N8Wos0o1YXwOn2g7MEShgku1wkyULIS00Q==
X-Google-Smtp-Source: AGHT+IEknbLqHMih9XiExeoYseK0sgPXHpHIslWBAhY6qaEN6imupbgU/f5h8RO7wJHG5liv6kN+RZmEgY1O5T4ixJ4=
X-Received: by 2002:a05:6122:369b:b0:4c0:2cff:9d7a with SMTP id
 ec27-20020a056122369b00b004c02cff9d7amr1375687vkb.5.1707122781434; Mon, 05
 Feb 2024 00:46:21 -0800 (PST)
MIME-Version: 1.0
References: <20240130183915.GB16546@localhost.localdomain> <20240204163520.GA20987@openwall.com>
 <CAN_LGv2Ej_YgbW=1_Ne9_rAEXR93rcM904dVWrCRCv-mPseuBg@mail.gmail.com>
In-Reply-To: <CAN_LGv2Ej_YgbW=1_Ne9_rAEXR93rcM904dVWrCRCv-mPseuBg@mail.gmail.com>
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Date: Mon, 5 Feb 2024 16:45:55 +0800
Message-ID: <CAN_LGv2MKS7C5JZA-PxKhc1M7VA-UTt2ZP05sk3eWKY6YOjo5Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>, Adhemerval Zanella <adhemerval.zanella@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Out-of-bounds read & write in the glibc's qsort()

On Mon, Feb 5, 2024 at 4:40=E2=80=AFPM Alexander E. Patrakov <patrakov@gmai=
l.com> wrote:
>
> On Mon, Feb 5, 2024 at 12:36=E2=80=AFAM Solar Designer <solar@openwall.co=
m> wrote:
>
> > It's so invasive I cannot easily tell whether qsort() remained robust
> > after it or not.  There's no longer a "tmp_ptr !=3D base_ptr &&" check.
> > So, lacking known-working tests in glibc tree, we don't know about glibc
> > 2.39's status with respect to this issue.
> >
> > I don't have a glibc 2.39 build handy.  Perhaps someone on a distro that
> > has already updated can run the attached test program and let us know?
>
> Here you go: no output on Arch Linux.
>
> [aep@aep-haswell tmp]$ gcc ./glibc-qualys-rocky-qsort-test.c
> [aep@aep-haswell tmp]$ ./a.out
> [aep@aep-haswell tmp]$ /lib64/libc.so.6
> GNU C Library (GNU libc) stable release version 2.39.
> Copyright (C) 2024 Free Software Foundation, Inc.
> This is free software; see the source for copying conditions.
> There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A
> PARTICULAR PURPOSE.
> Compiled by GNU CC version 13.2.1 20230801.
> libc ABIs: UNIQUE IFUNC ABSOLUTE
> Minimum supported kernel: 4.4.0
> For bug reporting instructions, please see:
> <https://gitlab.archlinux.org/archlinux/packaging/packages/glibc/-/issues=
>.
>
> --
> Alexander E. Patrakov

Sorry, I should have followed the instructions.

[aep@aep-haswell tmp]$ while true; do n=3D$((RANDOM*64+RANDOM+1));
prlimit --as=3D$((n*4/2*3)) ./a.out $n; done

This results in a mix of these outputs:

PASSED
./a.out: error while loading shared libraries: libc.so.6: failed to
map segment from shared object
Segmentation fault

--=20
Alexander E. Patrakov
