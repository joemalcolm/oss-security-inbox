Received: (qmail 13370 invoked by uid 550); 15 Aug 2024 10:14:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3405 invoked from network); 15 Aug 2024 02:47:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723690029; x=1724294829; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qhm4JDs2wJhy7b9hfb7FLPYPV39lWrrHPrg6p7AwAFA=;
        b=A/VpPHzHsTStbtaOgx/WxMbmYmIszpA6wVnspK6nzlCUKZUcrg8EO4Pe84Td61WOhX
         NeVCb+qcgHCd37mvfrjZc0eFVQI4EfHODa7rEVpOUn/3/N8HvfpnYuHIwNRNch09zozF
         99W4aooUZsWMAoejNH2oUQ1cUQTeyRBuizxOObFD1lH3UBe+BDWdv6niBLEMPPaxNHNw
         u7J5PZQq3mTv/PB1Z4JKJf3JdpGz1Vhqs/on3PkQpq7mnE9cytB+Y6fsUNqKBeWih242
         Kyd1voplWwpBy0CXdFgqju7VbhSGobQonC1aGL0E4gF1gg1bwFmJ+3Ti2qCnjHcG+jGA
         Vrag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723690029; x=1724294829;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qhm4JDs2wJhy7b9hfb7FLPYPV39lWrrHPrg6p7AwAFA=;
        b=LhI4e3XCUk3QriqrCAqBb8plRrBodGO2fEUnebamFTbwE+hPa3wAF4f5n18/Pt/45g
         YVTv/gjJlqkRw8gPPiP1wrDyE+qaN6NvpNht+sLQuryG3c1V3l+lGoA6AqN22rrUdFQA
         Vf8zDu9A3nZ4xKJ/qDmSn5UteLGcnHU+vfISAkLAfaTnoXITQVo+vTiYavyWnrZD+dfS
         HXxwQwwix9v4TwXURnUCTfJJbiRzBgLFMv1SaO37l5pEJO78Led2cl+B9kioWrurEYBf
         9yDWog4g62xbCj5dgbfzm1aLKVs22/dDTiusx/5yTX/ur3TUcmiMReolRCa0Y0fkK8I/
         aSKA==
X-Gm-Message-State: AOJu0Yz80o2z4pNaLtSZlqCO4642ewi9mpTmBMAqs6O8Brs/N6nmGjbi
	lcbt76GocVOoQ/lCBXnw2fhgoZcNu0QJG81xrIxNhzoRNX4ZIHY/NUn8jQ==
X-Google-Smtp-Source: AGHT+IE/6B/7a9s5lJtfjWCX9dS4GKh8wKFT9x59NblpNLsjA9a7sQZvTrEbrGljCO6h+dZaO2pB3w==
X-Received: by 2002:a05:6830:7102:b0:708:8c07:c646 with SMTP id 46e09a7af769-70c9da24ddcmr6905039a34.33.1723690028834;
        Wed, 14 Aug 2024 19:47:08 -0700 (PDT)
Message-ID: <66BD6C29.7060203@gmail.com>
Date: Wed, 14 Aug 2024 21:47:05 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com> <ZrwJHjO8c5IFN-JZ@dojo.mi.org> <CADz+4x8E0Mj287TGUMkDss9V7FrnTQsHu17aK+vc3GpHoOLsuw@mail.gmail.com>
In-Reply-To: <CADz+4x8E0Mj287TGUMkDss9V7FrnTQsHu17aK+vc3GpHoOLsuw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Pat Gunn wrote:
> OpenSSL is an important and security-critical piece of software; it's
> important that it be maintainable, analysable for security properties, and
> that at runtime people don't have to worry about weird old code paths
> leading to breaches or instability.
>   

By all means minimize the impact and refactor to reduce cruft, but do 
not simply drop the old protocol support entirely.  Doing so opens cans 
of worms for some applications, while giving little actual benefit to 
OpenSSL itself.

Further, OpenSSL is more than just a TLS library, it's actually a 
cryptographic toolkit, so dropping TLS1.0/1.1 does not mean that any 
ciphers can be removed, since the symmetric ciphers are also available 
to applications directly.  Presumably, they are used, albeit less commonly.

> Keeping these old code paths around (and particularly enabled) in "relative
> perpetuity" is bad for OpenSSL and bad for its users because it prioritises
> the long tail (that presumably see very little legitimate use nowadays)
> over the main use; there needs to be some kind of cut-off and acceptance
> that even if a few historical relics are cut off, it's better for the
> mainstream. There are other things that will make those legacies harder to
> use anyhow - cert chains, IPv6, potentially physical connectivity. Given
> the weights of the interests involved, it's not that hard to peel the relic
> cases from the it-works-automatically status into the
> you-may-need-to-take-extra-steps status.
>   

There is a difference between "you may need to change configurations 
and/or build these optional modules into your library" and "you'll 
simply need an old version of the library for that".  The other issues 
you mention are either irrelevant for a LAN or easily worked around.  
There are bizarre legacy systems out there.  I have personally seen a 
Token Ring hub with exactly one port active:  its uplink to the router 
that was bridging it to the Ethernet LAN.

> The Linux kernel removes support for old architectures for similar reasons.
>
> If someone were to argue a metric apart from relative perpituity, that'd be
> different, but I think any reasonable metrics of that flavour would have
> lines that have already been crossed in terms of usage numbers or any other
> measurable.
>   

We did not have the same problem with SSLv3 because it was never as 
widespread.  TLS was far more successful and turned up in embedded 
devices.  The most serious problems with completely removing TLS1.0/1.1 
come from general-reach applications that *do* need to be able to reach 
those "last odd one out" devices, such as asset enumeration.  Forcing 
those applications to bundle an older (unmaintained) OpenSSL creates 
risks that they will end up exposed to vulnerabilities in that old 
OpenSSL version, which is bad because those applications are themselves 
likely to be security-critical.

One way or another, we are likely stuck with a need for /some/ kind of 
support for TLS1.0/1.1 for the foreseeable future.  It need not be 
enabled (or even compiled) by default, but it *does* need to be 
maintained, on the mainline, not on some "premium support" side branch.  
Vendors, even security vendors, will do stupid things to cut costs.


-- Jacob
