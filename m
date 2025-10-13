Received: (qmail 9898 invoked by uid 550); 13 Oct 2025 22:46:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8067 invoked from network); 13 Oct 2025 18:07:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760378827; x=1760983627; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8OFuPFK6n1tbQ2yszmy2q8umOKCGJeeEOFhAwNGq2RE=;
        b=UCZckota28RItzjdCzLKK6ps2iRuGpJJtQDQuLRJ/8+KTU1Nn4bAMrk5/MgLPf0hJ+
         SCIFLdDr1yR991hLB321Dtk3B6llrG7U5rr7WeVafcw1TkxDYlUWuoEBHTAvUyxBAeil
         EPvBjqYzIDXA/zfTIzhYYOjtfNRrIcbSCAVVSFS/SZEBRlrksPVwVMqnrRM4cwR49MFd
         b8vn+QGJSnJ3AV1vaBTqWTy7cHq8uEtk/rMBI1qFyZebgECez1flN7MYa11G51U4dtyg
         HipYPkb00WXFxrOQLXw6T6JC1J50aDQW5hYZJYwWhMhDACleaVp28ZmqJQu9M8iCJXas
         EULA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760378827; x=1760983627;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8OFuPFK6n1tbQ2yszmy2q8umOKCGJeeEOFhAwNGq2RE=;
        b=DRSXXbGRtORhqQJ9GUa7aiE/zXk8IXLEhHhgxHJDrhyxRl19IgRjbHSM3klXPhIMhY
         8QxSKKFdZgfJLX1nyPuMkZzGwqjZzPZjJsC9+jeWR3YI0+dx543tcMza4BTbHiOz4N1A
         JosEzfy4oyKCOGC++dFU0xbLG4YHrEO9a0hqJ8O8eKdYSuzqXt32D7Bfm4Cj14SSE8HA
         LL08YYypqTTRbvOD7NQalvqUB+qtuHsGUO+Y5/V62LKpInsc0ZwSQ6lmcsYpIWU/b2Bx
         L/TriJjID/2S4W9xUyvJ2V9FMH1vEMswIpIHzg8TDgu/31AZiXAYa5mRqJmifSGilZ1w
         yy4w==
X-Gm-Message-State: AOJu0Ywz3IHY5mHLwBdmSdvE/VZ8SXL1gNr4oJf+CNEQ0IjV0IwnoINT
	EIfjnLJel+OaqH1BciDy6xYZcno6k6hI/XI4N7X1jFRX5b0yzTR2aMtZ/I4ylsN5qpqOQ+9NmMa
	yw6kdoGWsmXxOjzxoLSwNmXr3+BniW3ZcyWGn
X-Gm-Gg: ASbGncsRHrBkUjZwwJasQBXZryhO8hMfqHi5sT7DeTLBmHOibdF4ly4cNsls8fZ9lVt
	02XFGBgcL27t54Xu5PmgXenKJyml9jIRtWW/CyvH1pTY9l2oZY3O9m2VY5MbsEGAp5O1KaEDLEn
	z3K4sHzW8se11NLi4zlTvbWO6kRY0r/kQvLtnYs1Rq46kgXqmwxChWFwd/LxbmG1YTsJjM922uy
	9k/ClPqJ2vxxR9gdy+zPTW6wslQo/R4sSE=
X-Google-Smtp-Source: AGHT+IHg5G+YgdeZ7Zh0h2giJ4l1Aei/WYSEhnHWmy/1NfkrsOV1JYaHVaKg7yCFSNceL7rtKHp5Zp5rjqnZDk2+Ld0=
X-Received: by 2002:a05:6512:3b9b:b0:57a:6d7d:dd7f with SMTP id
 2adb3069b0e04-5906d7735aemr6588211e87.5.1760378826927; Mon, 13 Oct 2025
 11:07:06 -0700 (PDT)
MIME-Version: 1.0
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi>
In-Reply-To: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi>
From: Jeffrey Walton <noloader@gmail.com>
Date: Mon, 13 Oct 2025 14:06:29 -0400
X-Gm-Features: AS18NWDA5gi5GhdQguyd2znzGdk-zmTS6tLg5_U3VgoCLdiMUZsB9EVxil45ur8
Message-ID: <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] BoringSSL private key loading is not constant time

On Mon, Oct 13, 2025 at 1:25=E2=80=AFPM Billy Brumley <bbb@iki.fi> wrote:
>
> Howdy Folks,
>
> I spoke at the OpenSSL Conference in Prague last week, where I stepped
> through the following demo I wrote
>
> https://gitlab.com/platsec/boringssl-keyload-vuln
>
> This was on BoringSSL main HEAD. (At the time, at least.)
>
> Here "constant time" is in the cryptographic sense. Time to load a private
> key should not depend on bits of said key taking certain values, yet it
> does in BoringSSL's implementation. Constant-time crypto code seems to be
> important to BoringSSL / Google.

Forgive my ignorance... I only visited the forge and read the README
(+1 on the additional terms for DJT).

What does the attacker learn besides the key length?  Isn't that
mostly public information, like the TLS options used during cipher
suite negotiation?

Is there an actual private key recovery associated with the attack?  I
did not see it in the sources I examined.

And how does one get a server to repeatedly load a private key that is
usually loaded once on server startup?

Finally, how does an attacker change a server's governor, like from
userspace or conservative to performance?

Jeff
