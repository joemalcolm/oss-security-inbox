Received: (qmail 23992 invoked by uid 550); 7 Aug 2024 19:28:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1532 invoked from network); 7 Aug 2024 18:14:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723054468; x=1723659268; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vRTdojW1HPwsODbNGH8H8LSCRtcvp0WnoInB2vB7/s4=;
        b=fCTn89C1TCxg4uSuBTySaWlvmakikSJ7ZWFvo3a9xGKpLktTLAgBU4RKvvH4vVk3uu
         9edmF19Myu/fD7CV9Kp6hjyaznQWyA8IlvovqGqPokDKeuQrxfcECQ/1FySK3isLD5tH
         d/AH5etpx8HaiUb6blqUt0+n10/j+QkdYvq+nK0z7LA9O9cBaQt80ISo60qkTfqUHJCQ
         8/joBmSm2cyHS8JoUJGYNQA0/GmNXf9xGlF0gpSfIDesMy/mm5UceXjNZXdBOw67AXfj
         OB3mDjP2UT+Nx/laWPCOUDlT9BsIvTNyn9u5UNbLvLAv2gQARaL8mTGXQcgbCN3KYZ9A
         kRkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723054468; x=1723659268;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vRTdojW1HPwsODbNGH8H8LSCRtcvp0WnoInB2vB7/s4=;
        b=B0ufgq3p/+fOZOtQ9mCWguDmGaDl2DZh7lxG6ANQJnJz9wRgY1vkPGFMWNuu9np3Tf
         2lvcq08JWGP0Zeapy+me5dkUeuNYsNiQCvNDtr2NZoMRF9KKUmUY08C4kFJDrxG3NfnB
         qDM3Z08tviigrxZk6qI1nkcBH4KGV0uOnxkPQQsZ9TtQDlGOaI832hudTSZnyGf8Mx0N
         kMN5RjacxmO+M6s6j8ZdLdDMeGx99PB0zfglibdGT0LU6XICEJyyEvtgKQNix4c9TlJP
         vRmhAiFqJxACp34Tqbkj0LIUtssEfaqsUQHo0hWtRSyllNkhYnPhJPhAWVs4F6MTo1du
         QC4Q==
X-Gm-Message-State: AOJu0Yw/moe2gtLpPFmDjAo1xD2rhS72EpMvOl9/R/tx3J6gW/NDlPuk
	KeNeIjWo/vc+KgZZHXolgD9bmTXMjVvPiu/ZLcnanfX4m7lWp6AKM4M653aaGTaY6Q2yQP2rpYn
	nH/Yv0fHRVUA4EJnDN9vmTddSFVkZDQ==
X-Google-Smtp-Source: AGHT+IExxJVx1TbfRMoVym860i1DsONzWcxl5L/cfnq/N3tGPfuXk96tkw1biZ9AXypDIihT7PUsNDd4IAtgWpbYMx8=
X-Received: by 2002:a05:6358:8a1:b0:1a6:b0b1:f036 with SMTP id
 e5c5f4694b2df-1af3b9ff2bemr1502141055d.2.1723054467959; Wed, 07 Aug 2024
 11:14:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJv8PDeCxQQJVxH@itl-email>
 <20240807144047.GA12108@test> <20240807174807.GA4206@openwall.com>
In-Reply-To: <20240807174807.GA4206@openwall.com>
From: Pat Gunn <pgunn01@gmail.com>
Date: Wed, 7 Aug 2024 14:14:16 -0400
Message-ID: <CADz+4x8wo6KaCU9b2s_+VkB08X7U4WWJHj66UfyvRU1qKUUd-A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007dd6ad061f1be1c9"
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS 1.0/1.1

--0000000000007dd6ad061f1be1c9
Content-Type: text/plain; charset="UTF-8"

There are degrees of old; supporting people with a range of computers still
likely to be out there with some numbers is different from catering to the
very long tail (or museum pieces). Taking "the widest audience possible"
too literally would require supporting HTTP forever, perhaps even host-less
HTTP/0.9 (no vhosts). I think to even enter the tent of reasonability
people need to accept that "widest possible" is not a sustainable metric,
and that letting security-essential libraries evolve means letting them
ditch dead weight that may be part of their penetration surface.

For expiring CA certs, I'm not aware of many tools that offer to bypass
checks (although I also haven't verified that many do such checks); do you
have examples in mind?

I'm guessing for that ssl-obsolete idea, you'd want to use dlopen() or some
equivalent so the symbols are never loaded at the same time, or just link
with an older version of the library, making two different binaries with
different linking if need be. I suspect these concerns are so niche that
the few people who might be inconvenienced are also technologically
sophisticated enough to find solutions.

On Wed, 7 Aug 2024 at 13:50, Solar Designer <solar@openwall.com> wrote:

> Hi,
>
> I think there are two categories of use cases that need a wide range of
> supported protocol versions:
>
> 1. Hosting a public server that's meant to be usable by the widest
> audience possible, including from both up-to-date and older systems.
> For example, a website should display in latest web browsers, but
> command-line downloads from the same server should also work from old
> systems (e.g., running LTS distros).
>
> 2. Scanning or crawling a wide variety of systems, e.g. by a search
> engine indexer, an asset enumeration tool, a security scanner, or during
> a pentest.
>
> For both of these categories, it's desirable to have a maintained
> library that supports this wide range of protocol versions.  The proxy
> solution that Demi Marie Obenour advocates for isn't of enough help.  It
> could kind of work for #1, but it'd require two different end-points
> that users would need to explicitly choose between, or some other hacks.
> For #2, a workaround is to use two libraries, maybe trying the newer one
> first followed by a fallback to the older, but this may also be tricky
> (e.g., linking them into the same program might clash).
>
> I have to admit that #1 is becoming difficult anyway as older CA certs
> expire.  OTOH, especially older tools allow to bypass the certificate
> check easily (if they have it at all).
>
> On Wed, Aug 07, 2024 at 04:40:47PM +0200, niekt0 wrote:
> > as a penetration tester, I would appreciate something like a package
> > "ssl-obsolete", that would contain old, working code. While it is
> probably not
> > necessary to fix cryptography related bugs (we know that this part is
> broken),
> > it would be probably still nice to fix RCE bugs.
>
> Right.  But if it's a separate package, then you also need a separate
> tool chain using that package - e.g., programming language modules built
> against it, then separate builds of the tools you use directly.  Or just
> an older LTS distro that's ideally still maintained enough to fix RCEs,
> but then you may be unhappy everything else is also out of date.
>
> Now, I am not saying any of this is necessarily enough reason to keep
> TLS 1.0/1.1 in OpenSSL 4.0.  Possibly not.  LTS distros to the rescue.
> This would mean somewhat slower adoption of OpenSSL 4.0+, but quicker
> deprecation of TLS 1.0/1.1 on the Internet.
>
> Alexander
>

--0000000000007dd6ad061f1be1c9--
