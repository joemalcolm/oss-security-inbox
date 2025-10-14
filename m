Received: (qmail 30666 invoked by uid 550); 14 Oct 2025 14:23:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30641 invoked from network); 14 Oct 2025 14:23:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760451814; x=1761056614; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bKComfgMKxOlzK0WNeJrv52KKfit3lGWa1YuCKKJWhs=;
        b=gHtPnmH5bt7bDUCvhjvtgdkgovD6n7ZjAPRYPi13TC0Qem8mUzoovXFj+zeQUPMswY
         eopU3M+5UEgLvkEcxeDGG0bsg/hK/MsTeKqCSdvaLffuJ7l369H0b/52Ra/h3gPsi8TT
         my4VdXCMc7OWCG0swvL7LMEawUrIHUzNODo9IDcLBr3FmlI5/6DNaJlw4FZjL9XwhGp/
         UTEkxw+qZzBFp3PoNv483e65nr2e7hYCTgR7CMTF5NPb/5GQBj/N43qmwH7ykfc6GQl0
         JlK1m+BdBLhbmMyPY3YoI776zr8+Ae/RwFU2ODd9z3K09vcHQPwFLGMOlal0UQzhN6rG
         H1gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760451814; x=1761056614;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bKComfgMKxOlzK0WNeJrv52KKfit3lGWa1YuCKKJWhs=;
        b=DAHaSf/bCavKBkijPGDl+xZM0whWIDpX1iAz6q7bZDNUXY4zLulux6tBJxKkLZ4NwM
         YrDT4poWclAhA8usjAJNNr5ucrQmwvM4NawLFpCYii9NUTQwFVQMxnqTcqYN05LaQ7v8
         PM5WV/tscBtzE7o5EuLAGjwNTy/u6yY4lyQjHo1guqCkGxfve9R0cO9QDyEWJaizyQ5c
         a6wmPilv5fP89MDG1sNORBUI7mZDC24sQMP9afEVlnHTZlbgLl73JIBDMP1P9irpXYr0
         Jb4BiusEjZAFdXwqK7NG8J12ujiV6rs435JYX3/5vlutGD2Ttyt7VU+7luYDfEYY2O+v
         LCgQ==
X-Gm-Message-State: AOJu0YxGg5zl0YInkexAtCvch2M3A1YisXkN5quUlbj5XKtoUHpemRCb
	i5RTJlt8KDmsko35HIHNVoQ+iU934BmO1lb3Sunj7PWCREA50by3IXMN+CTeMFOUTkQD4eefmZl
	/oLr/fVWx5O30yqxl6uOcGpUFBsTA+etQzQ==
X-Gm-Gg: ASbGnctcRlLkuUynTjThjbdxzzoq06xt8lYGAUcl9Q9W9aotnY0Wr8RDeWFKFVF5/lH
	iOrsK++3bzhM9lgIjn9khD+xLrQT2mdW1UAcvR9v/Z1rPvglvAPgyU967xfwLI2MSFGLi6Zndz4
	EYQCd0Z//EB4i+rCZnUmHi5xg49TL9eCH42gjnGMDwbXI2oiuVlWMNkA/cj0Lzc/f7iwpGbDSms
	5auM7jeaM61KnhnvCiZcapYuBEGk6P6dZgCoFOf0JdnPUsfzes1+HZnE1F6LVD91nw=
X-Google-Smtp-Source: AGHT+IEd2Z98oJwhkasrGNHUbLQqqY154eG5kmJXzOXPn2eXJ6z3wEiqu5wPTYQD2C792cRAE12Mh1QHWUFu8tb+GXI=
X-Received: by 2002:a05:690e:1a10:b0:63c:e3dc:bfa with SMTP id
 956f58d0204a3-63ce3dc1538mr13132973d50.52.1760451813817; Tue, 14 Oct 2025
 07:23:33 -0700 (PDT)
MIME-Version: 1.0
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi> <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
 <ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
In-Reply-To: <ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Tue, 14 Oct 2025 10:23:22 -0400
X-Gm-Features: AS18NWDF_UCobcxoLqPu21rRJd0wy21ZSXJfc2e0Oj7cSBL5Q8twnXNeNHTI-sg
Message-ID: <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] BoringSSL private key loading is not constant time

I missed this talk at the OpenSSL Conference last week. And I don't
know what _precise_ claims the BoringSSL folks have made.

But it seems to me any claim like "there are no timing side-channels"
has to have an implicit "relevant to a threat model". It's _surely_
the case that many functions in any library exhibit timing
variability, but if this can't be used to leak anything confidential,
it's not really an attack of note. In this case, as I understand it,
the only thing that's alleged to be leaked is the length of a key,
which already wasn't confidential.

Alex

On Mon, Oct 13, 2025 at 11:07=E2=80=AFPM Peter Gutmann
<pgut001@cs.auckland.ac.nz> wrote:
>
> Jeffrey Walton <noloader@gmail.com> writes:
>
> >What does the attacker learn besides the key length?  Isn't that mostly
> >public information, like the TLS options used during cipher suite
> >negotiation?
>
> It's a proof-of-concept from a very entertaining talk at the OpenSSL
> conference, "Constant-Time BIGNUM Is Bollocks".  The BoringSSL folks had
> claimed there were no timing side-channels in their code, this demonstrat=
es a
> timing side-channel.
>
> Admittedly not a terribly useful one :-).
>
> Peter.



--=20
All that is necessary for evil to succeed is for good people to do nothing.
