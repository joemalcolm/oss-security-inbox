Received: (qmail 15774 invoked by uid 550); 19 Jul 2023 13:39:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11641 invoked from network); 19 Jul 2023 13:34:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689773639; x=1692365639;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GbKZyJVFTd1s7l9tsqmr4tj7UrtAqJ1GhyW5LT8xPj4=;
        b=XT0rmqvu09Q7liyn3O+nFfziyHevnUDTFSXNh07PIBVNnwmc5oahwrgQLu2dY21PNe
         g6+KkQ3mRX2BhsOuu+9j8/vPlKsc3w7e0sfCRoYO9rnrA0u1rt9lNzdbvl7ZQkWYZl8L
         gibnGntVuQHgUDq45OyelpkkdYf4JCsbA9sWGDrbH2GDNDZb7yYmHVKDI6q/BVKMzp9F
         GqAbZrR7rTyFdv+whiyj5x9Sy32ALcqMljVK3UnZbM3o0ES8Ql3vFNvPZjHVE0vIvw87
         bvxUht8U+u+yYW20eCVbu7/h8qm1W8efIeBnAwlT7azkXAEXjJHX3yF0+0DB7F9ailnv
         /G9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689773639; x=1692365639;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GbKZyJVFTd1s7l9tsqmr4tj7UrtAqJ1GhyW5LT8xPj4=;
        b=hVAgpgvvtei6Xipc8Y1SLTyDvKgSUScguRCQbqdhQItUm9jKkn5ADwRmh3vpW/MTnd
         0aXAgssXsdWFn22SisFQizbBTttjVtAfiB1n2fP3ugfxmrvUeeeKK9kGb4bkxIz2sqqT
         CT+0g7EG0z2ePpzrVfruhiDonsl1QfhduSr4H9OeEJG6xc+oRRmYxfeLYBAQFtsJF6gK
         9mtWt5slsYmL5e7lGfwSKONYafM7McX7ko5AdVI5IJ9HF+ImeIpc92sPOZVTlm6Ld73W
         K/OF2YJBvWq94AlDvbkdPsMjEDNSycTqSj16c3zqR19dlEPCMdpHHpl1qBTNx+BmfKQT
         dUYA==
X-Gm-Message-State: ABy/qLYspSfIvpXdalUZfhxxI+hXirMfHRnT0rptAeLLyuiwsC03T0pn
	OyTVXv0DwC+LJMP28QwvL82llp6vNZEgea/9WuFi3NRJLPg=
X-Google-Smtp-Source: APBJJlHfHfg7q+uzdSi37S6ubSaeVSc1g43qZhfeipSpigy6q7XQCil1XRep4xftrv3a713T6Gdcvi/s/W+zFcTcwV4=
X-Received: by 2002:a4a:2ccf:0:b0:566:f869:6d90 with SMTP id
 o198-20020a4a2ccf000000b00566f8696d90mr1728279ooo.6.1689773638968; Wed, 19
 Jul 2023 06:33:58 -0700 (PDT)
MIME-Version: 1.0
References: <ZLfKifcpS49KPOWy@openssl.org>
In-Reply-To: <ZLfKifcpS49KPOWy@openssl.org>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 19 Jul 2023 09:33:47 -0400
Message-ID: <CAH8yC8n8xX7GK0Lj9ncpTVUzUKdknLiMJGEOYSygzm14xdMmSg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: tomas@openssl.org, Matt Caswell <matt@openssl.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] OpenSSL Security Advisory

On Wed, Jul 19, 2023 at 7:38=E2=80=AFAM Tomas Mraz <tomas@openssl.org> wrot=
e:
>
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> OpenSSL Security Advisory [19th July 2023]
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Excessive time spent checking DH keys and parameters (CVE-2023-3446)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Severity: Low
>
> Issue summary: Checking excessively long DH keys or parameters may be ver=
y slow.
>
> Impact summary: Applications that use the functions DH_check(), DH_check_=
ex()
> or EVP_PKEY_param_check() to check a DH key or DH parameters may experien=
ce long
> delays. Where the key or parameters that are being checked have been obta=
ined
> from an untrusted source this may lead to a Denial of Service.
>
> The function DH_check() performs various checks on DH parameters. One of =
those
> checks confirms that the modulus ("p" parameter) is not too large. Trying=
 to use
> a very large modulus is slow and OpenSSL will not normally use a modulus =
which
> is over 10,000 bits in length.
>
> However the DH_check() function checks numerous aspects of the key or par=
ameters
> that have been supplied. Some of those checks use the supplied modulus va=
lue
> even if it has already been found to be too large.
>
> An application that calls DH_check() and supplies a key or parameters obt=
ained
> from an untrusted source could be vulnerable to a Denial of Service attac=
k.
>
> The function DH_check() is itself called by a number of other OpenSSL fun=
ctions.
> An application calling any of those other functions may similarly be affe=
cted.
> The other functions affected by this are DH_check_ex() and
> EVP_PKEY_param_check().
>
> Also vulnerable are the OpenSSL dhparam and pkeyparam command line applic=
ations
> when using the "-check" option.
>
> [...]

It is not clear (to me) what the actual issue being flagged is.

Whenever an application receives security parameters from an untrusted
source, the parameters must be validated. You never apply a
transformation to a message using key material that has not been
validated. So calling DH_check() and friends on untrusted DH
parameters is perfectly reasonable. In fact, if untrusted parameters
are not validated, then I would consider that a security bug.

I guess that leaves calling DH_check() multiple times on the same
[untrusted] parameters? Or maybe calling DH_check() on trusted
parameters generated by the program itself? Or maybe something else?

Another possibility is, OpenSSL should reject parameters if the prime
field is too large, for some definition of "too large". In this case,
I would argue it is _not_ OpenSSL's place to make that decision.
That's a policy decision that must be made by the application using
the OpenSSL library. In this case, maybe OpenSSL needs a configuration
parameter or user API to reject prime fields larger than a certain
size, like 4096- or 8192-bits.

Jeff
