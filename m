Received: (qmail 9746 invoked by uid 550); 29 Dec 2025 01:00:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11553 invoked from network); 29 Dec 2025 00:23:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766967821; x=1767572621; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4agY+cVqob7CqeAIXoQhk47LIDHp8RTvgagE4YKotWc=;
        b=Lc7LUg7Oh6lrSL4MhieAEFhdrdMuMMMWhWrLcTZqfwKpi4bXsmLjPrPPTLRx6Fd//U
         iiuRSKClQcukShq2YphHvFs85EO4pTMcecb0Sm3RrCKRppdj+bxt68QrGXzSCm9Buapp
         MW477aIhaEto5n3azb4z8R/mMn8Xx6MIFUsH+zUyFLe4zXdZl/W5ECrwkoofZt1ikA0+
         aKeWgkSK0W8ou4e+nY4RjbK3LNW3Wrb5Ju/baw6B1+5YcEXa9kjSpTFbu8u7PuBJy86B
         PhpgOoRzqvQHEJZI6ZqYT/eoCZpv4bc/eHx64NwkNmmyoRCAZ3bxT3r0TR3IeGmIZK3f
         gO3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766967821; x=1767572621;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4agY+cVqob7CqeAIXoQhk47LIDHp8RTvgagE4YKotWc=;
        b=v82ffuB6f53/vQUAOMXlmxtQZkig2Rm16hGFV1ke3B+8PxnP+/Vv1sDoJaoEOvjzXx
         ffYLiT62An+6ZC4OZ8uRvYWAA4dwP1BoEY4UmN4bcx7EoBClL+hvx7ohs1W4fuQ7wtIh
         dsmrUMXLB3Q6zKOlERDVlEsp0fywHNS80F/hwDeITnnEFlRROHlaTaErLcFKxcklVMzE
         GVhC30R0rqS7RRhXslTGlQ3o6guKHuGNCDxLRBOKsccPqa4YkCN4Xo22nHhvQA4Rehml
         fwTNe6BNcwh4ks3g9XF6ZoV8C8eBbddLKZb2JGtC3qY8sy3qP0pmTInx/6Q04gqhKlqO
         TTOg==
X-Gm-Message-State: AOJu0YzSrkXohqMuGed6Fg/nbwSb8EDvfUxOg+PiweDdNpo9uRTgageu
	gCHxKaUI/AtXKnNtao/2li9OE1h5mEAJAybtZeONeQZcjGHe/JhjRWH0Cr41ICNHd2IL2ap1s3V
	mBxQSGIft53N0FDZrX8dSlO7fKfLoiCdVrKPd
X-Gm-Gg: AY/fxX7wbQeKNTmuTnnqrO9RzFoZRvGIMbtCBaQWJgc/nPWFysuAd7X8fv+w3f61CEM
	Mbovv1+G1+R9/xS7p0g3vWQ0O+CJbVRKC8c8oRA5myZlO3QDTQMbpFejIqGFvX6M1ylierWZ7cu
	BY5qySLF2xJNLdcyCPXAeC9KNnij/8i/5Hk3BzDSp3YDVQJw0n1/X3Hl8fiTYhPrEFraTfYXnwU
	Pyj7wiaEsf1FmCt6BFowhFwvioksQuugIS3S7rR9tZp0nSe+KNLI20nGE51IMecJifIIEuICBn3
	q0huAGbqUBIrpu/1M7prKfodJipxqvkzmyilgUlxUhl167mfux62j2thPXLk4aunyA==
X-Google-Smtp-Source: AGHT+IHCKAhS1P5ipJNtBuSkO63X3RqkiDLPDC2IN2rCZ/sUG95nkwyZvcXIRaNM2ssRhh+GZkBQeea8LDsKTPONygE=
X-Received: by 2002:a05:6512:118a:b0:598:f1a7:c70d with SMTP id
 2adb3069b0e04-59a17de251dmr9721309e87.38.1766967821302; Sun, 28 Dec 2025
 16:23:41 -0800 (PST)
MIME-Version: 1.0
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com> <87y0mnj593.fsf@gentoo.org>
In-Reply-To: <87y0mnj593.fsf@gentoo.org>
From: Jeffrey Walton <noloader@gmail.com>
Date: Sun, 28 Dec 2025 19:23:04 -0500
X-Gm-Features: AQt7F2rv91IHzgOEZbeE-ajwO4dGRW_GbShocbj3LYWhbROQTEscZrUF7Kd0PIQ
Message-ID: <CAH8yC8=+OjMZk4ZckBbicLK_q3GHCxRkZXJv_zCqSKa4D0Q-pA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

On Sun, Dec 28, 2025 at 6:14=E2=80=AFPM Sam James <sam@gentoo.org> wrote:
>
> [...]
> Finally, to end the dump of what I know so far: Werner Koch has
> published a response to the cleartext signature vulnerabilities:
> https://gnupg.org/blog/20251226-cleartext-signatures.html.

Also see dkg's post from 2014 at
<https://dkg.fifthhorseman.net/notes/inline-pgp-harmful/>.  From the
article:

    People often suggest that inline PGP signatures in e-mail are somehow
    more compatible or more acceptable than using PGP/MIME. This is a
    mistake. Inline PGP signatures are prone to several failure modes, up
    to and including undetectable message tampering.

Jeff
