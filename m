Received: (qmail 15823 invoked by uid 550); 8 Aug 2024 12:53:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14274 invoked from network); 7 Aug 2024 21:11:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723065091; x=1723669891; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k8gaJby62z6a4F377rrY77gEytcB5xp2JFIIKyK84/Y=;
        b=MHWZSZM0vzoCGkenhhD1zFhdNXdLFxPurf4hiigBN/MTrwOQr+GE3SRYIUod/uNlQm
         rjzJu9V0Zr6U7+2MX3luhR6IhIwe7w1SRtdr6EnQwLEbF0Fz53JIp62KqoKwHR2Pr4Xn
         47NhWphqEJHE8GCCFxxfdavvj942JX97ZW7U8mHB+LxeDusDmOARMsbzbZJA8uDCTxSc
         VIYIWlrVel9OlYm/5fP2THiWNPrpK6IRDZ8zIWpQBf7s+eal/ZOA/c8K5Tly81Ib4lML
         uwnTfRrhmtPCJlBCNWD5UPLJxV/xEg9zzz7oGSXqTKYHYcjz5jnFxXdu+HTwFkwuJsk6
         Ej6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723065091; x=1723669891;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k8gaJby62z6a4F377rrY77gEytcB5xp2JFIIKyK84/Y=;
        b=pRESjOTlrgBeSZzONJhHwf8cYmmg9PFmtRPTvO/lC67IAWdMVuuUmB9CR/5iSLTjJp
         81aXjzjVXjI/k0yzsggh5rIKmBWHR1ZDuhfMz2EoShemTbt71NADfOE8ickutrEB3Kmm
         tmPMHgTev8oGS1MDsDA2fDXAsZKSS/FKa+cm7FLyDOKPEQTK+vXqQ3RulRZIIjNuezYv
         BAIshNDZVXuZFTk+pZhyQH6dgNd9M6cJAkDPSvDkxhkRaq+4OOP/IBhyM5qF+wDrn0rX
         gfwfKkChWyLyOyFE1v1vBNY4HCb0Z0S91tDZmYh7/zVgQi8sDCvyIh8DvEXFjtUykMoe
         9wtw==
X-Gm-Message-State: AOJu0YyyPYkw1XQka5q/cczmaPms/QOT9tgO+WFD0ZgxKj0CGIsywlSW
	d1btlCciRV2wC0QpfrRNZ83iCnT5SPLacuRPYvJeWSrvhHQxctKBpGT//NGfjW+Af4D5DBXENm/
	3120SFLAvFdXnJjNSi/sNYDIlQK/IptjG
X-Google-Smtp-Source: AGHT+IF5L3QW5A5hPflywufggviQq2mIzQtY4pnKd2LdkS6tPDtk1/r+Mz2FnYgN+nSxH9t+v4ig3qF5G4OsnOJ2MQE=
X-Received: by 2002:a25:8047:0:b0:e05:cf78:2908 with SMTP id
 3f1490d57ef6-e0e876e6683mr3347487276.6.1723065090791; Wed, 07 Aug 2024
 14:11:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJQpDftQthxOT2g@symphytum.spacehopper.org>
 <1dfc8a2f-cc26-4e05-b41d-0398c925226d@gmail.com> <20240807140212.ls_NX9bg@steffen%sdaoden.eu>
In-Reply-To: <20240807140212.ls_NX9bg@steffen%sdaoden.eu>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 7 Aug 2024 17:10:54 -0400
Message-ID: <CAH8yC8k01PEivvgmP7hk2mW7WTfxVohmFrF7FRr6NwkkzVUj3A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS 1.0/1.1

On Wed, Aug 7, 2024 at 4:47=E2=80=AFPM Steffen Nurpmeso <steffen@sdaoden.eu=
> wrote:
> [...]
> Given that most sensitive software supports easy configuration, for
> example by passing through "MinProtocol" configuration settings to
> *SSL (and i so much like the possibility of a "global central
> OpenSSL configuration file" that bundles all relevant settings,
> yet so few programs support that possibility), topics like these
> always strike me as hysteria.  And before the ears ring, i quickly
> say "as defaults are safe".

Small nit: there is no SSL or TLS min version or max version.

There is a TLS record version, and a TLS protocol version. The record
layer carries the protocol messages. The record version is kind of
boring. It has not changed much, and I would speculate you could
select TLS 1.0 and it would be the same as TLS 1.2 or TLS 1.3 (though
I did not verify the claim). The TLS protocol version is much more
interesting, and it is what people customarily think of when they hear
TLS 1.0, TLS 1.2, and TLS 1.3. It changed a lot between TLS 1.1/TLS
1.2, and TLS 1.2/TLS 1.3.

TLS record version and TLS protocol version are _not_ a range of
min/max. They are discrete versions of the protocol for the underlying
transport (record) and the upper protocol data units (messages).

Also see <https://datatracker.ietf.org/doc/html/rfc5246#appendix-E>.
It talks about how to set the various versions for maximum
interoperability.

Jeff
