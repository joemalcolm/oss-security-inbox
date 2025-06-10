Received: (qmail 19478 invoked by uid 550); 10 Jun 2025 14:46:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13330 invoked from network); 10 Jun 2025 13:38:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1749562707; x=1750167507; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6Ah3zqW9v+Helseoz6RNjhAA17hqH2uSx1IkvEYpcCw=;
        b=x4nK6UpjCzwHKvkKh2g0Csxbza0IThbjQ5TCXvIAHvlx4xHM/qK4YEexPuz/vApHJn
         +7FUUZcAxbrIUUquS4tKi8a2DxzeiycVGikwnPN5zyODyloHSOpfekmOSbQKNyXeJuPR
         YNBjII/BajeI7cCyd3Py286uVrHdfqsFd8T9GzcJmB1N/ZeOw9r13kwn9KToVSi6DhYi
         YIGfJyixIFf1o+mDfsun6248kqBjiKSqiMv0swhQbSEedXJNO6dTyqUKQHV1UQ+7T34o
         rpdIAQK1Np6Q2v9buWWE4DZv635moLQ6uLzwytKaUGcepa6L0UqUFgg7SeMihhW+L0T/
         9RzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749562707; x=1750167507;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Ah3zqW9v+Helseoz6RNjhAA17hqH2uSx1IkvEYpcCw=;
        b=kBN5Vzd6c84PNcY4UAbNJ9mm6QV9y08cWU8woftsh9FutFkhdeeCWCxqgmCWmGRwNd
         mlCyeypaUxMnt7flyevpsqJqVnP0fMv8EJFEMkaoq2S20EGHWm7tMcHMKx0oecemCn+P
         ne17H03iico10WvDy1xWXnH9Jsp9etQTobec/o53YkyX1O0KJtUDbtzfcsZL5k+mTaAa
         nzMlG/ownRFASjUshZNQk96Bg/xhWN7IImN0eou+6Nqv2vOkYA0NjoQcLirISNKiKbuf
         d3Hbehj+s3LMa5a+kn8qAp5t2al2loXTqlmBsy+sLZSzf+rmdMnCFwePmF2W0GeqNRO4
         C4XQ==
X-Gm-Message-State: AOJu0YzzKrOvRudxDC5/qacw56qlX4R2+zF+Nyjixy/lh5WP+TWgwSvU
	aTMgIJ9EeuLQuN59vhXGsPtwVHk8/GA7oCxoAjUXB+KX9HTopMpzDfmyHYcb/v/SmOO1Mbu7rxz
	h/VpTHedVFBNb5d1Lg+mo1OjVghMCTEVRHnKNKWnzFi5ty1XHiwB0Ras=
X-Gm-Gg: ASbGncsrsUVaG/Wtkx3KW7mqwKHDDz9u66rovM1mdymeS9P6ZU8Qk1e0/wNYQikFblC
	XnY8R01HyRIeBQzguvd03PR2DwASDzQn4wZt+uYICxeJAo3Y6QWD1WRCYvXxmGtvsYyd3KibzM8
	+r6DjhD1ukMpio8dlW9QxY/jNuZ3pxcmhwOlTtYND8ztmvXqsZ+JQhY1nwYw7se/yd4B8kvD1AA
	C7rqw==
X-Google-Smtp-Source: AGHT+IECKdjfOyZsouGzpR99Eh7CuNTEFzbz/yAbazWT3j6BUWOfWnyjAYPIYNFADgWHj12O4U3RqfbmGPbERY5O+p8=
X-Received: by 2002:a17:907:c27:b0:ad5:4806:4f07 with SMTP id
 a640c23a62f3a-ade1a9e22d5mr1464731466b.2.1749562706642; Tue, 10 Jun 2025
 06:38:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAN+fQHzDjwHONmFdu17_O-SkiG1i3Z637i-6EsJnnq4rd9HrWg@mail.gmail.com>
In-Reply-To: <CAN+fQHzDjwHONmFdu17_O-SkiG1i3Z637i-6EsJnnq4rd9HrWg@mail.gmail.com>
From: Sarah Boyce <sarahboyce@djangoproject.com>
Date: Tue, 10 Jun 2025 15:38:15 +0200
X-Gm-Features: AX0GCFt8fnIpp3ZcfVj56zyygtMOHpm-5dBF7GcYXduTLF9KArlgegNosiivcsQ
Message-ID: <CAN+fQHxMprnZ3cD=-2Gviw9hoqwZmAxRr0_StjB=3Gj1d1Wong@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="000000000000a46020063737cf5c"
Subject: [oss-security] Re: Django CVE-2025-48432 (follow-up patch releases)

--000000000000a46020063737cf5c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Corrected announcement link:
https://www.djangoproject.com/weblog/2025/jun/10/bugfix-releases/

On Tue, Jun 10, 2025 at 3:28=E2=80=AFPM Sarah Boyce <sarahboyce@djangoproje=
ct.com>
wrote:

> https://www.djangoproject.com/weblog/2025/jun/04/security-releases/
>
> Following the June 4, 2025 security release, the Django team is issuing
> releases for
> `Django 5.2.3 <https://docs.djangoproject.com/en/dev/releases/5.2.3/>`_,
> `Django 5.1.11 <https://docs.djangoproject.com/en/dev/releases/5.1.11/>`_,
> and
> `Django 4.2.23 <https://docs.djangoproject.com/en/dev/releases/4.2.23/>`_
> to
> complete mitigation for CVE-2025-48432: Potential log injection via
> unescaped
> request path (`full description <
> https://www.djangoproject.com/weblog/2025/jun/04/security-releases/>`_).
>
> These follow-up releases migrate remaining response logging paths to a
> safer
> logging implementation, ensuring that all untrusted input is properly
> escaped
> before being written to logs. This update does not introduce a new CVE but
> strengthens the original fix.
>
> We encourage all users of Django to upgrade as soon as possible.
>
> Affected supported versions
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
> * Django main
> * Django 5.2
> * Django 5.1
> * Django 4.2
>
> Resolution
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Patches to resolve the issue have been applied to Django's
> main, 5.2, 5.1, and 4.2 branches.
> The patches may be obtained from the following changesets.
>
> CVE-2025-48432: Potential log injection via unescaped request path
> ------------------------------------------------------------------
>
> * On the `main branch <
> https://github.com/django/django/commit/957951755259b412d5113333b32bf8587=
1d29814/
> >`__
> * On the `5.2 branch <
> https://github.com/django/django/commit/8fcc83953c350e158a484bf1da0aa1b79=
b69bb07/
> >`__
> * On the `5.1 branch <
> https://github.com/django/django/commit/31f4bd31fa16f7f5302f65b9b8b7a49b6=
9a7c4a6/
> >`__
> * On the `4.2 branch <
> https://github.com/django/django/commit/b597d46bb19c8567615e62029210dab16=
c70db7d/
> >`__
>
>
> The following releases have been issued
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> * Django 5.2.3 (`download Django 5.2.3
>   <https://www.djangoproject.com/download/5.2.3/tarball/>`_ |
>   `5.2.3 checksums
>   <https://www.djangoproject.com/download/5.2.3/checksum/>`_)
> * Django 5.1.11 (`download Django 5.1.11
>   <https://www.djangoproject.com/download/5.1.11/tarball/>`_ |
>   `5.1.11 checksums
>   <https://www.djangoproject.com/download/5.1.11/checksum/>`_)
> * Django 4.2.23 (`download Django 4.2.23
>   <https://www.djangoproject.com/download/4.2.23/tarball/>`_ |
>   `4.2.23 checksums
>   <https://www.djangoproject.com/download/4.2.23/checksum/>`_)
>
> The PGP key ID used for this release is : `3955B19851EA96EF <
> https://github.com/sarahboyce.gpg>`_
>

--000000000000a46020063737cf5c--
