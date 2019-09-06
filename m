X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3278" "Friday" "6" "September" "2019" "16:33:30" "-0700" "akuster" "akuster@mvista.com" nil "87" nil "^Date:" nil nil "9" nil nil (number mark "        akuster@mvis Sep  6   87/3278  " thread-indent "\"Re: [oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges.\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26620 invoked by uid 550); 6 Sep 2019 23:33:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26602 invoked from network); 6 Sep 2019 23:33:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=vQcvl1PwsaSVwBr2rN12d/IXLOL3Q36mM0jCpA3gwo4=;
        b=JyDL1m+E12vczCnvAYafyi+5DQSJ3KuxJMzFm28q+gzWfkBohNcEu7xEueW7vZrjRz
         lTkN+mrU+aIPCK+El9Kx2Ep9XAOeH/fWIHzwKbtgZwKKLzwfqgZMOyzHiflzVkt6sbhA
         W7EY7rQMGBxmHtMnIcIu8qE/cpL+kyAE/JUGquvY7Y0tj+aCSkL2lxlGvQBQleEN0PAW
         ONvlgmeZR8C7MNrHsuyqxd6anSl1YZBrUbmCvGjgEZ9tvseK2PVbAbMuz3l7YSEU2SMb
         qji2BzIwMMMANOA0H0r09q2mRl7tu+IX5Q/Zv0XWbF12aUF45sFtpKmLGJQlVcJqSXVC
         c6hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=vQcvl1PwsaSVwBr2rN12d/IXLOL3Q36mM0jCpA3gwo4=;
        b=rng4WVu1ThLQIGPPzT7jScpXc7DMkgSQIt/3tookfGkbiAxwFLI3p+lMLwXU65eA3W
         0/AUk3AsSzG4wNSGKwqX8wQnV08JTY3rE1bMYwJq5nxBueO08JNQRrFzxLLshnRHT6FO
         WUap0Oi7MDb3FZfRHXi22AZdzbgSuUXl+qMvI+/CZI6HSEfXq1l4GCT8eK5iZMLpCjF6
         HoMTNkzqSGxH9Cn4+DhnleyAlqrwCbVFvubAMnWJ+zlIZrKT8TuWwGjXmf9oxJ2Fa16l
         aoFlr4XsnJWZrAluaFlP6bdhw7U1/Ij4TIO+JlVzj1zW8mHMQlnD0ElFxvyVwQawKve2
         SVMA==
X-Gm-Message-State: APjAAAXJyPFSDkbaYeXzlbjWWo9xxdmz6mDS6bSql4v4D0Cr6jdfGte0
	uBRnNGp0Yd7lmH9CxoYpTlhLFQXfHpM=
X-Google-Smtp-Source: APXvYqxNy/+yYWChDDhYQ/6ys9U+3mxxioLBinRxtR89mzmz1jXC9rHo1qmvvEwKScrIpqCCxXpRJw==
X-Received: by 2002:a62:e910:: with SMTP id j16mr14087153pfh.123.1567812813581;
        Fri, 06 Sep 2019 16:33:33 -0700 (PDT)
References: <20190906060028.GY3837@jumper.schlittermann.de>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <65720388-e6ae-13fc-aa87-847e0eba5c99@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190906060028.GY3837@jumper.schlittermann.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="mQYOuSsSWgNB2v4qV2wm91BAWJTayst2c"
Date: Fri, 6 Sep 2019 16:33:30 -0700
From: akuster <akuster@mvista.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE-2019-15846: Exim - local or remote
 attacker can execute programs with root privileges.
To: oss-security@lists.openwall.com,
 Heiko Schlittermann <hs@nodmarc.schlittermann.de>

--mQYOuSsSWgNB2v4qV2wm91BAWJTayst2c
Content-Type: multipart/mixed; boundary="N8PxI1HjUp2DFU7A3vavuNXxoxGMJhM4H";
 protected-headers="v1"
From: akuster <akuster@mvista.com>
To: oss-security@lists.openwall.com,
 Heiko Schlittermann <hs@nodmarc.schlittermann.de>
Message-ID: <65720388-e6ae-13fc-aa87-847e0eba5c99@mvista.com>
Subject: Re: [oss-security] Re: CVE-2019-15846: Exim - local or remote
 attacker can execute programs with root privileges.
References: <20190906060028.GY3837@jumper.schlittermann.de>
In-Reply-To: <20190906060028.GY3837@jumper.schlittermann.de>

--N8PxI1HjUp2DFU7A3vavuNXxoxGMJhM4H
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 9/5/19 11:00 PM, Heiko Schlittermann wrote:
> [ This is a re-post w/o dmarc protection of the sender (me). ]
>
> *** Note: EMBARGO is still in effect!       ***
If this is true, why is this on the public list?

> *** Distros must not publish any detail yet ***



- armin
>
> In case you are entitled to access the security repo:
> *and* use the 4.92.2+fixes branch:
>
> The branch got two new commits, fixing a small tool. This tool is not
> designed to process untrusted data, so there is no security issue, but
> it was buggy. It is unlikely to be critical.
>
> You may consider including the fix in the packages to be
> released at CRD (today, 10.00 UTC) or schedule it for a later
> maintainance release of the Exim packages.
>
> commit cdc7f9a9667ecf31d803fc8d1a31b466284360bd
> Author: Heiko Schlittermann (HS12-RIPE) <hs@schlittermann.de>
> Date:   Fri Sep 6 06:57:11 2019 +0200
>
> commit 66935633816a88460f5222f40dc29d1a4e877978
> Author: Heiko Schlittermann (HS12-RIPE) <hs@schlittermann.de>
> Date:   Thu Sep 5 14:56:22 2019 +0200
>
>     Best regards from Dresden/Germany
>     Viele Gr=C3=BC=C3=9Fe aus Dresden
>     Heiko Schlittermann
> --
>  SCHLITTERMANN.de ---------------------------- internet & unix support -
>  Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
>  gnupg encrypted messages are welcome --------------- key ID: F69376CE -
>  ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -



--N8PxI1HjUp2DFU7A3vavuNXxoxGMJhM4H--

--mQYOuSsSWgNB2v4qV2wm91BAWJTayst2c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJdcuzLAAoJEO6LtJn0Vuf5bngP/1OtkO0XI54YSZIwLmrolV92
rvE1Hf7MdnVtRPtVdU2zgR2BL4WmJGpNFhg9GbJEqVGcNkK5ThiIHVAcjqOUJ4no
pU5EZPRYdItZCmQS3yHGPULm0BlezTnGsjxKSCWaD85a8qeNGh40+BX9bsUNiqWG
LvoclTB6ZRWFqBihXFw6XGw8i6Gq5UYoFFOHKeZ8Te3DwEYH7NFL9Rz4S9wyV8wH
qYPYegndhtxF07csJuAk+spHDpX4QE3dnOvyeWEGKLpFZsetyajIBlZ8TbBHTI+m
HQLoO1iF3RlhkcHPwcjlrJSAO4lY7d9jg0bn7remRf7+PM3XN6DhaScQA68drRAn
YogAhfgzllaHVCk7OB/cG5axiTdZhgo6Y2ZsV+75lv3mhjojk6U0md5VD3vPPX83
Ic+jlwayN5k5mpFRxb5CZZAOpj454UrUMatia/8sNvLc2H0qY9VluOrLC+c8Td70
ZgGz2P8t3419ZnEbOO4q0nKbCmGsRu9MPJmG6Q26UA7cAxNPJXde+Y2jl8Wy8GXG
mPvOmLCIcLTwIKxPG27cP+pKEAKVNnVj/vEBlCY536AjnbmRXl8I15guMorqHV+C
mR0IjO8rBqsnS2UZRbOrxSyqQWe+3av26f1w7CLZ4rMx/eHYGhUiJ49+G04xfD4+
vMZIUGGNYSyrBL2l6JhY
=emd7
-----END PGP SIGNATURE-----

--mQYOuSsSWgNB2v4qV2wm91BAWJTayst2c--
