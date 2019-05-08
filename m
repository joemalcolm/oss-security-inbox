X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4503" "Wednesday" "8" "May" "2019" "23:52:45" "+0900" "Seong-Joong Kim" "sungjungk@gmail.com" nil "120" nil nil nil nil "5" nil nil (number mark "U       sungjungk@gm May  8  120/4503  " thread-indent "\"Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10184 invoked by uid 550); 8 May 2019 14:55:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8023 invoked from network); 8 May 2019 14:53:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PWFlQ58qRl/ZpOVobjQ7qZQh7ClQEz8lt2GCa1vyia4=;
        b=LZ9Za/G59fBkSjhtm5qFsTZn5mkksNu0rPAqCcuyhMvu7T+29tRkzOTVewIaItjGsB
         KYxasDsPeChwBLQvWFFWD0X3mw2wK49ZEK+0uO4i2TQkq3MLAaqgwygOxFEMol0d8ZvN
         oZmzaDTYqqGdeZGrspf2xxaHmc2ZX2Lq2RcV1AKMjT15k8exI23ZSnrHtZ6JkBgubmqo
         fvBPkFNPLFEEBoWuTcOR9RS1uElZxqzFftYhfz1tLs+wIDlgtosO4Yu0XJtrWm56YQC8
         hjUt8vPDdd3jIBp5L6Rste+WdpDPH8BA+5aGJ+D6xecuhaIJCaxdKktmNkwt2Cz9PQwF
         9s0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PWFlQ58qRl/ZpOVobjQ7qZQh7ClQEz8lt2GCa1vyia4=;
        b=f3vlASOZCBpXmpUJGPCKYCKEtn/BmfA0fmF3VVxAGgrxNR0ejrB6a78nQlzxc2f/BK
         IBn/RUrY2ge8yl11uH2MlrVH78y+dvAZuPz+y0wCSDUVsCNhifKn05ws603CEw8fT0BC
         FFT45l2RUJDZ9KqVJ+iojVqqpKbWRJdqmyFwOhNWryGCPHVpJ3nAfkQyIbbMW4kUKtuk
         gMH0Cy3iF/R4jjPggVyqZSpn29gbEPkiR55oxrxntavcaunXzoICkcMFIhX5O4GBLhOA
         epr4MyuBzrTE1+i51vMQlBPyxITt+PAa4YYLSf02sL1AF25tdA5ZqzonW73EoBT79zDC
         pRRA==
X-Gm-Message-State: APjAAAUZ6NXJEhEF3YLzjYrAT19QPM4Fh8XskKmsUVS+5f/TWy8NYzFr
	Rpscoe/y4EyE5Ao4EKqILiUe7xVhI0Wh5MPCtjg=
X-Google-Smtp-Source: APXvYqytVLGEOgAUxcCK0aLE37RLmluEbYcXYah4/1QIcJaxCyUOqubRcG0xv1pZKS4kKoaAi1mqLBXwgCpaIgP60MQ=
X-Received: by 2002:a50:f5d9:: with SMTP id x25mr33941999edm.128.1557327176753;
 Wed, 08 May 2019 07:52:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com>
 <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com>
 <alpine.LNX.2.02.1905081051030.29468@i8.fpunygfrxha.qr> <6fe9f0a9-01d6-369c-5146-23c7a6d9555c@thermi.consulting>
 <CAPZbWnfDh0dZ8wpnLN7OsXAkKrBPyfnt52Cnz=74t4XCVXG3BQ@mail.gmail.com>
 <dc36d64e-ac76-29f7-5d54-225b54c2d707@thermi.consulting> <CAPZbWnfVUF-YR21kg=1c7Yh8wW=QBhOd0hW+2pvMjf+eyA=KUg@mail.gmail.com>
 <CAPZbWncGi8L7OkotuHnajwKutYEmPnY8oYc6gwG8yeMY0wPTNA@mail.gmail.com> <alpine.LNX.2.02.1905081352280.25606@i8.fpunygfrxha.qr>
In-Reply-To: <alpine.LNX.2.02.1905081352280.25606@i8.fpunygfrxha.qr>
From: Seong-Joong Kim <sungjungk@gmail.com>
Date: Wed, 8 May 2019 23:52:45 +0900
Message-ID: <CAPZbWneYGdx28ts8NFhqA2S52jhJm1A56cpEkOjpyWpUSnqNGg@mail.gmail.com>
To: Roman Drahtmueller <draht@schaltsekun.de>
Cc: oss-security@lists.openwall.com, 
	Noel Kuntze <noel.kuntze+oss-security@thermi.consulting>
Content-Type: multipart/alternative; boundary="0000000000002b66260588617d85"
Subject: Re: [oss-security] Re: fprintd: found storing user fingerprints
 without encryption

--0000000000002b66260588617d85
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think that maintainer of fprintd should participate in this conversation.
As I mentioned before, I've just reported this vulnerability to the
upstream and shared the contents of maintainer's decision.

BTW, we first need a consensus about the necessary for protection of
fingerprints.
If not, there is no need to talk about it no longer.
But, I think it is worth protecting fingerprints as others have tried, that
I've mentioned before.

If you agree with this, it seems that we need more discussion about solving
the problem.
Also, I wonder if your solutions are already proven way to solve this issue.

Sincerely,
Seong-Joong Kim.

2019=EB=85=84 5=EC=9B=94 8=EC=9D=BC (=EC=88=98) =EC=98=A4=ED=9B=84 10:13, R=
oman Drahtmueller <draht@schaltsekun.de>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=
=B1:

> [...]
>
> > I am not insisting that encryption key should be on the disk or is
> > encrypted with a static key that is embedded in the binary.
> > Instead, we can make fprintd to use a TPM, if available.
>
>
> The problem persists: The encryption key must be available for the FP
> data to be accessible, and so it is for an attacker. It doesn't matter
> where you store the key.
>
> A TPM (and, transitively, products that encrypt with TPM-sealed or
> TPM-bound key material) is good for the situation where the system is
> physically stolen while powered down (or the drive fails). But that's not
> our problem here.
>
>
> > Otherwise, but even though it is not perfect, it would be better to app=
ly
> > the fingerprint data protection, such as keyring or access control,
> rather
> > than raw fingerprint template.
> > FYI, Windows Hello might use Next Generation Cryptography (called CNG) =
to
> > protect and store user private data and encryption keys.
>
>
> There are not many options left to solve the stored credential problem,
> and it should be clear that saving a file, encrypted or not, is not the
> solution.
>
> One possible solution is to use a hash algorithm, potentially cost-based,
> to derive a bit string (that is suitable for comparison with the
> persisted authoritative string) from the output of a fingerprint reader.
>
> Another one is to use the fingerprint reader output as input to a KDF,
> which unwraps the private key of an asymmetric key pair, against which a
> challenge can be requested or which unwraps further wrapping material to
> bootstrap a key hierarchy (that can be discarded and rebuilt at any
> useful time). (*)
>
> >> I think that this is similar approach with Lenovo Fingerprint Manager,
> > Microsoft Windows Hello and other products.
>
> I can only recommend to NOT TRUST in any security value that is not
> satisfyingly documented and/or open-sourced, but instead to expect the
> worst.
>
> The worst btw is introducing a false sense for a security value by
> wipe-the-eye type of design (security by obscurity).
>
>
> (*) Note that the overall system design for a multi-purpose key hierarchy
> must be able to cope with the requirement that "master key data", which
> might encompass biometric data, must never be accessible even to
> operating system components. A small portion of memory that is accessible
> only for a very small, associated portion of code, doing only minimal
> things, but never let go the secret. This is non-trivial to build and
> typically mandates a root of trust beyond the O/S builder.
>
> > Have you read the following papers about fingerprint image reconstructi=
on
> > technology from standard templates?
>
> [...]
>
> Those are all good papers, and all of them potentially lead to the
> conclusion that
> a) your fingerprint is a username, yet not public, but not secret either
> b) your username is subject to being copied, regardless of how it is
>     manifested.
> c) biometric authentication is flawed unless combined with
>     other authentication factor types
>
>
> > Lastly, as you mentioned,  it is a stupid idea to use it for various
> > authentication.
> > But, it is still working on various authentication/identification syste=
m.
>
>
> Make informed desisions about the sufficiency and adequacy of your
> protection measures based on:
>
> * the value of your assets
> * the threats against your assets
> * the risks that threats against your assets create damages
>
> In movies, the fingerprint-reader-protected-only "max security" lab
> isn't.
>
> R.
>

--0000000000002b66260588617d85--
