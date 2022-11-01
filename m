Received: (qmail 10025 invoked by uid 550); 1 Nov 2022 19:54:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7618 invoked from network); 1 Nov 2022 19:49:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UVpAOsDfBUu7AxIh3R2mMQbQVnxNTBzBN4WAv1Mw6JA=;
        b=Iaj+J66tKOlzZqgVs+WjzGxU6iYFXPg8iOOhmH7lPcE3EkZswABrM09lSBN38MIo5X
         mUtkyrqs+8IJiZ10Cw1R8o+nSiIj4KoSTM82AtlmMWkuC7joa0o0i7xKgCnRDbKbbqUF
         nwIV3HxG8/qvpCCmflaChRXhSMmDZUUtV/YAdsn4qfZnJ24QonzvX3pB0fRJ5pxnWriD
         TgelwDKfcfYM1q0jtvo70jhoi3TlSGcCs1FdnOxjUCCuylUDl3l8Jk1tq9baZ8FytnM2
         47K+zlvlgLy+XPCU1nFs+97cBE/IgwK25g/ErlOYbHPF4paV8kfOWLpY5+x47EyLybuy
         KO0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UVpAOsDfBUu7AxIh3R2mMQbQVnxNTBzBN4WAv1Mw6JA=;
        b=T60KbMFOWuPmO3n+IP+O6BAgt9pqIU+0tkWQIMBcwYDgvp80eMHggwNq/+9FsEtY+1
         Oi0n14XTQdyusFGVdN5aFoO6GX11AwvQ0butrPc3ENQ55ZZl2sH7Crgn7jrIFkrWVEtr
         F+qs4DnsdDov9hLsxteLvWniDGBs/yazroUUgx0MvadMH35aYOtXMYNhziVlBBQlJtqa
         gsDBvHvXODg6TB4MGqRO8aBOpaUj8xPuKU4yPB+0+L9Aa6pVEgCXpFSwTGgd4lymZooX
         Xj9LqbAWmDwZCuP1EP1IqQxhsjQkDi8X/9Iv6g391Hjy/+Ivv/xh35RHyGr+FB2Fv77+
         Loww==
X-Gm-Message-State: ACrzQf3IFCI1BouDyZ+8RzttdYbcI68X1sR2Kj1buPI3P4aGWcSVXDjK
	nYZv6LfQJmJXLIvABHI+sUKEo0PhFZTzHA9V6E0TIyaj
X-Google-Smtp-Source: AMsMyM7ROlv1FkGkRRAPzdTEnFxAXm8B9NdlSKiIlDgjxGfc4IVVCFhwLXuLwdYbgLdTucM/veoT+BseuDmk+RGtb1Q=
X-Received: by 2002:a25:5f4e:0:b0:6cc:9093:c940 with SMTP id
 h14-20020a255f4e000000b006cc9093c940mr12738054ybm.31.1667332178089; Tue, 01
 Nov 2022 12:49:38 -0700 (PDT)
MIME-Version: 1.0
References: <20221101170833.GA10470@openwall.com> <Y2FhxvA/2e7xFUiF@itl-email> <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
In-Reply-To: <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
From: Pavan Maddamsetti <pavan.maddamsetti@gmail.com>
Date: Tue, 1 Nov 2022 15:49:27 -0400
Message-ID: <CAPWQ=1TzQ_e2yHZMXx6Tm4UJG3owZypShvm+VDoxEMcDSDxX+A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000329c9a05ec6e0627"
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer Overflow
 (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow (CVE-2022-3786)

--000000000000329c9a05ec6e0627
Content-Type: text/plain; charset="UTF-8"

https://github.com/RustCrypto

On Tue, Nov 1, 2022, 3:42 PM Dave Horsfall <dave@horsfall.org> wrote:

> On Tue, 1 Nov 2022, Demi Marie Obenour wrote:
>
> [ Massive trim ]
>
> > 3. When will OpenSSL be replaced by something written in a safe
> >    language, or at least with a better-maintained fork?  I know that
> >    distributions often cannot use LibreSSL (because FIPS, ugh) or
> >    BoringSSL (because of no stable API or ABI), but I wonder if e.g.
> >    libcurl should be linked to BoringSSL instead.
>
> We see this over at https://boringssl.googlesource.com/boringssl/ :
>
>   ``Although BoringSSL is an open source project, it is not intended
>     for general use, as OpenSSL is. We don't recommend that third parties
>     depend upon it. Doing so is likely to be frustrating because there
>     are no guarantees of API or ABI stability.''
>
> If even the manufacturer says that you shouldn't use it...
>
> -- Dave
>

--000000000000329c9a05ec6e0627--
