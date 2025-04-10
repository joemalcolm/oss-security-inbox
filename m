Received: (qmail 9475 invoked by uid 550); 10 Apr 2025 13:05:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18015 invoked from network); 10 Apr 2025 06:49:53 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YxMwUexgqcJWlyCyDBgz57a2wB4/9QQO/PU35Z/1VTBsNn33Np8
	oedzvzH1jcjMOAHaLp4vM/58RKtCbYIMUt6uINN/ae6olfqPygN0//XATr1TblV3qviH0RqCNnw
	OKllHmIEahnG/IH83yrPMrCRijjQ=
X-Google-Smtp-Source: AGHT+IEu/sKjbk4s2RCTAxGxZ63yEAJ9M7EgcyMhRTN9MqQaNcOS3zfMqjcOFgtkzoFeXT9VViCToQta4jPXLiFszTo=
X-Received: by 2002:a17:907:f818:b0:ac2:9093:6856 with SMTP id
 a640c23a62f3a-acac035fa34mr123270066b.54.1744267764222; Wed, 09 Apr 2025
 23:49:24 -0700 (PDT)
MIME-Version: 1.0
References: <429849a9-9c33-6734-470e-5dbee3555f96@apache.org> <2f4d59da-0ac3-4b1e-98f7-dae9c23ddeb9@gmail.com>
In-Reply-To: <2f4d59da-0ac3-4b1e-98f7-dae9c23ddeb9@gmail.com>
From: LinkinStar <linkinstar@apache.org>
Date: Thu, 10 Apr 2025 14:49:11 +0800
X-Gmail-Original-Message-ID: <CAF=YEMwo2rWVkB1SpOtw6vu8TVxKMYzGhmtp62uVgEY79pw8gA@mail.gmail.com>
X-Gm-Features: ATxdqUGxB8ry1HmxmcEzHoFFZIuMaDMqgCTsMrQ-PVfcEg4vPDNGPJxM_bE-i3s
Message-ID: <CAF=YEMwo2rWVkB1SpOtw6vu8TVxKMYzGhmtp62uVgEY79pw8gA@mail.gmail.com>
To: jcb62281@gmail.com
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007add3b063266fc64"
Subject: Re: [oss-security] CVE-2025-29868: Apache Answer: Using externally
 referenced images can leak user privacy.

--0000000000007add3b063266fc64
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jacob,

First, we don't have the 1.4.3 and 1.4.4 versions. You can check out all of
our releases on GitHub. [1]
Second, this fix does not affect the same-origin policy. It means that
same-origin images will be displayed usually, while different-origin images
will be restricted according to the administrator's settings.

Best regards,
LinkinStar

[1] https://github.com/apache/answer/releases

On Wed, Apr 2, 2025 at 7:32=E2=80=AFAM Jacob Bachmeyer <jcb62281@gmail.com>=
 wrote:

> On 3/31/25 21:44, Enxin Xie wrote:
> > [...]
> >
> > Description:
> >
> > Private Data Structure Returned From A Public Method vulnerability in
> Apache Answer.
> >
> > This issue affects Apache Answer: through 1.4.2.
> >
> > If a user uses an externally referenced image, when a user accesses this
> image, the provider of the image may obtain private information about the
> ip address of that accessing user.
> > Users are recommended to upgrade to version 1.4.5, which fixes the
> issue. In the new version, administrators can set whether external content
> can be displayed.
>
> This hits two major pet peeves of mine:
>
> First, only versions through 1.4.2 are vulnerable, but the issue was
> fixed in 1.4.5?  What about 1.4.3 and 1.4.4?
>
> Second, the short description is *not* an accurate summary of the
> issue:  there is no public method that returns a private data structure
> here.  The possibility of planting a web bug (this is an ancient issue
> and the reason better email clients block references to remote media by
> default) is *different* from Apache Answer *itself* exposing a public
> method that leaks private data.
>
> This issue is more akin to XSS, except that web bugs are older than
> JavaScript.  The "leaked" IP address originates from the *user's*
> machine making a connection to retrieve an untrusted resource.  Perhaps
> "same origin" should have been imposed on images, but it is not.
>
>
> -- Jacob
>
>
>

--0000000000007add3b063266fc64--
