Received: (qmail 20168 invoked by uid 550); 1 Nov 2022 21:09:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11545 invoked from network); 1 Nov 2022 20:57:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7atvybqSLyCjmpKaEI1+BIPTJAfe0sib3kSwTPaZkHU=;
        b=S6C9NPV3/XDrxXnm4r6+TALTiyJCiWYg1/5Fdh7kER9tsd1K24/h6tVgPcI1O+eWeV
         8eb3RNzHA1inZsRais4sBCKHDRIqpILcbTtY914rdIRuBf6w5z6XBhcA/s/6ILdCea17
         NYmGe4T20+CHMtv9t9YhZ4kAXsQWnwPxTPzS7udiZWAGvjPwsTM3YsszrWYgGTjrTPZu
         /uzdPPIOIygbwUOkA5dZ9GBJi5KsWS3eR67VYDAbmnO7yCPKSO4/OsCGZBhuivkV0SM5
         KgIsuC7tZXKZyXoXPjwyHKocGig86gaC1Gv/SE21m0luk0ncWblBAtLAbSA/2EYPqv8/
         4Gfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7atvybqSLyCjmpKaEI1+BIPTJAfe0sib3kSwTPaZkHU=;
        b=vjgVU0/kheVY+2gtMOShK7n4R3kbC3Zb7KLdgH/LXFGZWBk6wfGBxUv4ujhyk0rQwS
         sRF2tWaTuZ9UgRF/uFhr4wDkJ7v7vMaZ2eRs58Si8pNjR7IGjkaNzmJQ1yJhrJkyKOf9
         BRXr3pwpc+uxcNNEhUaA3qJ14ZdpWDqbf/IW5uH53luF+geYRzCFEfGj5c1JqEVynWyC
         69AGQ/agIyeld0KAyYz8DaVTgT+okPF1OUpNHngYAs0lP7lzF4lwoB2wPYKuIOvv3YSK
         HJHtMbdC5k26v6bh3s7ppPrAzltLCy5WZCYgJDjBa9o9oCWmCrlTGI9ajuVZgtFEgAXu
         jb8A==
X-Gm-Message-State: ACrzQf0qyr2czVwGj8Z488PwewyszEdIx/2Dympcywu7UheEWagBvO9W
	neaJXxsVjdf4xVU2SRKTiA6O0k7stTh5iPrAPCmFkGe0WZU=
X-Google-Smtp-Source: AMsMyM6/DEU6ZxExz6Ku365KDnTM5O04jHpb304oxDmD2dk4hZKosJrzQbeED5vyTNkX+j9qibD8NRDAaQq/WZkX6WY=
X-Received: by 2002:a17:90a:1946:b0:212:f926:5382 with SMTP id
 6-20020a17090a194600b00212f9265382mr21661304pjh.218.1667336257559; Tue, 01
 Nov 2022 13:57:37 -0700 (PDT)
MIME-Version: 1.0
References: <20221101170833.GA10470@openwall.com> <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org> <CAPWQ=1TzQ_e2yHZMXx6Tm4UJG3owZypShvm+VDoxEMcDSDxX+A@mail.gmail.com>
In-Reply-To: <CAPWQ=1TzQ_e2yHZMXx6Tm4UJG3owZypShvm+VDoxEMcDSDxX+A@mail.gmail.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Tue, 1 Nov 2022 16:57:25 -0400
Message-ID: <CAH8yC8mzcw-C257znYHH+qSyXoFVJWaAD=3dbvH3ZxymUtZU0A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer Overflow
 (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow (CVE-2022-3786)

On Tue, Nov 1, 2022 at 3:55 PM Pavan Maddamsetti
<pavan.maddamsetti@gmail.com> wrote:
>
> https://github.com/RustCrypto

I hope this does not start a war.. The problem with Rust is, it's only
guaranteed to work on i686 and x86_64.

Trying to compile Rust programs on armel, armhf, aarch64 and PowerPC
has been excruciatingly painful. The tool cannot compile its own
cargo's on those platforms. I gave up trying to use Rust on anything
but x86_64.

(Don't believe the marketing literature at
https://doc.rust-lang.org/beta/rustc/platform-support.html).

Jeff

> On Tue, Nov 1, 2022, 3:42 PM Dave Horsfall <dave@horsfall.org> wrote:
>
> > On Tue, 1 Nov 2022, Demi Marie Obenour wrote:
> >
> > [ Massive trim ]
> >
> > > 3. When will OpenSSL be replaced by something written in a safe
> > >    language, or at least with a better-maintained fork?  I know that
> > >    distributions often cannot use LibreSSL (because FIPS, ugh) or
> > >    BoringSSL (because of no stable API or ABI), but I wonder if e.g.
> > >    libcurl should be linked to BoringSSL instead.
> >
> > We see this over at https://boringssl.googlesource.com/boringssl/ :
> >
> >   ``Although BoringSSL is an open source project, it is not intended
> >     for general use, as OpenSSL is. We don't recommend that third parties
> >     depend upon it. Doing so is likely to be frustrating because there
> >     are no guarantees of API or ABI stability.''
> >
> > If even the manufacturer says that you shouldn't use it...
> >
