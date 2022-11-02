Received: (qmail 32731 invoked by uid 550); 2 Nov 2022 12:04:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32553 invoked from network); 2 Nov 2022 12:03:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qdnI/8eaPTlMZhSv+PuPkNq0G071QZcJ48yi9kxYGME=;
        b=JlKpFV9B9qO3Z5ELukQiXixTZ7ykpCGRdoA+rxDcqyVGeBtmTrySVb7e7WLIjkBZ6q
         sTs9oAasp0JYoguhJ44u2TzNEHZePdQn0Tx46ArGdMQLvmEg+UJCzi1rXjvlcsA1Kmsq
         ySK1r89hoyUE07pUf+AXFI68yDRPZyne0x5VvzfDIX+dsCFHyv355E7faSvD9GBbKAD0
         o9TPn0izi/6rwsg8LC9QHS4MHAS8U4eXfcaEqYMdwcejB4ROegRnGHrURVtWMiiV0Dyc
         JrrmbW50Cffi1SDUXYmOI0K/M0JrgiqejkOYe6RIdcUuVEd4rKE/NpucL+hR5sbR11M/
         c6zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qdnI/8eaPTlMZhSv+PuPkNq0G071QZcJ48yi9kxYGME=;
        b=WNS6+LN5QXiDDr8rLlgIjYECdvBBxuUTbd0U2CuemEx2V0JvNanpHDOCKRwhtrJrl3
         +s10I8neMi+/3L8J9apysZw2l6hjQo5BKNTdc9oGUF9fB2J7hHwd3LVqRurhZsPRYfiv
         A4EcRuRznk/cEF0lToCOoRPgaU/o15cGuIjwkZl4trD9I7OnXRs2mEib2ay5+kFLFj7f
         Mk5/oCIQ9U7Heu4tixOKi1Lzd6McefSvMw9N5vZEKY7PJWlhvXG9edPSDUnOaG1uLkOn
         U+Ovw1d4HB73QU480rL/VRPpLe3dr0W+11lkc/F6ZXnY3A+tiXwu7kh3o5d1bqf3/iqs
         +3dw==
X-Gm-Message-State: ACrzQf0iYjxo2f2QGJO3vKz07HbEcHZ+OxGp+1OfkUgTjFfzbi/WNgAz
	YqxDoxsEnalaFKzRZiOKHVyLOUg5c3wX4VA00HsQRF8oMqI=
X-Google-Smtp-Source: AMsMyM5REbuTiUpAKw+4qg2JB13tcWXl6dwPbYBBmT+xVUEKgvTRwq4ZkD1wOsvODITcJ4HPynllA0jkAuqCM6X+3Qk=
X-Received: by 2002:a05:6512:2397:b0:4a2:55e5:4909 with SMTP id
 c23-20020a056512239700b004a255e54909mr9070248lfv.549.1667390623286; Wed, 02
 Nov 2022 05:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <20221101170833.GA10470@openwall.com> <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
 <CAPWQ=1TzQ_e2yHZMXx6Tm4UJG3owZypShvm+VDoxEMcDSDxX+A@mail.gmail.com>
 <CAH8yC8mzcw-C257znYHH+qSyXoFVJWaAD=3dbvH3ZxymUtZU0A@mail.gmail.com> <tjtkiu$jeu$1@ciao.gmane.io>
In-Reply-To: <tjtkiu$jeu$1@ciao.gmane.io>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Wed, 2 Nov 2022 08:03:31 -0400
Message-ID: <CAFRnB2Wyc9uLMz8O-YLQ3JZ1-fUYWr+NpFecYyFYdA1YyB+sfA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Re: OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow (CVE-2022-3786)

In Rust, assuming you wrote normal safe Rust[0], and you had code that
overran a buffer on the stack, you'd get a panic() -- which is roughly
an abort (there's even a mode where it literally is an abort. By
default it unwinds and runs destructors and such). As a general rule,
bounds check issues aren't caught at compile time (in contrast with
temporal safety, which mostly is enforced at compile time.)

Alex

[0]: Rust also has an `unsafe` keyword that lets you do unchecked
things with raw pointers. Using that for basic string manipulation
would be way outside of idiomatic Rust and I'd certainly expect it to
be flagged in code review.

On Wed, Nov 2, 2022 at 7:57 AM Tavis Ormandy <taviso@gmail.com> wrote:
>
> On 2022-11-01, Jeffrey Walton wrote:
> > On Tue, Nov 1, 2022 at 3:55 PM Pavan Maddamsetti
> ><pavan.maddamsetti@gmail.com> wrote:
> >>
> >> https://github.com/RustCrypto
> >
>
> I don't know rust, so serious question - if this same buggy punycode
> routine had been written in rust, what would have happened?
>
> - I assume you *could* write similar logic, but perhaps the argument is
>   that idiomatic rust discourages it?
> - Would rustc have been able to reason about the code well enough at
>   compile time to error out?
> - Just detect it at runtime and abort()?
>
> If the answer is "error out", then I think that's a pretty convincing win.
>
> Tavis.
>
> --
>  _o)            $ lynx lock.cmpxchg8b.com
>  /\\  _o)  _o)  $ finger taviso@sdf.org
> _\_V _( ) _( )  @taviso
>


-- 
All that is necessary for evil to succeed is for good people to do nothing.
