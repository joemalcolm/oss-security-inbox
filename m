Received: (qmail 15516 invoked by uid 550); 3 May 2023 20:15:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7824 invoked from network); 3 May 2023 19:41:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683142897; x=1685734897;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P+6EOa/eQ7cB28E44ypPKH8oekplF/YwbYVGrTE3zYw=;
        b=hjBT76j70shegDq/wPcTMu6WtlJJOHg07PqWNlWoo5Ne/RGJy19qWWavIXBr4xOi1/
         agddvIhmxFstOb78hN5BOmh+VzBJYdYm2TGwEYb2FoSetSsV+UsPJ64DfjW+egEmhKLY
         0FGgxxaoG0fS0n+WRun8l7WRS8NfFy2y+hMrnTeHsILmjHW2ulbPDwWXoHUlYkqlroaa
         BPSZ8MZbaey1MsdqeHr785EiShW2cCcnDcp9IbnrqY5oCTlmgRi7BMGS1uhfWHG95+6o
         qV8xl9XViO4JB7X2Ef3IedTvTDdYjjfAbW4QE8jzcFtRa+rjTER8Cyl/nLFCV2b2gaVP
         HEuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683142897; x=1685734897;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P+6EOa/eQ7cB28E44ypPKH8oekplF/YwbYVGrTE3zYw=;
        b=GyiT0Ygw4W+WI03K21MZSjvcUktduhFNSw6a4Y9HDNwbmgRc81t4CX60ndg9dA4Jv1
         EPCuOi+au2tGRgv8/SKT755USvhSYmlZQwdbwdCwiXpUhcQmPzB+Qmu8MCvPIYZwhqMu
         admKPaIHkHhIc598mXlaavWgsE1pKeL67h/C9FMd2DeYdjhN7U+T0hIxCoDKVOrYpgYm
         0mTiCKdfFzIAsNJ2vGwVy1fwIHVJJwiHseIvYiE6SayKrFFmEHJLjTNP5uvrOIoxWuz5
         r9qknOJ5CJjDUmyZpDWRbPHzclQdvmJNXQ4Xx3H1rLvWMidD4tD9cTwq87GQkXJR6DvS
         FjVQ==
X-Gm-Message-State: AC+VfDwdPLYhVZ028KidvXFYjePwKfFhMJ9IwHOKOI5XtvZKriJ2U2O3
	ZA4I2Vznrs8s8H2vFmm4gzTAZwmIHGra16HP3QqBz+1wCEs=
X-Google-Smtp-Source: ACHHUZ7V6pk+4d23EOI4MuCtAlzvabtojggH+RcrtavIgSBqwe81wUDEcm+WLbiP4vwNAbbrwJcbE8Xm2SIykKPzUEQ=
X-Received: by 2002:a05:6808:5c6:b0:38d:e632:8304 with SMTP id
 d6-20020a05680805c600b0038de6328304mr456880oij.54.1683142897369; Wed, 03 May
 2023 12:41:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230418154630.eoheygqyom3c7ovw@stig.io> <20230429100407.3yqdy2vtzokv3t5l@stig.io>
 <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
In-Reply-To: <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 3 May 2023 15:41:26 -0400
Message-ID: <CAH8yC8mJHfyn1YGpoSWwNs1nFkWnu8pL7KsO9-sTKDrtu8QR+g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

On Wed, May 3, 2023 at 3:21=E2=80=AFPM Reid Sutherland <reid@thirddimension=
.net> wrote:
> On 4/29/23 06:04, Stig Palmquist wrote:
> >
> > - CVE-2023-31484 for CPAN.pm
> > - CVE-2023-31485 for GitLab::API::v4
> > - CVE-2023-31486 for HTTP::Tiny
> > ...
>
> Who actually decides when something receives a CVE?  This can be used to
> defame projects and products as in this case.

"Who decides" can be a tricky question.

Several organizations issue CVEs, like Red Hat and Gentoo. A bug
usually has to meet a criteria, like falling into a CWE category, to
be issued by the organization.

You can also get them from Mitre's site. In the case of Mitre, it is
the person who requests the CVE.

Some CVE's are tenuous or questionable. You often see this from folks
trying to pad their resume. For example, a researcher may request a
CVE for a behavior that requires elevated privileges. In this case,
someone who is Root on Linux or Administrator on Windows can already
do the damage, so the behavior in question that happens with
privileges is not really interesting.

In the case of HTTP::Tiny, the default configuration and behavior is
running afoul of https://cwe.mitre.org/data/definitions/295.html and
https://cwe.mitre.org/data/definitions/319.html. In this case, the
industry believes comms should use HTTPS and the name hostname should
be validated.

Jeff
