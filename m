Received: (qmail 32258 invoked by uid 550); 5 Feb 2024 09:00:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32240 invoked from network); 5 Feb 2024 09:00:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707123798; x=1707728598; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/jkphXKyokqkz47Ib10ZXawvIkShwBSXzfbWV+2l8XE=;
        b=dnP0khNZiNHJXIAerXW/D+a2joLfKAybovLE7u8ycFHrnAlcdfDlnq7xZnkwFE810Y
         l+T/Lj6pWPE1TZomTp8rlsD4WYVbfuUVkUHqvV84BlwxY0nZl6NCWXuIcdxoExjKRmz8
         MnRdgSAWoBC4HmCPH1AFiEUS06AIU1PQ6qXq6SYqjQvHRmGvNQypp7VsGnL8nZxhfa4q
         JJVNOTTEl3K7MuPNJu/qY3/uytxYseqqHnWbkAtgOP0UgUDVFann+iM51DLkFaslb53s
         //tVZbqZJ8PYePFPuWtkQ1nMDPKIVw6YQuzXYkUyUaD66mjDqBVDfhAXcobyYFHAHzUc
         ffyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707123798; x=1707728598;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/jkphXKyokqkz47Ib10ZXawvIkShwBSXzfbWV+2l8XE=;
        b=r9KbRSlk/viG5wvZrU08CkDdwSZBQsDx+XRKJPjgLaWs/aEVkH3TjHX9Tpa388c11y
         p3G7ZV448uCEyTq46+t6navm32cFuANH5kRUQH+QvRiiFP4fU6kUDgxvOlvuwbFpV+tI
         2b5803OklJpen/vtfonRQuXosYnFvWpPJSXwmvgBD0QCDrEtNCMWY8ZlIDmwUfabb3hY
         4p66gF7j8sOMQD04rOnIRJUUERz9TUn8Dg1F+fhBAW8w5PoUGVn5FJ7OYEfrhXe4MXul
         Wkciv3FZuKiQiMpvxKFJNcG8lxL5ur5sx19gRAguz6iGzdJ6EWKxmfsZ9PZnZqJDI04Q
         JOGw==
X-Gm-Message-State: AOJu0YymFI/6K04mYppwbxskGEnYLSsG3JekrdYo6nk5/1Du9UlDvSo1
	tu+edi3/r1pTVD4t7lnQvsMPCTEARj9R9v/r659YIUFaDkpGUoiAGEgY7zsVwuIU7CGoe3KSKm6
	eM4mEFQZkWF2kNxvTc8icaj5nl6kDbpNdagE=
X-Google-Smtp-Source: AGHT+IEZ33KuDGWh2QS7bsjCDT1l/lvS4BbOLMyr9LGzvKVB8So86CdYcI+a69TwVBC1djaNzQJFnff5U5LqIezHZEo=
X-Received: by 2002:a05:6214:d63:b0:68c:9b62:a39c with SMTP id
 3-20020a0562140d6300b0068c9b62a39cmr6193195qvs.0.1707123798588; Mon, 05 Feb
 2024 01:03:18 -0800 (PST)
MIME-Version: 1.0
References: <20240130183915.GB16546@localhost.localdomain> <20240204163520.GA20987@openwall.com>
 <CAN_LGv2Ej_YgbW=1_Ne9_rAEXR93rcM904dVWrCRCv-mPseuBg@mail.gmail.com> <CAN_LGv2MKS7C5JZA-PxKhc1M7VA-UTt2ZP05sk3eWKY6YOjo5Q@mail.gmail.com>
In-Reply-To: <CAN_LGv2MKS7C5JZA-PxKhc1M7VA-UTt2ZP05sk3eWKY6YOjo5Q@mail.gmail.com>
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Date: Mon, 5 Feb 2024 17:02:52 +0800
Message-ID: <CAN_LGv0x+LeHrROT-cTdDcqYMj5W6Cw0cZZ05ov3kezguKVvBw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>, Adhemerval Zanella <adhemerval.zanella@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Out-of-bounds read & write in the glibc's qsort()

On Mon, Feb 5, 2024 at 4:45=E2=80=AFPM Alexander E. Patrakov <patrakov@gmai=
l.com> wrote:
>
> On Mon, Feb 5, 2024 at 4:40=E2=80=AFPM Alexander E. Patrakov <patrakov@gm=
ail.com> wrote:
> >
> > On Mon, Feb 5, 2024 at 12:36=E2=80=AFAM Solar Designer <solar@openwall.=
com> wrote:
> >
> > > It's so invasive I cannot easily tell whether qsort() remained robust
> > > after it or not.  There's no longer a "tmp_ptr !=3D base_ptr &&" chec=
k.
> > > So, lacking known-working tests in glibc tree, we don't know about gl=
ibc
> > > 2.39's status with respect to this issue.
> > >
> > > I don't have a glibc 2.39 build handy.  Perhaps someone on a distro t=
hat
> > > has already updated can run the attached test program and let us know?
> >
> > Here you go: no output on Arch Linux.
> >
> > [aep@aep-haswell tmp]$ gcc ./glibc-qualys-rocky-qsort-test.c
> > [aep@aep-haswell tmp]$ ./a.out
> > [aep@aep-haswell tmp]$ /lib64/libc.so.6
> > GNU C Library (GNU libc) stable release version 2.39.
> > Copyright (C) 2024 Free Software Foundation, Inc.
> > This is free software; see the source for copying conditions.
> > There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A
> > PARTICULAR PURPOSE.
> > Compiled by GNU CC version 13.2.1 20230801.
> > libc ABIs: UNIQUE IFUNC ABSOLUTE
> > Minimum supported kernel: 4.4.0
> > For bug reporting instructions, please see:
> > <https://gitlab.archlinux.org/archlinux/packaging/packages/glibc/-/issu=
es>.
> >
> > --
> > Alexander E. Patrakov
>
> Sorry, I should have followed the instructions.
>
> [aep@aep-haswell tmp]$ while true; do n=3D$((RANDOM*64+RANDOM+1));
> prlimit --as=3D$((n*4/2*3)) ./a.out $n; done
>
> This results in a mix of these outputs:
>
> PASSED
> ./a.out: error while loading shared libraries: libc.so.6: failed to
> map segment from shared object
> Segmentation fault
>
> --
> Alexander E. Patrakov

Upon investigation, I have to add: the segmentation faults come from
code that runs before main(), so they do not indicate a problem in
qsort().

--=20
Alexander E. Patrakov
