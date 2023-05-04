Received: (qmail 5640 invoked by uid 550); 4 May 2023 19:12:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17739 invoked from network); 4 May 2023 18:24:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=avenga.com; s=google; t=1683224636; x=1685816636;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FKadLExmsfnlWkuWJe6ricwcKN5NU7WkGdBzfRiqv9s=;
        b=hAnKRuy4ml6vOB1/30zVC9lOcUzE+QQ0voEG+cInbkItHNnwBCSHwBN+oAFu2mmX0S
         AsZnalzT1sAxlsrco9KUV3EbuXyp5AQ/VaRnO+RDqQefhGliFxp3yjI1hLKsPBIA1rDe
         69dmMBiT36f7eryaquKGf7k9gXyWF3xAlSXys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683224636; x=1685816636;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FKadLExmsfnlWkuWJe6ricwcKN5NU7WkGdBzfRiqv9s=;
        b=iNC6s8qZUqdpenM2sb6VZCJSP4eEPgdQIJOswFRi2wX/baRbPOGCU1nupnKHhuTtl4
         8Ni0x1AeaXCo0cFhwsE9kXS34H341MKL7JU19TY5OgsMtan1v8dkezja/t9rRSpvN2ow
         w2O+l39gA69txXB1/nNSxVbcSo2LwRcII5sha7JzrWGbAfb0xnBiRGme8XRcbZ5+8T5J
         1S/dk/qkhagtzLGLxXzxtyu3juYjqFQWqFLsPtYYZxrj+l1yEZ+CLHZshNveDmU7lfGa
         cv0dagSUnYgyumqdVuzmhmv8BRR+QDL9mGE3XPS8fdPbE2CZRkYS1qeTfVJaznubsf3C
         XoTw==
X-Gm-Message-State: AC+VfDydcQeh9n647hoHrNw/h0CT2KM5cGejsLfGtVWQ+b2RKvSZfFpV
	tAdtEXkVY1AUJntkDfUHO8nVaQn2B33hWW709+/yUMzKNR8VWqP2et6h
X-Google-Smtp-Source: ACHHUZ4svW/UOIUPVjeDWYl1+i05GTmD437K0ATR5vlrIDjr3kmPhtEv48+u76vVQaByCkllb+jDEtv7OVjZ8EW1NEc=
X-Received: by 2002:a17:907:2ce2:b0:8aa:a9fe:a3fc with SMTP id
 hz2-20020a1709072ce200b008aaa9fea3fcmr9309222ejc.8.1683224635999; Thu, 04 May
 2023 11:23:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230418154630.eoheygqyom3c7ovw@stig.io> <20230429100407.3yqdy2vtzokv3t5l@stig.io>
 <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net> <30B5E64A-3EEE-4676-979C-A5A39373F46B@dwheeler.com>
 <66e0470c0fcead1656316f51e560586d9411afe3.camel@sambull.org>
In-Reply-To: <66e0470c0fcead1656316f51e560586d9411afe3.camel@sambull.org>
From: Rainer Canavan <rainer.canavan@avenga.com>
Date: Thu, 4 May 2023 20:23:45 +0200
Message-ID: <CAMZuV15xa4hH1TTd_ToPzEi55W04yzoMckiPnE_CtRtqoPYLxQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

On Thu, May 4, 2023 at 7:59=E2=80=AFPM Sam Bull <9m199i@sambull.org> wrote:
[...]
> But, reporting a CVE where there is no vulnerability wastes a lot of time=
 for the project
> maintainers, as we had last year with this CVE:
> https://github.com/aio-libs/aiohttp/issues/6801
>
> As far as we could tell, it seems a random user reported a DoS vulnerabil=
ity to Github
> (maybe?) and got a CVE assigned, with no reproducer or any evidence of a =
vulnerability,
> and just a link to an issue which was never considered a security issue b=
y anybody. None
> of us involved with the project were notified of the report either, we le=
arnt about the
> CVE from other users asking us about it.
>
> It took months to get that satisfactorily revoked and stop getting users =
asking us about
> it (apparently there's no standardised way to tell if CVEs are revoked, s=
o seems DB
> maintainers have to remove them on a case-by-case basis, making the proce=
ss much longer).
> So, something somewhere is not fully working in the process.

As a project maintainer, you should be able to ask the CNA to REJECT a
CVE, or at least have it marked DISPUTED, and that state should be
reflected in all reasonable CVE databases. You'll still have to figure
out how to document it as a non-issue inside your project for your
users to find, but once you've established a working solution, that
should not take months to resolve. I'd suspect that the issue in
HTTP::Tiny would end up DISPUTED, since not validating TLS names is
not the generally expected behavior, although it is documented (in
bold no less).

Rainer
