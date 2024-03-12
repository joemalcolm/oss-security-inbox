Received: (qmail 32688 invoked by uid 550); 12 Mar 2024 13:19:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32669 invoked from network); 12 Mar 2024 13:19:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1710249818; x=1710854618; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P/VlbrJ1cxVJtu5lyXpi3Yvg4CoJgCTgGV5KUFhps5A=;
        b=gzRqiFqKguDBkcB+j+e8+fv3vi86ZuPnTgbD2BlogNeKJiRxEcPdXMlnnLSL4rSnxk
         mP/LTjY+CzjTyvxAu6f9TTRsRl1XKtbSaXJi6Vd5pUsRh+RTQvgFMoTiguWKsGO+K8li
         VAVAGfKmxWnNhcHCXDiY5833X5P4VgN6eu3KY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710249818; x=1710854618;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P/VlbrJ1cxVJtu5lyXpi3Yvg4CoJgCTgGV5KUFhps5A=;
        b=HMjBAhT7IcIFpziiQOnvTpRL+sv7SDKap06ywzAUW8IwIwxKlIwWsU+EPaefeC0kp6
         67qGmDJzoqpLhGQIAAVWZaBGIci5LsezfWoPPQBq7HbzMtw55EVyIfneTcyLbxnL4yj7
         ZpE9EAhGVhKwwia1JfehgLcSbgx4OOmHpjvvruqhlFCynrj9qbzCBp2Uq+fD29b0HJRR
         qbEJwI/1s5W0ON7unsTl/H7qyv2wJ/ptZ1huNPbv8zJkd1sElgJC7z18yYDTI6Av6BOl
         y1uqluNREFUtm2kpiLIDxA9OO9QZehb5H2DBFrpiC7JMy9L9yuiR1sK+GTMbdcB06W31
         u1yQ==
X-Gm-Message-State: AOJu0Yw67sO5GpSHe73ht9nsF9RN3QrsvzTtkYN3Hko//TC8Mu3mhFnj
	Qm8PBhZt6qfmy4UJPsFba4hGmyZCPe6etiD/PpObPUs1Dx3RUCef8xtvVgRxb/pjzI+/YyLAGur
	wPGHwlKUiVE23lkEjmVQeJjQXM3+tJ0MWmAAjv15vwD/CSUI716Y=
X-Google-Smtp-Source: AGHT+IE7nuuWzaOoVG23+ji546fAZ3KY55kDbp/OLyi6z5Pv+IQlGJmt8AshTXqk0JLvIT44/I9Sq6Gn+kYia275TY0=
X-Received: by 2002:a2e:7c10:0:b0:2d4:24cc:b499 with SMTP id
 x16-20020a2e7c10000000b002d424ccb499mr2534611ljc.15.1710249817843; Tue, 12
 Mar 2024 06:23:37 -0700 (PDT)
MIME-Version: 1.0
References: <gb6h5yblly7xer6jg6sgn7syzrze3jviotrmfsp3ifgy6rg2jr@igvcqdasmnof>
In-Reply-To: <gb6h5yblly7xer6jg6sgn7syzrze3jviotrmfsp3ifgy6rg2jr@igvcqdasmnof>
From: Armin Kuster <akuster@mvista.com>
Date: Tue, 12 Mar 2024 09:23:26 -0400
Message-ID: <CAKLnGtQHn4SdNEDND-9g7TbF6A6SbpYbW4Z8Tsf9W4ssuDf71A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000decba30613769051"
Subject: Re: [oss-security] Certificate policy: OCSP becomes optional and CRLs
 mandatory for public CAs on Friday

--000000000000decba30613769051
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 11, 2024 at 4:35=E2=80=AFPM Valtteri Vuorikoski <vuori@notcom.o=
rg>
wrote:

> This is more of a meta-security


By "meta-security" do you mean the Yocto/OE meta layer by that name?
https://git.yoctoproject.org/meta-security

- Armin


> issue, but posting it since I expect
> that this change will affect development priorities of
> certificate and TLS-related OSS projects to some degree.
>
> Last July, the CA/Browser Forum approved ballot SC-063
> <
> https://cabforum.org/2023/07/14/ballot-sc-063-v4-make-ocsp-optional-requi=
re-crls-and-incentivize-automation/
> >.
> The central changes to existing policy are:
>
>   * Makes providing OCSP services optional for CA/B-approved CAs,
>   i.e. those which ship in most browser and OS trust stores.
>
>   * Requires CAs to provide CRLs that are updated in a timely manner.
>
>   * (New policies related to short-lived certificates, not discussed
>   further in this post.)
>
> The first two changes come into effect on 2024-03-15 which is this
> Friday. CAs that provide OCSP services are free to continue doing so
> under prior guidelines.
>
> The proposal provides the following rationale for these changes (slightly
> edited for brevity):
>
>   OCSP requests reveal details of individuals=E2=80=99 browsing history t=
o the
>   operator of the OCSP responder. These can be exposed accidentally
>   (e.g., via data breach of logs) or intentionally (e.g., via
>   subpoena). Due to privacy concerns, several certificate consumer
>   products represented in the CA/Browser Forum do not perform online
>   OCSP checks by default - or have signaled interest in transitioning to
>   privacy-preserving methods of communicating revocation status. [=E2=80=
=A6]
>   Concern surrounding OCSP is further elevated considering the
>   disproportionately high cost of offering these services reliably at
>   the global scale of the Web PKI.
>
>   Given this ballot makes operating OCSP services optional
>   for CAs, allow relying party software applications and certificate
>   consumer user agents to consistently and reliably evaluate certificate
>   revocation status using a privacy-preserving check [using CRLs].
>
> Personal opinion: It seems unlikely that most CAs will stop offering
> OCSP now or even in the short-to-medium term. However OCSP support
> (including OCSP stapling support) in open-source software has overall
> been limited outside of HTTPS-related projects with a lot of developer
> resources, and I suppose could have even less resources dedicated to
> it in the future as a result of this change. Meanwhile some projects
> may need to implement updates to handle large and relatively
> rapidly-updating CRLs efficiently. In addition, I guess that OS level
> mechanisms similar to root certificate stores may be needed to
> centralize CRL updates; having each application pull down potentially
> large CRL updates once a week seems inefficient.
>
>  -Valtteri
>
>

--000000000000decba30613769051--
