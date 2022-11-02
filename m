Received: (qmail 17540 invoked by uid 550); 2 Nov 2022 17:27:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17522 invoked from network); 2 Nov 2022 17:27:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KtuoGTS1rRA+9+x3b8fcMlpUn9OA7XQfAI9LAPHO/2A=;
        b=aHJ+sdbHOvFTrJhhRg8UJ3Cft42mXyyMbapj8T8S72jPBEahcWkz+4reoR6OCghRZL
         9YaSBtXGgpFml+6BBmIF/eEHB+G3LvpHyHohka1FWJYCtnn8vpXckL/qPh2KyQlob0H+
         n94UGpEPwRjLlVaMbBapN4zpw+a6J4foxxtZCpNp9SvwL+hlLTI66jp+zDT0YmMlWaif
         nOQB1HzOOw0C+AnWZ2l5Ey2pDWjNoOmUIllsAQjw0DD6LD6BrRgY+UylYmnr5ZpIkdlo
         gXBNLcFw/CGgSeWzow0EtJoRE9fwm8pwRbcnvKuWRjuHYfJw+7tI1etZCOx+rN79rpLp
         TkyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KtuoGTS1rRA+9+x3b8fcMlpUn9OA7XQfAI9LAPHO/2A=;
        b=NlIwe9Ar7YO8nvZIKITI0V5xiAzLZ4rQ3eJkl/xHc7deuCaZbBI9HfuKqKnDk+LLCx
         bXC6y1OiXV/OPGtGxKSbku56QIGzovpwNT3d9TtG6FEyzO9yPl4Te0mMBeawgH0Bdim+
         vgm21Cpk5Kz6SmD8dGUZQdxeJkGdHRTYrHhAP4SKZDCtjgxR6rs9d9Tz/a/9CAxZocAM
         CXfGPaqQ+1t0h9WhR5UwstIkQTqrIe1kCNeg72shDjZHONFf3FCb367PvkmawVtqLHOK
         dhWqwmax0vcrrjblYP1dsEqNxFQNeO1LG2ZbgEEIC4kPLw2cAYsEGsw/jBPx2FDoR8EO
         Wzww==
X-Gm-Message-State: ACrzQf1PPEbFw0FcCmWr1ZW3zCmRT/4PnVCvFEtm43Kc+/4XfQRaCRPc
	FQ54Wf84cdOZPLpykBz3QR2Fw9UjiJhlTPhBZp5OOfZv
X-Google-Smtp-Source: AMsMyM4xVL2qVwHj6PMSibCipIRiN+vKs4zEiENKwnPeFtkkH9VEIuv40grZwn1c311NWyO0dNS1mofd5+9DogHVoFw=
X-Received: by 2002:a05:6512:4002:b0:4a2:6243:8384 with SMTP id
 br2-20020a056512400200b004a262438384mr9369420lfb.29.1667410009097; Wed, 02
 Nov 2022 10:26:49 -0700 (PDT)
MIME-Version: 1.0
References: <20221101170833.GA10470@openwall.com> <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
 <CAPWQ=1TzQ_e2yHZMXx6Tm4UJG3owZypShvm+VDoxEMcDSDxX+A@mail.gmail.com>
 <CAH8yC8mzcw-C257znYHH+qSyXoFVJWaAD=3dbvH3ZxymUtZU0A@mail.gmail.com>
 <tjtkiu$jeu$1@ciao.gmane.io> <CAFRnB2Wyc9uLMz8O-YLQ3JZ1-fUYWr+NpFecYyFYdA1YyB+sfA@mail.gmail.com>
 <tju633$t4h$1@ciao.gmane.io>
In-Reply-To: <tju633$t4h$1@ciao.gmane.io>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Wed, 2 Nov 2022 13:26:37 -0400
Message-ID: <CAFRnB2X3U2K6e14XLpJo7X6bWbRD6mSGsfzmWzReJbQnDPvEhQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Re: OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow (CVE-2022-3786)

The distinction I'd make is that Rust's behavior is guaranteed, while
the factors in C leading to a buffer overflow being unexploitable are
contingent. Users compiling without -fstack-protector-strong, precise
allocation patterns or stack layout patterns, etc all impact whether a
C buffer overflow is exploitable or not.

It's telling that OpenSSL originally understood this to be a CRITICAL
severity, but only after analysis and feedback from many other folks
were they confident enough to lower it a HIGH severity -- in Rust one
would know right off that bat that it was definitely a DoS at worst.

And of course, many buffer overflows never get the deep expert
analysis required to establish if they're exploitable or not -- I
don't need to tell you that the P0 blog is full of exploits of 1-byte
buffer overflows that many people wrote off as "no way that can be
exploited" :-)

Alex

On Wed, Nov 2, 2022 at 1:19 PM Tavis Ormandy <taviso@gmail.com> wrote:
>
> On 2022-11-02, Alex Gaynor wrote:
> > In Rust, assuming you wrote normal safe Rust[0], and you had code that
> > overran a buffer on the stack, you'd get a panic() -- which is roughly
> > an abort (there's even a mode where it literally is an abort. By
> > default it unwinds and runs destructors and such). As a general rule,
> > bounds check issues aren't caught at compile time (in contrast with
> > temporal safety, which mostly is enforced at compile time.)
> >
>
> Got it - thanks! It seems like in the specific case of non-exploitable
> overflows, rust wouldn't have made too much difference (abort() vs
> panic())... although obviously that doesn't mean other issues wouldn't
> have been mitigated.
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
