Received: (qmail 6064 invoked by uid 550); 8 Sep 2023 16:15:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6046 invoked from network); 8 Sep 2023 16:15:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694189740; x=1694794540; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iNZ8yX2UwUluSbygzNys2GqE/3bFPxxEFprcgaMP5p8=;
        b=isYEhqFYLDvFn3S2970NDDEUpm34GKG6CQ03Qlgemx2YaVuUzJrAGLW/Oj/O2GblrI
         1y+aMkKBmJTicnf6mxVComFirDmyacztRP29+YKN96gFxlkadSOKen9Rw0VKhSrnj9sL
         fEXRR2NAejpBgn5NKa/d5z3lz23kCcxcpXyReaSjUAE8ukvVTxSRatLuqtPq94JGLLjQ
         OkLTb9Dx7TM6nT5I59OQDorn0fln3pIGxF0R4Z4jWQhJ1qNcXRe1EVHSWl6Ut1bEfCj5
         dOwc+fqpIURBob8Dkkx3WfsMjv2J7l4F4EUtr0EiDLhkexKTpaOUfsMMtuFGXhp+4TQN
         qR3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694189740; x=1694794540;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iNZ8yX2UwUluSbygzNys2GqE/3bFPxxEFprcgaMP5p8=;
        b=K6z3wvI9Kn5vkt+RDeKfbW91fsONscqt1lYVjRxsnfNO+SWt8/Xt7tqvrKoBzrxsB8
         THP+dEqgNr/9QP96EIxBDTzXDOcyPWFzwM96Lwcuj5hOVepl5Im7R3DJ67XwqUVP+JmS
         eQ1vbRoZL0Y3/vvoKn/bgRkHn7n+XnH9rkvEHgjaO1e1LMkozzeGnqIEQdSaB1dg+dyg
         Mtt8jg716bKLkdoy0The5Fz8+WFzZz+xnHEkOvGjH2lUqnTznzwMQc7TOXhh7ZCTKkFj
         2z1AASzOJeX3aBZ/3uhG6fHW0bq6+8TSP3Y0GkDX7au01+Ux8NuiU7SWBvVLJrNgNyOa
         FFpw==
X-Gm-Message-State: AOJu0YyaICU3tbClyl44TEHqfGcl32Sm2IMb9RQNYiReCz7d12pJNTyk
	hHHThalcPt+M/WVYqgv66m3DHtX1n1ZbIyixaNDONyuJTPw=
X-Google-Smtp-Source: AGHT+IHHjyM4YQ1al9uL6ic1OAzTcKbQA2Obf/5d46QL4Ag1bcYkdsPzKrfPn46+DaZZwRi9a25Pz99t3mVxOCluSBo=
X-Received: by 2002:a25:b02:0:b0:d71:69ff:ba74 with SMTP id
 2-20020a250b02000000b00d7169ffba74mr2630827ybl.23.1694189740345; Fri, 08 Sep
 2023 09:15:40 -0700 (PDT)
MIME-Version: 1.0
References: <ZPr/3h1O1g0iHyIq@openssl.org>
In-Reply-To: <ZPr/3h1O1g0iHyIq@openssl.org>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Fri, 8 Sep 2023 12:15:28 -0400
Message-ID: <CAFRnB2X-zM6W8t_bE5x=PAwkEB-fUj7JFt8uerXKL1kpPU3o=w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] OpenSSL Security Advisory

Can you please expand on what "we are currently not aware of any
concrete application that would be affected by this issue" means?

Are you saying that you are not aware of anyone using OpenSSL to
provide TLS on Windows, or are you saying that common TLS servers
(nginx, apache, etc.) are not impacted by this vulnerability?

Regards,
Alex

On Fri, Sep 8, 2023 at 7:11=E2=80=AFAM Tomas Mraz <tomas@openssl.org> wrote:
>
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> OpenSSL Security Advisory [8th September 2023]
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> POLY1305 MAC implementation corrupts XMM registers on Windows (CVE-2023-4=
807)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
> Severity: Low
>
> Issue summary: The POLY1305 MAC (message authentication code) implementat=
ion
> contains a bug that might corrupt the internal state of applications on t=
he
> Windows 64 platform when running on newer X86_64 processors supporting the
> AVX512-IFMA instructions.
>
> Impact summary: If in an application that uses the OpenSSL library an att=
acker
> can influence whether the POLY1305 MAC algorithm is used, the application
> state might be corrupted with various application dependent consequences.
>
> The POLY1305 MAC (message authentication code) implementation in OpenSSL =
does
> not save the contents of non-volatile XMM registers on Windows 64 platform
> when calculating the MAC of data larger than 64 bytes. Before returning to
> the caller all the XMM registers are set to zero rather than restoring th=
eir
> previous content. The vulnerable code is used only on newer x86_64 proces=
sors
> supporting the AVX512-IFMA instructions.
>
> The consequences of this kind of internal application state corruption can
> be various - from no consequences, if the calling application does not
> depend on the contents of non-volatile XMM registers at all, to the worst
> consequences, where the attacker could get complete control of the applic=
ation
> process. However given the contents of the registers are just zeroized so
> the attacker cannot put arbitrary values inside, the most likely conseque=
nce,
> if any, would be an incorrect result of some application dependent
> calculations or a crash leading to a denial of service.
>
> The POLY1305 MAC algorithm is most frequently used as part of the
> CHACHA20-POLY1305 AEAD (authenticated encryption with associated data)
> algorithm. The most common usage of this AEAD cipher is with TLS protocol
> versions 1.2 and 1.3 and a malicious client can influence whether this AE=
AD
> cipher is used by the server. This implies that server applications using
> OpenSSL can be potentially impacted. However we are currently not aware of
> any concrete application that would be affected by this issue therefore we
> consider this a Low severity security issue.
>
> As a workaround the AVX512-IFMA instructions support can be disabled at
> runtime by setting the environment variable OPENSSL_ia32cap:
>
>    OPENSSL_ia32cap=3D:~0x200000
>
> OpenSSL versions 1.1.1 to 1.1.1v, 3.0.0 to 3.0.10, and 3.1.0 to 3.1.2 are
> vulnerable to this issue. The FIPS provider is not affected because the
> POLY1305 MAC algorithm is not FIPS approved and the FIPS provider does not
> implement it.
>
> OpenSSL version 1.0.2 is not affected by this issue.
>
> Due to the low severity of this issue we are not issuing new releases of
> OpenSSL at this time. The fix will be included in the next releases when =
they
> become available. The fix is also available in commit 4bfac447 (for 3.1),
> commit 6754de4a (for 3.0), and commit a632d534 (for 1.1.1) in the OpenSSL=
 git
> repository.
>
> This issue was reported publicly on GitHub on 23rd July 2023 by Zach Wils=
on
> (Nvidia) and subsequently to the OpenSSL security team on 28th August 2023
> by Bernd Edlinger. The fix disabling the vulnerable codepath was developed
> by Bernd Edlinger.
>
> General Advisory Notes
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> URL for this Security Advisory:
> https://www.openssl.org/news/secadv/20230908.txt
>
> Note: the online version of the advisory may be updated with additional d=
etails
> over time.
>
> For details of OpenSSL severity classifications please see:
> https://www.openssl.org/policies/secpolicy.html
>
> OpenSSL 1.1.1 will reach end-of-life on 2023-09-11. After that date secur=
ity
> fixes for 1.1.1 will only be available to premium support customers.
> -----BEGIN PGP SIGNATURE-----
>
> iQJGBAEBCAAwFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmT6/5ESHHRvbWFzQG9w
> ZW5zc2wub3JnAAoJEFJ0ZqIcp55tLK8P/joFSPF9oBeoMBcSZJ5eG26WNoqvj2hh
> kYggHZL++wzFpBDgRwjyQW7Pm6BsythIYwId+6+QPJNCxf7juWv7vWuO42KbMqXh
> KnDk4NmFOKv6aF4TahfytgLzljVMwwRs9k+kmFfTNOq66NNiJBKFcIzTp7UlOkUD
> SOwify1Yq/du6jYyXX0tD+l6IfIEBlPPx+o5L8PG5+G+yR8bvHnlu1MrM3jYlil7
> 7AQjqk+115Y6cJpER9FHW5oLApK2yn3mSlQ+0Cn9LjqCaYGAlJTHe1wP9OMmV+nk
> fhH5S714WvMgYxfbNgAsvfLBuahJkCyZ7ddaRF/OZtU5Kk72aK+mFVqxf7hgHHd6
> 0W7xMIdZzhyfytQMKq3IK8bhc1T83nk83FxdDodx0XARNNoMAiYFbnQtuCtZzIM8
> WVXh9Yad37Nxg27rmjYdzezyeGTGT2dlwKMhNqHlp/rf9A67sC+Lrt9UJL7nAyJo
> zmmNjrZQuc+WGpQvKjHxirGuRzqLxPxQNQinXK4X23QsdbiFoMB/INd+7GqKfuOE
> 2kdGH3hBpSoP9MrI9LHqq1G9fNnp/NOgUuwbxFXapDoNZMbOoDftpjZwCyRKqbf5
> PQSDny0hDER43/MNZOnmRlnFJHMjLKxi28BqwZpt6ZmdQM8FpZkNsMWnPic1J0tK
> V+IiOjmRLVcj
> =3D2sPx
> -----END PGP SIGNATURE-----



--=20
All that is necessary for evil to succeed is for good people to do nothing.
