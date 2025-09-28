Received: (qmail 17712 invoked by uid 550); 28 Sep 2025 19:50:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13799 invoked from network); 28 Sep 2025 19:18:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759087105; x=1759691905; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gAaX8ScsOojiFRp1PLIyMxvLlZINKuK6VFiYqR/ZOtw=;
        b=Lf2Il23PspuYExVWsZFRXIphf3XQd8y8CjouR3ZbkgQBJJav0vqSGyIFWmR1WrgSox
         PwyaAUdcBas67EXOuuZXy5Jwiw7CHs51k7kq8C7u4qEpYjC4c911ODg3JfhKQtBV9M9s
         GoQLKXe6p0kxpWp8CtS08A/xln+HpFWmOV+rt8Fd3FcBB1mR43q9ryxMbbRvghsd7edW
         9tngc3ZT9gbGEJBgr5lR3tleL9Ue4PuTjnb8SJABe8FwK6wE0gvg5KYEAref1vkSGotP
         GuSbUKiHkNTQquTNmFASVqQuig6b/XzojnOCObKvrmTaUyLDtki9SFAyxnkZ9RLigxZ3
         RBBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759087105; x=1759691905;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gAaX8ScsOojiFRp1PLIyMxvLlZINKuK6VFiYqR/ZOtw=;
        b=s8u1UqICfMRK2Ro+jtb+8mhslHAkUhO0tQiLoc54u2yv/0R4vwOguPCmvIf6YnWCws
         Mc4yghF4/xf/Qujr+RzYuxlhUxg9k/9nVMlnTm9UmlS2UBvG4yd36HoADnbkc9E6JV2N
         LXpqrgKHVnViB5WpkClW6MHf8OkGYUjYnQ+70lOT+BXR2pmSpwXPL03r/gy9k5cbVrO0
         rZmH/Zowm4IdASWMTqu/AvdIBwf7GQdnWE4dTFfHmKBz2g69HRmCfcUXopwNVPTVCIvz
         eh3kZbpNysitzFW7Oq4v2yFYUlfjIe5bfntkrICSpCAosVHgILo2qMZDHDzrbrItuK7Q
         GrWw==
X-Gm-Message-State: AOJu0YzKBgKIpMhSHdLbxtCqJKiGnCCFprV3f9ATfw5QfzOgSFxr/nvT
	rOuo/KAkEB9VcBpoiavc8AlIKheLTsS31G6qZFypRb31PMV66kFg+jPHTBxbhLeHxg9rnWl96us
	DhC+52sVoicnO1fW1u+frtmH5btR1yRsPyLJP
X-Gm-Gg: ASbGncuK6EMyJyVoX/K7WNEWhA0ZEXpYHGqybh8vnPisQ5fBn2ObWfsIZqWUH6PO/cS
	Abu01QiDZJHOkT/uiZ6Ppqm3TLD1w1Mfd8R1V7IyVFkg2DTybOEmqUtzKT/KOYd4dELJ4sTO6bU
	uF9aElyTWRmso8swTUypo9Q3QG1H2AqYVBs6EhCDUn/VyaTtl2PCLNd9Hv3nQx1ibkHIY5p1ts2
	M3bMw==
X-Google-Smtp-Source: AGHT+IFexdxFAvtsQgPUPOl6C1eSBKxBkOLFCf3n7Iq/9Puua+a8XF2HJZZVjMZN09pOa0sbTmjjyyLssK12ih1FOe4=
X-Received: by 2002:a05:6512:2249:b0:571:8fad:ecee with SMTP id
 2adb3069b0e04-582d12ff836mr3776536e87.21.1759087104853; Sun, 28 Sep 2025
 12:18:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com> <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
In-Reply-To: <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Sun, 28 Sep 2025 15:17:47 -0400
X-Gm-Features: AS18NWAGQclhOqq3qpIoUAbWZm7h7LBXMWPHiddzVrBMKjNoH9_YhTaoty1NTNo
Message-ID: <CAH8yC8mQBVE5TZ_N8Cc1FkVGrqgV9rhNeAxoMi2wit5C26weFg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] How to do secure coding and create secure software

On Sun, Sep 28, 2025 at 10:53=E2=80=AFAM Amit <amitchoudhary0523@gmail.com>=
 wrote:
>
>
> On Sun, 28 Sept 2025 at 03:11, Solar Designer <solar@openwall.com> wrote:
>>
>>
>> You claim that "If functions/methods are secure then the whole software
>> is secure."  If we talk C where main() is also a function, and limit the
>> definition of "whole software" to one program, then I'd agree - your
>> claim can as well directly say "if [all functions including] main() are
>> secure then the whole software [meaning this one program only] is
>> secure."  While true, under those definitions this isn't a useful claim.
>>
>> However, if in "functions/methods are secure" you refer only to smaller
>> building blocks, then no, the program built from them may still be
>> insecure.  Also "the whole software" isn't necessarily just one program.
>
> [...]
> But the point is that this is what people have said and this is all theor=
etical.
>
> Can someone give an example as to how a software made up of secure functi=
ons can be hacked?

Authenticated Encryption.  You might have a module that performs AES
encryption, and another module that performs MAC'ing using SHA-256.
But if you combine them incorrectly, you have an insecure system.  If
interested, the way to combine them so they are provably secure is
Encrypt-then-Authenticate (EtA) as used in IPSec.

And the counterexamples... The way SSH combines them is insecure, and
the way TLS combines them is insecure.  SSH and TLS combine them in a
way that sets up an oracle.  In crypto engineering speak, SSH and TLS
are _not_ IND-CCA2.  (IND-CCA2 is a strong notion of security).

And it gets worse.  Some developers use encryption alone -- they do
not provide an authentication tag.  That is, the developer completely
omits the MAC step.  So all cipher texts are vulnerable to tampering.

Also see Hugo Krawczyk's paper "The Order of Encryption and
Authentication for Protecting Communications" (2001),
<https://www.iacr.org/archive/crypto2001/21390309.pdf>.

Jeff
