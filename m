X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3183" "Saturday" "15" "June" "2019" "15:22:22" "-0400" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2WaDePSyVbXkV3tVVeqJXihytA-sDip9hTZcuf5BHoX9g@mail.gmail.com>" "79" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019061519:22:22" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        alex.gaynor@ Jun 15   79/3183  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<20190615205947.56f2315d@computer>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190615205947.56f2315d@computer>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17461 invoked by uid 550); 15 Jun 2019 19:22:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17409 invoked from network); 15 Jun 2019 19:22:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=b76X7dGIP7P+ph1r/taw5AQhYRyuV8w31Jte3v7VhCI=;
        b=PIyfpXxKiMRfVGppwVxN8M5A1txRmYbeDJIVTxZ1fDGvrXu9UryXv1mQ/VLqq5wgTw
         mYzwg+eAQaKeUh3iy1HcN10Tr0S17wD5VkZEMJZL6eaDiZ68WLezZn+xNtRTqAIuAeaZ
         toyElGvU2h5B+0imvwyQa5WEwrXjSLzVhX+KykTXxQW8UQywnYnwMoNMXA4ekXg5+Q++
         QxTmhiHzaDsqWcRb3pM1+MSpuEB6Gpwupvma2GriHkNjYjqir99uk+4ecUH7XBgGu7Lb
         RiIArl93zA2P97JBR2CrHfaNSEKooRJFEXvrvbV2lgx33U8PA7BZE92gnOn8b3hYaVM5
         o0YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=b76X7dGIP7P+ph1r/taw5AQhYRyuV8w31Jte3v7VhCI=;
        b=eXZhqAL9ci+RT7UT2dregsY2zVEHnACgSgzHR6mTF0q9FOJiSOf6ttjXuMOrnYlK3I
         Bkw/05TSYcxPmAmb8GOUmFZro6hQTKVetvB/YZBQzm0IM1gxEyvWz3PweIYZHkvVid11
         vQ/4LkprK70BhLUqMkHXb8Ry8uMjUv5AdDuq6JKMt4PdSiuCqQRLRse7NJy/nkWSwyNL
         pJr9jbuQUP2UVRwm2/iNcMYUltChOM5MWi6xTfHOTJWKWh/QkvRP4iNpuiCTufuV0K0X
         ooGLrgbxKIZvm0cprTKm5UgtQu59aaWS2EGqDTjv1v2kaD/IPaPpGJz5s6yBTZTV6wU6
         eiRg==
X-Gm-Message-State: APjAAAV1SXjTsrjGA9m5PE3nsVytbSw5jEGXTaOXUsUuUCKX+IzzfJ1C
	2kKr0nrIDpfnSfwztxRP7U/QNUj5Y2rflyJWU48LkW8iHOI=
X-Google-Smtp-Source: APXvYqxCmNgOhd3/L1TIGuXQ3MnDNSxlaISgonoL7zrCfec0uaQzt4HN2KMptTYFEjmn3dLnKJpXG0BKlwejA+0zI6w=
X-Received: by 2002:aca:3242:: with SMTP id y63mr5653796oiy.148.1560626555145;
 Sat, 15 Jun 2019 12:22:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190615205947.56f2315d@computer>
In-Reply-To: <20190615205947.56f2315d@computer>
Message-ID: <CAFRnB2WaDePSyVbXkV3tVVeqJXihytA-sDip9hTZcuf5BHoX9g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000725457058b61afb4"
Date: Sat, 15 Jun 2019 15:22:22 -0400
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: oss-security@lists.openwall.com

--000000000000725457058b61afb4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You are completely right that this is not a novel phenomenon, though I
think the scale at which OSS-Fuzz has found vulnerabilities has genuinely
exacerbated this problem.

While it's true, some of the bugs found will not be exploitable, I think we
should not be overly dismissive.
https://scarybeastsecurity.blogspot.com/2016/11/0day-exploit-advancing-expl=
oitation.html
is
an example of such a script-less exploit.
https://scarybeastsecurity.blogspot.com/2017/05/bleed-continues-18-byte-fil=
e-14k-bounty.html
is
an example of exploiting use of uninitialized value (one of the most common
bug classes in OSS-Fuzz, probably because so few people test with MSAN).

I think you're quite right that the central challenge here is the mismatch
between how Linux distributions operate and what their claims/people's
expectations are.

Alex

PS: I'd be remiss if I didn't at least mention that basically all the bug
classes we're discussing are induced by C/C++'s memory unsafety and better
programming language prevent them outright.

On Sat, Jun 15, 2019 at 3:01 PM Hanno B=C3=B6ck <hanno@hboeck.de> wrote:

> Hi Alex,
>
> I think what you're describing has been going on for a while, even
> before oss-fuzz.
> A combination of compiler sanitizers and better fuzzing techniques has
> scaled up bug finding and fixing to a level we haven't had before.
>
> For distributions that promise to backport all security fixes that
> creates a situation where it's almost impossible to keep that promise,
> they just don't have the manpower to scale up at the same speed as
> people find bugs.
> Maybe the main takeaway here is to just recognize that, and maybe
> distros should be more honest here and be clear what they can and can't
> do. And if you run a parser in a high risk environment you may not want
> to rely on the outdated version shipping in some LTS distribution.
>
>
> But I also think it's good to keep some perspective of the bugs we're
> talking about.
> Many of the bugs oss-fuzz finds are of bug classes where it's quite
> unlikely that they directly lead to a security issue (e.g. out of
> bounds memory reads - which asan controversially calls "overflows").
> Even for the scarier looking vulns like write buffer overflows and use
> after free the situation is that these are usually not straightforward
> to exploit. All modern distributions have a combination of stack
> canaries, ASLR and nonexecutable memory. It's my understanding that
> while it's often possible to bypass those, doing so in non-scripting
> scenarios (e.g. in an image parser) is really hard and often impossible.
>
> I guess therefore it's still an overall win. While there's a number of
> bugs unfixed with public information, in the long term we'll get more
> robust code and the number of bugs present should be in steep decline.
>
>
> --
> Hanno B=C3=B6ck
> https://hboeck.de/
>
> mail/jabber: hanno@hboeck.de
> GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
>


--=20
All that is necessary for evil to succeed is for good people to do nothing.

--000000000000725457058b61afb4--
