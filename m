Received: (qmail 28044 invoked by uid 550); 16 Aug 2024 15:40:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13803 invoked from network); 16 Aug 2024 15:24:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723821869; x=1724426669; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pYT17Y4kxBO75Bcdexs/2DyxEJGnfHKel0hdoD63UX8=;
        b=HHPSkvuHRmdNof31McZyx6y5Jux6jRJ3zY38eqgOCyXd399T0rp2DHRRq5GRoCDQYN
         kqt0dzkjwikvf1hf01ZxdhuaZh4hsz2xsicws46Myq3LEtg/QNKDNnlajK/TeceRG1lW
         RJ4e5VA1UPzppnJKBp/ja8tkq6uD2wGlqJlKsAkWJNGNueu/jwYGcPufh+qqk1FEPhLq
         /kok0Ji2ZrdRt6YCgaVEoGgb8RVMXCPATznMxS/0KSvS+boDaBT2EXVMEtl6AcuSv5V4
         DG4KuIVqpzwxF8g1MfvGU2hOIeiojUkPDKEM+Tf1vd645ZuEmUjGqk1VJKs10wNTyYaN
         LahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723821869; x=1724426669;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pYT17Y4kxBO75Bcdexs/2DyxEJGnfHKel0hdoD63UX8=;
        b=VHwyj37BYyijIz8dftk4R3ofS+p/I127F2yhzQXwvBuK6O12VqWgFfz+EAaYSFmTLJ
         7VjP67YrSRCBKtyz2LvlCfIYBocpaazQYLWk8w7/4Y1NRORH2P04G3m2WgVdva92P7qX
         WZ2dnIjlXGkniQxu2XrswcIn6tifevWDlvEsNukApGGX3klfvSnA4XdQ6MAalI0X46uA
         37E/K/b1Whlw7bUTR2r8YfxVuQK7kp2DhIO9nINjXRnw9it1SPvnXXLNEQ3os3Ms0UjA
         uOG8L6mBudFZMh/MSI4xX1OOYHg+q6KD2w7oMPfizUYlX6/EXX5lLI337M5wd7YRq70s
         eD5Q==
X-Gm-Message-State: AOJu0Yymtt7Q/oJSqfmzb9YfmcLsDG6yE4/NX4QgkAYJfVKE1IlDQ6pb
	k9old/88px49ROuZFSeyOnoVPwkfpL8cqlXZFoC1cB5rQysczZgtHB46Q2szZLGp934gsIcjXgH
	iCfOTy/N52PdyvOJ3EcDlMl9Hbkze+RL9
X-Google-Smtp-Source: AGHT+IHY8H5vu73tGa6zA3siaJh4I8VjJK6qF9shrrBYZoFv99wgWidnSkAQcx3Wj/HFtnGmpdLaxXxaZzOGKGjxoRo=
X-Received: by 2002:a05:6902:1087:b0:e0b:f45f:65dd with SMTP id
 3f1490d57ef6-e118108825cmr3039634276.57.1723821869064; Fri, 16 Aug 2024
 08:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240815111847.406cf6c1@computer> <66BECFB0.3080704@gmail.com>
In-Reply-To: <66BECFB0.3080704@gmail.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Fri, 16 Aug 2024 11:23:51 -0400
Message-ID: <CAH8yC8ndnyhyMNaQu3N_uUM_yXhd32PwR9odEOeoDe7jC5fQLw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Neil Horman <nhorman@openssl.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS 1.0/1.1

On Fri, Aug 16, 2024 at 10:01=E2=80=AFAM Jacob Bachmeyer <jcb62281@gmail.co=
m> wrote:
>
> Hanno B=C3=B6ck wrote:
> > Hello,
> >
> > I have no particular insight on the prevalence of TLS 1.0/1.1 these
> > days, but I want to make a more general comment.
> > My impression of OpenSSL is that it has a strong tendency to ship
> > "bloat", i.e., features that either barely anyone needs, but that still
> > get added (remember Heartbeat extension?), or that should've been
> > deprecated long ago.
> >
> > If this effort to deprecate old protocols is a sign that this is
> > changing, I welcome this. I'd recommend to have a look at other things
> > in the OpenSSL codebase that should be trimmed.
> >
>
> That actually raises another question:  what is actually to be gained
> from deprecating TLS1.0/1.1?  Did the protocol significantly change or
> is the only major difference new cipher suites?

The big selling point of TLS 1.2 is the authenticated encryption
modes, like CCM and GCM. Prior to TLS v1.2, SSL and TLS relied solely
on Authenticate then Encrypt (AtE), which was provably secure under a
couple of constructions. Otherwise it leaked information. At TLS v1.2,
proper Authenticated Encryption modes became available. CCM and GCM
are provably secure, and do not leak information due to the ways the
ciphers are combined.

If SSL/TLS used Encrypt then Authenticate (EtA) like IPSec, then a lot
of the troubles would have been sidestepped. Also see Krawczyk's The
Order of Encryption and Authentication for Protecting Communications,
<https://www.iacr.org/archive/crypto2001/21390309.pdf>.

> In other words, what non-trivial code paths would dropping TLS1.0/1.1
> entirely allow removing?  (Concatenating SHA1+MD5 is trivial.)

As far as I know, MD5+SHA1 is used in two places. The first is RSA
signing during key exchange. This one can be problematic:

       md5_hash
           MD5(ClientHello.random + ServerHello.random + ServerParams);

       sha_hash
           SHA(ClientHello.random + ServerHello.random + ServerParams);

And:

       select (SignatureAlgorithm)
       {   case anonymous: struct { };
           case rsa:
               digitally-signed struct {
                   opaque md5_hash[16];
                   opaque sha_hash[20];
               };
           case dsa:
               digitally-signed struct {
                   opaque sha_hash[20];
               };
       } Signature;

But the Server Key Exchange message only needs to survive for as long
as 2-MSL (how long it takes for a packet to be determined lost and
retransmitted, which should be under 2 minutes), so it may only be a
theoretical concern. That is, an attacker is not going to come up with
an existential forgery in two minutes (before the TCP timer expires,
and a new message is transmitted).

The second is the entropy extraction in the PRF function. For the
second use case, collisions don't matter. The thing that matters is
the hash behaves like an ideal hash and outputs a uniform
distribution.

> > I also think there's probably potential to remove some obsolete
> > ciphers (DSA?).
>
> While DSA is definitely obsolete (advances in conventional computing
> have begun to approach the ability to plausibly solve 1024-bit keys, and
> DSA keys *MUST* be 1024-bit, supposedly to facilitate smartcard
> implementations), OpenSSL is also a general cryptographic library and
> applications can use its primitives for other purposes.  In particular,
> this means that dropping TLS1.0/1.1 cipher suites does *not* mean you
> can drop the ciphers that were used in those suites.

Jeff
