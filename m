Received: (qmail 17515 invoked by uid 550); 6 Aug 2024 22:09:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17489 invoked from network); 6 Aug 2024 22:09:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722982137; x=1723586937; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H7ncoE1p+I0OAscqswEnMB8Xbz6EbiLf/+TtvJQq+54=;
        b=HiUz0BYG7HvAs42Sy9NpxINCpXmOg3sGU6W+rB1T+fj70wdVG9Nb5J6tze84/QweUl
         dERo1MW205OwXHZLRYjMzDepmX+A2xGEW+FcUVPy9TEX+tU814qSinGjpYvsoy9ILv4A
         jvA30iW0/NvElTTPkQJ4zfGvoqc/BuzhHqWHCrwilZ/90nTqAhzaC+MdHC58Ehsfi1sQ
         GzstLQGx2xSqE0T1CvFwYYKC0MZSJW6VNgPgIiFNAL1QFL/TJItKrdEUDt+Up7HuneC/
         CU9uhpbQQ4i1bmDTJ4rnt0zB9WrLd+whGPPlDd8LiLmiL6m7X+eaTGFA7Pp0mgPjGv02
         XaDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722982137; x=1723586937;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H7ncoE1p+I0OAscqswEnMB8Xbz6EbiLf/+TtvJQq+54=;
        b=koIj6rAl4AAmGaF7ygHSSAASehivol6xlzgGYSq+6mrF+VJIJ5dQsoo/BWpUULqx+3
         xZ768MaH+oowPxP/wEwCR6a9EY0FOQVM9stZzsZnBbTnaUbq0TVbk0FKCgod469PF2Ef
         D8wNbvOilhOujOjw3y6lZlPSA12uZyddECnKPj9Iqqvw7FxIaE7PWcfsRIgUO31tqWZ2
         ZRNITPjYj0xer2J6sLAYjSxd97ZI0EAT2Wz65hmxjxU1o0eRlmw5rEs2hM1t6HeRmD+x
         d0VGCkvPJUvOHtd9xIDtJo+jVMQRdyNw6Q6ncanQD217RXmwksXjAkM5uoeF12gfVfL2
         KrlA==
X-Gm-Message-State: AOJu0YwWlBKAFymEGQNRfrPUNOw8wghGxPUeKUljIpgDMDJlGUS0rlZd
	P+MK1FGX/MPeB8GC1QEE7ALom9XXhjEM98xtLIjdyo2Uv1Mkr4P/fcqYsp1NMiHpjz4gzq0jZ1X
	RNDMGY0Jf0L/5O2OYN72HVQxRAYs/hg==
X-Google-Smtp-Source: AGHT+IHdKjRuP71n0lBxWaCfaK9575tOCGFY1ngS+3tnIIFcPEsNpahrVFsXd8S3g6shb8zifXxgMyDY/OVi9W9lD7w=
X-Received: by 2002:a05:6902:2b03:b0:e06:1bd:976 with SMTP id
 3f1490d57ef6-e0bde3a553dmr20659945276.22.1722982136923; Tue, 06 Aug 2024
 15:08:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
In-Reply-To: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Tue, 6 Aug 2024 18:08:46 -0400
Message-ID: <CAFRnB2V=WV_vECtLQ1dgxATOd+raWGbqvGjcXyhEQnaCYfjiFA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS 1.0/1.1

Hi Neil,

Answering on behalf of the Python Cryptographic Authority, which
develops pyca/cryptography, the most widely used Python cryptography
library. We distribute binary builds that statically link a copy of
OpenSSL.

1) Yes, we're fine with dropping TLS 1.0/1.1 on this time frame.
Frankly, we'd be fine dropping it faster.

2) We would not re-enable TLS1.0/1.1 in our releases. Users wishing to
use these protocols would be responsible for building and linking
their own OpenSSL.

3) I don't have a good answer for you. I think systems programming is
fairly impoverished in terms of ways to emit _runtime_ warnings. I'd
suggest focusing on compile-time warnings.

Alex

On Tue, Aug 6, 2024 at 7:29=E2=80=AFAM Neil Horman <nhorman@openssl.org> wr=
ote:
>
> Neil Horman <nhorman@openssl.org>
> 4:19=E2=80=AFAM (42 minutes ago)
> to openssl-security
>
> OpenSSL is currently considering the deprecation of the TLS 1.0/1.1
> protocols.  Currently TLS1.1 and TLS 1.0 are disabled at run time, and
> requires enablement by reducing the ssl security level value.
>
> The current proposal under consideration is to explicitly disable TLS
> 1.0/1.1 at build time, in our 4.0 release (tentatively scheduled to relea=
se
> in the next 12-18 months), with an eye to completely remove the impacted
> code in a future major release.  The default configuration could be
> overridden to re-enable TLS 1.0/1.1 at build time.
>
> Questions to the community are:
>
> 1) Are distributions/users comfortable with this approach in the time fra=
me
> proposed?
>
> 2) Would builders of OpenSSL consider using the default configuration (wi=
th
> TLS1.0/1.1 disabled in 4.0), or would they ship with these protocols
> re-enabled in their builds?
>
> 3) If the deprecated protocols are re-enabled, what would constitute a
> reasonable warning mechanism to inform users that these protocols are goi=
ng
> away at some point in the future to pressure users to update to a newer,
> more secure protocol?
>
> Input on these questions is requested and appreciated



--=20
All that is necessary for evil to succeed is for good people to do nothing.
