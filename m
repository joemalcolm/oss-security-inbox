Received: (qmail 7908 invoked by uid 550); 29 Mar 2024 20:19:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7877 invoked from network); 29 Mar 2024 20:19:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711743550; x=1712348350; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OA4B/R2BE8nh7BeyyxwfcijWIK52xU8dFv7Uc8j2ILE=;
        b=Rp39VIv09dUk1mMbLIGcYoaeklI/1NMUQzFss7lZwzRff/4+OahRzyv649HI6qjVzH
         FywvvYwZ3KoGY4y++82TX2BKHg/qxBH/MTEjWAIAmLyGEN1+60EJMaM0Cvk1JC2Yyd3I
         vlq9e2QlhYAjf7ylecZdYHdcPspjTeNRoqdExqZh+xqfOlHGnbO9cB9as4dclkeVS8kx
         JNT2Aq1hyK4bjo1eVl9Vl1H/8oSbFSE/4qPFGTxf0jKUMkzL+beRc/qMbRJbhgcqs74U
         tmepTt3sn342RqHImkd3e+yzakPZ5yO1V15OI3pMSh8e2aKjDKSALFoOPy43T92RXc87
         S4vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711743550; x=1712348350;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OA4B/R2BE8nh7BeyyxwfcijWIK52xU8dFv7Uc8j2ILE=;
        b=rvM06HuNI6nenniCeGRvQIRys/C5pvzIkCmF4uQOuYxU108uzdgcCHJWjLz9g81I3f
         bQEzjt/Xc77t/wDOVmdjRRBeR3iJSRMpybf4S3JJihPKXsP/IsoGFRSVlpuHJf0tsQkJ
         h4Srpr7xDyFwnVKqNORhrbU3fA/ZxQ6bEabiE09vBn98gj5KPUR8xFUy3RhVQBpynG/W
         57jcX3414ggBXRWkMzBdP5n772mn7wVRzzw/4x6j+DICde0ZYGQq+INuXs5QPUZNlCEp
         psstUvwXY+h6ncM5E9v+Fnoysz7QKwT4yHMct91lyqNhHK5tePFl5dSX20Z0A06Hs6/n
         9cjg==
X-Gm-Message-State: AOJu0Yx19pnLj57B9v2nYIH/ba7pkN70Emzzf81+A8r7FhctK68zkloP
	rZW7+SXCNhAAWgCeUP/Zyl/xAhT6LtJY0bv0gbe2g8P9Y2F8BhdBEyHuegVkcfxQPs6Q14k0FQl
	yu7ITxn5u2XuI6eSroij34P4DjGlCPCh3hk++gDbF
X-Google-Smtp-Source: AGHT+IH62cAbep6LvYTeGiZ37qUquzTji0qKPw4qHD5uPs/lsZiRs+9iDSEYKz03Ct1Qr80GIhQ2VGBiAWr6BOWrst4=
X-Received: by 2002:a05:6214:174a:b0:691:3cf5:b7ad with SMTP id
 dc10-20020a056214174a00b006913cf5b7admr6164619qvb.12.1711743550291; Fri, 29
 Mar 2024 13:19:10 -0700 (PDT)
MIME-Version: 1.0
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de> <CAN_LGv0CU6J+5d6RX=mDrMvAg4kf3EGi+56x+J4iW0NCFRee1g@mail.gmail.com>
In-Reply-To: <CAN_LGv0CU6J+5d6RX=mDrMvAg4kf3EGi+56x+J4iW0NCFRee1g@mail.gmail.com>
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Date: Sat, 30 Mar 2024 04:18:43 +0800
Message-ID: <CAN_LGv3B4_K16osLRiinny7SbOsxvvtJHbU3Fgbu4ytnEPgoww@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

On Sat, Mar 30, 2024 at 2:59=E2=80=AFAM Alexander E. Patrakov
<patrakov@gmail.com> wrote:
>
> On Sat, Mar 30, 2024 at 12:09=E2=80=AFAM Andres Freund <andres@anarazel.d=
e> wrote:
> > =3D=3D Affected Systems =3D=3D
> >
> > The attached de-obfuscated script is invoked first after configure, whe=
re it
> > decides whether to modify the build process to inject the code.
> >
> > These conditions include...
> <snip>
> > Running as part of a debian or RPM package build:
> >     if test -f "$srcdir/debian/rules" || test "x$RPM_ARCH" =3D "xx86_64=
";then
>
> Could you please confirm that the Arch Linux binary package was never
> actually compromised?

Answering my own question. Supposedly (as "confirmed" by
https://lists.archlinux.org/archives/list/arch-security@lists.archlinux.org=
/thread/R3HBBSVYIRTXB4O64N2WZX55BF6IIPST/),
"package xz before version 5.6.1-2 is vulnerable". So, I downloaded
versions 5.6.1-1 (supposedly vulnerable) and 5.6.1-2 (supposedly
fixed) from Arch Linux Archive:
https://archive.archlinux.org/packages/x/xz/

I extracted both binary packages and disassembled the liblzma.so.5.6.1
library contained therein using "objdump -d". The files are not
identical, however, their disassembly is. Therefore, either both are
trojaned, or none. Based on the "if test -f "$srcdir/debian/rules" ||
test "x$RPM_ARCH" =3D "xx86_64";then" line, I think that the correct
answer is "none", and therefore no advisory should have been created.
But it's 4:18am here, not the best time to think, so I would
appreciate it if somebody else confirms my conclusion.

P.S. Kudos to the reproducible-builds project for making the analysis that =
easy.

--=20
Alexander E. Patrakov
