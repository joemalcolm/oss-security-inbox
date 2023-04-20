Received: (qmail 20468 invoked by uid 550); 20 Apr 2023 16:03:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11509 invoked from network); 20 Apr 2023 15:47:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682005648; x=1684597648;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t/HHJzi7bkox5Da1A6/BjRAmDqIHlFmWzrTDqZeL4jI=;
        b=UTsMJz2PQwEQMDLAk/iwfTPODWybTX4qV9pb2VqiHZeNR9BTOLlKagEbQ8Z+LZJLga
         YnCIO4zVX0aOBZCGXkamvac/JzpP9J3r76eKxSecnG0jom/bMfqDwmj+zIOU4FHMWilE
         8Iok2RThix6vxITfPbvrwxez5dNeXtc3M2Xe31/2WYyox/CtjiRCaNtxszv3JwAwLfZm
         oA2JBHptMzAzgOm9xCjrBoOhIH/KCNtMIjpNT4mNJ2TF2KJHZQQMR97aCX1J7P74CQ3f
         TSHPLec7LB1prZ6gSIHn240nI5DVXgBlE00L5d5rzEhIuT/Y6AtXrZOrAX32ZFk3J1Io
         yTfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682005648; x=1684597648;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t/HHJzi7bkox5Da1A6/BjRAmDqIHlFmWzrTDqZeL4jI=;
        b=fN/fc9JPy4UMhbfxFlRLiIdwuzMxht/XUAoklUN8PqtgzqK7IswLIpD1gSGMpHOs+Y
         vEtt2IyeW3qjmwbwIPr1tWaWaBjttC4I0V1cgHnQXu+xBS0+NSWY0E0DDHcsYO38GwWj
         NqZu5/ZbENa6XxfH+8D6+hhKGE4MJNQGGa992DJwSs7CbjWnT+bau5eUp63cvDxYuwUK
         M8be4er0GRG/O/vWBP+xw8DDjHgF6JMP7Hac+A5oBMKRX+nlNEPe0xF6ErdBFMorStxF
         sDqJQZrfudItodqdjoThZyrwNue0RRYwpxEfni0WLaaHkVpklrS1emA//Q0evTVLg2Ex
         Ivcw==
X-Gm-Message-State: AAQBX9eg0IwNNOuSf8kyFpcZSwXwgXrxlEomPueVZuKar3sDhw3Ay+8z
	l5cyk25wVIA3lB51VNbMO0OGgWrFJtGPPzM7eYU/RBlWF9E=
X-Google-Smtp-Source: AKy350YEBd8QOgDODOsGTayvs2FD0fgNyT2jYOfLX/oA1w1UJQplK6ywulXex7M46nxFeMR/GDQkAsU5WkFr5rJEyvw=
X-Received: by 2002:a05:6830:33c9:b0:6a6:cbd:b3c4 with SMTP id
 q9-20020a05683033c900b006a60cbdb3c4mr534428ott.2.1682005648192; Thu, 20 Apr
 2023 08:47:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230418154630.eoheygqyom3c7ovw@stig.io> <ZD/4ODBjTesPMECg@itl-email>
 <20230419215340.UruCC%steffen@sdaoden.eu> <20230420073459.003a5be2.hanno@hboeck.de>
 <20230420125645.md-Zo%steffen@sdaoden.eu>
In-Reply-To: <20230420125645.md-Zo%steffen@sdaoden.eu>
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 20 Apr 2023 11:47:16 -0400
Message-ID: <CAH8yC8nYOGAsnPkm+f3-b7r4PvZ=QxeKT9DXK=MoFVoFDGav9w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

On Thu, Apr 20, 2023 at 9:05=E2=80=AFAM Steffen Nurpmeso <steffen@sdaoden.e=
u> wrote:
>
> Hanno B=C3=B6ck wrote in
>  <20230420073459.003a5be2.hanno@hboeck.de>:
>  |On Wed, 19 Apr 2023 23:53:40 +0200
>  |Steffen Nurpmeso <steffen@sdaoden.eu> wrote:
>  |> IMO it is no vulnerability at all since it has "always" been _very
>  |> clearly_ (even very lengthily) documented in the manual page.
>  |
>  |A vulnerability does not go away if it's documented, and I find that a
>  |rather strange take.
>
> Hm no, i do not, the latter not at all.  You can bundle a OpenPGP
> / signify / even OpenSSL signature with something and can get
> secure download even over non-encrypted channels.  Even DNSSEC was
> over unencrypted channels for twenty years, and still mostly is,
> so, .. that i say that one day, _that_ is strange.
> I mean, i do not want to start useless and fruitless discussions,
> and it will be treated as a bug in HTTP::Tiny no matter what
> i say, hysteria is king.

According to the HTTP::Tiny docs:

    Server identity verification is controversial and potentially tricky
    because it depends on a (usually paid) third-party Certificate
    Authority (CA) trust model to validate a certificate as legitimate.
    This discriminates against servers with self-signed certificates or
    certificates signed by free, community-driven CA's such as CAcert.org.

I think some of the premises no longer hold.

The threat models I have seen depend upon authentic comms. You have to
know which server you are talking to to ensure confidentiality and
authenticity. There's nothing controversial about them.

There's also the pervasive spying the world has evidence of since
leaks like Snowden. We know folks are being spied upon by the
government, and we know people can be tortured or die from it if they
live under a despot regime. There's nothing controversial about using
HTTPS to help achieve confidentiality.

I don't think HTTPS discriminates against servers with self-signed
certificates. A user is free to limit trust to a single, self-signed
certificate. The docs show the user how to do it.

I don't think HTTPS discriminates against free, community-driven CA's.
Let's Encrypt is quite popular and still free.

A more interesting question (to me) is, how does HTTP::Tiny
differentiate between comms that need server authentication (like
fetching a web page) versus those that don't (like a download with a
GPG signature). The answer is likely, HTTP::Tiny cannot.
SinceHTTP::Tiny cannot determine when the user needs HTTPS (or not),
it should default to HTTPS.

In general, nowadays, I think the person who is maintaining HTTP::Tiny
is plunging on the wrong sword. There are better battles to fight
nowadays.

(Sorry to wander off-topic).

Jeff
