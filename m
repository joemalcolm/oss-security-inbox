Received: (qmail 22033 invoked by uid 550); 27 Oct 2025 18:47:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32756 invoked from network); 27 Oct 2025 17:53:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761587606; x=1762192406; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+6mI8yAe5jsfMqGs6T6yDuu9Hsh4tG78zilMNXNy9HM=;
        b=T9ba1Z98i8TIficO7ucrQr5A8bvnm+88gfXpdUtIT6TvEuYQV3xIpRHgOUJyNrSaKZ
         oPD9wgJpt6LxHpJGBFQ2NCcfxYH2Pu/2y1vkOIdvrXIgwxwJXtNzGZiS2JIymcvSKYeR
         Q1WbQNnpfshwptiZxKZBFXHxVgigzOXTIosIZgRQfCXxTLlcWQi8Gvc+GvWBetyK4lGc
         Aij/3OJJ4N5FaibvGXmLtjgnH526Xhha4xIo0/msrP4Trmrm9nsgypxVsBeBPqnCEoei
         DEIkOazbi2sfkc8JoJ6Vl18Xg5GauO5sBf5JV4kl6KYoV9wIR1+M1UwaGLwH+wMlipqg
         yNow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761587606; x=1762192406;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+6mI8yAe5jsfMqGs6T6yDuu9Hsh4tG78zilMNXNy9HM=;
        b=g0tfimMAUL5/AvE2jibRoc7acdPIjkVQk9U99ZUx41cFB14CtuXFHa6YLt900mnVnb
         4TmDskiYYp6CZwUMmeQ1u4lm+04igHvtpacq+W7QKAvOere3Y3xxe0LZjUoWECEM+zrq
         VI+CpyaqWYWlYkEIkl55wzSFrhEYDL40MqDuorGa5nTovCDXbdBoTMR6hJWSm6Kj6xgf
         cDZ/TRZk5ZNep5TNCB/M675M+jEiQWxfHdlzs4UHamk5bL17SOssC+XpOOkB5HblGpXK
         nuJn87QLCwCEl6DeJ5iAUZZqv2eNQSvid+JlLKXxJF9xGM2z1gJKCxzTDCWfidIZ71IG
         7Bkg==
X-Gm-Message-State: AOJu0Yy8xfv0d4gAm+Mf5XzwQFVhL05bIz/zojq1LsNmFKJ6obFi+CMy
	GkF8iLPiFwfBKHPRPuJAs0KCy1scbQ4ESLtg+tPhuk/LeZp3WvBEsP5p6+oJd0RVWjv5FndY42z
	m6ulSDhhCU6WJgXayMOvHFiST7Bv4fY9RdA==
X-Gm-Gg: ASbGnctQJ1wuxpjytDfGl/v/m9VtdlTz5QAwu/tB2XZRwe+ig0wJgSyFOuCQGmYiCnC
	FMwGf8bVuC091hJhSKsy1AuLxbs1Xmc/yhvNnNTDxv6ojhrhaZIfEbCJA+XuakuivvMN7uBoj/z
	4ctBZOFZUYndvQ/pRwxZZVQU6txOsAvZUDQPbltEHr0B6ZhX03RBospTD6ggwD4HZG/23Lqe1aO
	zJzgfLeKRKRUa+2y4O4V11EbIlS0+P5C6iAVl1W2n3rGDI9LusgLqlxgvDNa2J3OHfBBQ==
X-Google-Smtp-Source: AGHT+IEQyt8eR+6CIzNkM1MVPiG9lr1KaRrfijSXW400wuCN8kMIDKE8K3tqVfkrZYuFxFry+PKxnHpDErlaHEhcnHw=
X-Received: by 2002:a05:6000:186c:b0:3ec:db0a:464c with SMTP id
 ffacd0b85a97d-429a7e7a76fmr653631f8f.44.1761587605548; Mon, 27 Oct 2025
 10:53:25 -0700 (PDT)
MIME-Version: 1.0
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com> <aP-rxft9ra58z9EZ@yuggoth.org>
In-Reply-To: <aP-rxft9ra58z9EZ@yuggoth.org>
From: Andrew Latham <lathama@gmail.com>
Date: Mon, 27 Oct 2025 11:53:13 -0600
X-Gm-Features: AWmQ_bkFbfhS2YajdibQZY4ip3ePMRAqdtQcLhNWFDA-lP6sGNV3-ZCawu_9nZk
Message-ID: <CA+qj4S-=TtjPN5Us5tva1TUo7a2MJKzpXweiQCM=QLMwcq5Xjw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

I sadly have observed that CVEs are required on job postings for
security roles. Publish or perish in another industry.

On Mon, Oct 27, 2025 at 11:29=E2=80=AFAM Jeremy Stanley <fungi@yuggoth.org>=
 wrote:
>
> On 2025-10-27 09:34:03 -0700 (-0700), Alan Coopersmith wrote:
> [...]
> >> The vendor was contacted early about this disclosure but did not
> >> respond in any way.
> [...]
>
> With the flood of dubious reports being submitted by anyone who can
> thumb some words into an LLM prompt and not bother to check the
> results for hallucinated nonsense, I've taken to ignoring or
> summarily closing such submissions to projects I work on as not
> worth my time to respond. This is probably yet another sign that the
> CVE system needs an overhaul or it's going to get ignored when it
> becomes as overwhelmed with "AI noise" as everything else (not
> saying these reports were necessarily machine-generated, but it's
> reaching the point where open source projects with limited resources
> have no choice but to silently bin such nonsense to /dev/null).
> --
> Jeremy Stanley



--=20
- Andrew "lathama" Latham -
