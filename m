Received: (qmail 13659 invoked by uid 550); 5 Feb 2024 08:38:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13638 invoked from network); 5 Feb 2024 08:38:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707122454; x=1707727254; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HYHzqvD8uvOBaGMCdI2NDueA5wrwWjxsG996VQ2qrYA=;
        b=dDGYZ35riVlAxVorLIUlCIsdGQYvdOAazl0J69hTLWLxFTJHxoksM+Vvs1e1lYfBQR
         prC+bnLU6vphKa1RIAGWPjOQtMconhyxunlUijumuG23UBTVGOK3gtSADU6/3vbVH3YX
         Rt79Ib8ipfiytF2rr9xtljtJfH6c2myJWzASHHj45rMsLF+/9mO+4S3uqnJD3dhPixyh
         ig7NHxsFEsbn9y+2T4gghPLqpy6d9qbSAvBhBSoYp7RecXW08cDPmR+MD8yhrTJD1rLS
         YrE+AjoclhGIPn67A0O+CCXgk63YKOyH2e6ncXuRPB8rR0cWQYEOTSRZnzyNAn3d94bS
         VvxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707122454; x=1707727254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HYHzqvD8uvOBaGMCdI2NDueA5wrwWjxsG996VQ2qrYA=;
        b=uysgNQpcqCp/Yi10fntG/6tvwqjp0C0fBylN2MDyThioX2hzfSIX8CWgWC70qF36Ni
         fbYaCtjFCkHqNl1zLCXDU4d7O+ZIfZ9U+CXpRLVgu/F4M68qJe5toBAdfNwJKEpOjPJx
         odT9LbYw3XPwyHun82TpWvt+8HVHZNnOc3CZ8yle1s7T2VoaOA6VaS5TgEHLKE5k5z/i
         PrnCmytqwUfk9oqYIYTAj/2Ei8sknkpWkzgUr488JcYWtaRuHG3AabqQvkqFzdt4Ahj7
         Q7PVi9ni9NeXr+MHhaPobC1EK45xFKZBqNpaQ7pZHZz+/JLvFrA5aas77GYLrq34Fkrf
         PDSw==
X-Gm-Message-State: AOJu0YyltgTHFn7ORSLdLYZE9htuqWiw7oIQiTGYIX+JbZm11QdUx74r
	7nDtAIzWTM6l1e2tHc8eyheiiCYEUuLmvhwKTeGLOGzZ8al4ocX1KXZb1x4pOd8UcPHV/S22WHe
	vBzz2FFBueS+0BJaJjUoWfC7sMMEBvspQ0bmN9w==
X-Google-Smtp-Source: AGHT+IFYNwdYyf7E+1egj1I1WBB6XaMmnLBFDc/F5c0nhS3dZOEwkYxqqDlN2CmMIQ2y3w1XJ2D6RZUoW/IlBnUvSec=
X-Received: by 2002:a05:6214:21cb:b0:68c:a4b8:3692 with SMTP id
 d11-20020a05621421cb00b0068ca4b83692mr3596260qvh.56.1707122454538; Mon, 05
 Feb 2024 00:40:54 -0800 (PST)
MIME-Version: 1.0
References: <20240130183915.GB16546@localhost.localdomain> <20240204163520.GA20987@openwall.com>
In-Reply-To: <20240204163520.GA20987@openwall.com>
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Date: Mon, 5 Feb 2024 16:40:28 +0800
Message-ID: <CAN_LGv2Ej_YgbW=1_Ne9_rAEXR93rcM904dVWrCRCv-mPseuBg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>, Adhemerval Zanella <adhemerval.zanella@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Out-of-bounds read & write in the glibc's qsort()

On Mon, Feb 5, 2024 at 12:36=E2=80=AFAM Solar Designer <solar@openwall.com>=
 wrote:

> It's so invasive I cannot easily tell whether qsort() remained robust
> after it or not.  There's no longer a "tmp_ptr !=3D base_ptr &&" check.
> So, lacking known-working tests in glibc tree, we don't know about glibc
> 2.39's status with respect to this issue.
>
> I don't have a glibc 2.39 build handy.  Perhaps someone on a distro that
> has already updated can run the attached test program and let us know?

Here you go: no output on Arch Linux.

[aep@aep-haswell tmp]$ gcc ./glibc-qualys-rocky-qsort-test.c
[aep@aep-haswell tmp]$ ./a.out
[aep@aep-haswell tmp]$ /lib64/libc.so.6
GNU C Library (GNU libc) stable release version 2.39.
Copyright (C) 2024 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.
Compiled by GNU CC version 13.2.1 20230801.
libc ABIs: UNIQUE IFUNC ABSOLUTE
Minimum supported kernel: 4.4.0
For bug reporting instructions, please see:
<https://gitlab.archlinux.org/archlinux/packaging/packages/glibc/-/issues>.

--=20
Alexander E. Patrakov
