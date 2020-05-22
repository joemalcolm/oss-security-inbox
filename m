X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2176" "Friday" "22" "May" "2020" "18:00:12" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8k1=bzu9N3-x8NXLesjbb07tYpkwWgx0Bkoo=d44N2Nhg@mail.gmail.com>" "42" "Re: [oss-security] Short notes on qmail security guarantee" "^Date:" nil nil "5" "2020052222:00:12" "[oss-security] Short notes on qmail security guarantee" (number mark "        noloader@gma May 22   42/2176  " thread-indent "\"Re: [oss-security] Short notes on qmail security guarantee\"\n") "<20200522121750.GA24868@openwall.com>" ("<CAGUWgD8s3DtM6sG9Pj478H06G_evwPsF49pK5Cig0VUHY_mrQg@mail.gmail.com>" "<20200522121750.GA24868@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Short notes on qmail security guarantee" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31913 invoked by uid 550); 22 May 2020 22:00:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31895 invoked from network); 22 May 2020 22:00:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=F3vD3em3tYgJ2cbMts7uxUrAGaOzcqsOj4G0waQRHfA=;
        b=p9e2axmvCFzHRt2JQj3WMvVHpj2ST9H61INB8I8JR1UFCLo4FHZ7Of1yUYZnCPBQGf
         c6NkccEraBbP3Xw5goyEEkYrLMxzuCQgd6BfsljV6vt6zh2/rjuLimdJy/V0uYKAQLO2
         Yw/safBIcGFutiU30E1HfsDGNEvtpdz9YsZKZs89ThZlhVsYj8XlgE5U8S+8Y8NMAY0R
         wQNa2XF/G+P39m1aMpsKfvTrTCfpGaN/kDccd1oenFAUq4AI6dw6JaKvwXmZ9eShwWeK
         M1qSLnpKAhZDC7v0JEqr4aTBCDMQkzeHR/pD1z4Q/9xMx97kiff4Nj3COpj6ADQSeD78
         q2zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=F3vD3em3tYgJ2cbMts7uxUrAGaOzcqsOj4G0waQRHfA=;
        b=C7/GAfPrJ/9TB7WG6og5WRf0IhLaxdxykSWqOXfRZfV/vobMDIhvMYTWPBhhJJq+QU
         vcaZfkTcGfOB2c8iaRBYEFbwHKroNU0IgSR5RnMmWe4K7RnCcEvNYyaD8hX/f5zMnab7
         NDleMcIa7uq2geY5FrIJE5TEEV1EOqXWfkPpz+Zi/OIeZGzbL+vY9H2UuiOuPev8zXl9
         s/nBkkyZE5hsnVFGQTJ9rhryLWvPwh3oLPR90xmazsUf24LHYrQ1rUWzM3+wOuP7LRTW
         A46WMUAQnGzM42TBbxFf9OFcSAiW+T4hcLEPvfplImS759AKUiFAotrLejbHl3T5CDGR
         YjLg==
X-Gm-Message-State: AOAM531fS4+bFqJFJpZY+r87p4riAN6wynj9xD0O7TH4J4y/ROE+Hi/e
	837qHAZSqGuAhnsBk/06+uR2PbyLFoPGl9FvOAsmtISxBfw=
X-Google-Smtp-Source: ABdhPJwIWFEtj1bwqp3hc9DGsPpzvzk1pqAy9g/HakLZ0xAA8DneNwbAD2/y4wOeCE4Huj6u8BdZeQBeG7OxmWmU/eE=
X-Received: by 2002:a92:914f:: with SMTP id t76mr15723271ild.238.1590184830910;
 Fri, 22 May 2020 15:00:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD8s3DtM6sG9Pj478H06G_evwPsF49pK5Cig0VUHY_mrQg@mail.gmail.com>
 <20200522121750.GA24868@openwall.com>
In-Reply-To: <20200522121750.GA24868@openwall.com>
Message-ID: <CAH8yC8k1=bzu9N3-x8NXLesjbb07tYpkwWgx0Bkoo=d44N2Nhg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 22 May 2020 18:00:12 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Short notes on qmail security guarantee
To: oss-security@lists.openwall.com

On Fri, May 22, 2020 at 8:19 AM Solar Designer <solar@openwall.com> wrote:
> ...
> Writing code that avoids artificial limits yet is safe, is hard.  One
> way to do it is to avoid artificial limits throughout the code, but then
> impose them at a higher level, where they can be adjusted easily.  One
> such higher level is the operating system, but that makes the program's
> security dependent on its environment in this extra way (beyond many
> others) and with greater risk impact (worse than DoS).  Arguably, this
> makes the program unnecessarily fragile.  Another higher level would be
> within the program, like we see in Qualys' patch for qmail now.  This
> reduces the dependency of the program's security on its environment.

I don't use Qmail so I don't really have a dog in this fight, but ...
I'm not sure its a good idea to depend on another layer for security
properties, especially when a control is readily available. (re: the
first part of the paragraph).

Qmail should not depend on the operating system for security when it
is readily available to Qmail. In my mind's model, Qmail can remediate
this at the application level and has no need to turn to the operating
system at the platform level.

To drive the point home, consider an application that uses Apple iOS
4-digit PIN rather then a more proper authentication system that
requires sufficiently sized passcodes or phrases. Here, the
application's security depends on the operating system's security. ANd
many folks would not consider a 4 character PIN code sufficient for
authentication.

As another example, consider an application that depends upon
infrastructure for security instead of application security. Most
people would agree it would be a bad idea to forgo IPsec, VPN or TLS
because the infrastructure should be secure.

Another way I view it as a vulnerability in Qmail is, Qmail is
trusting the user for its security in a default state. Here, Qmail
trusts the user will set an appropriate limit on 32-bit platforms.
Trust is something you turn to when you don't have a security control
to place. But in this case there is a control to place - a sane
default limit inside Qmail.

Jeff
