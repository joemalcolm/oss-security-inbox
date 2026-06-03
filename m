Received: (qmail 5719 invoked by uid 550); 3 Jun 2026 15:03:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25794 invoked from network); 3 Jun 2026 09:17:15 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1780478225; cv=none;
        d=google.com; s=arc-20240605;
        b=h9ObVJj4lwKog7m68zNNcD5/jR6hX52k2efSaF18M40IHGDQ4XDFOTaPWq8jTj+LyP
         B7veG9Y3oBTNzTF2QXDyqYKcRHcOJ8uVi/EY3wCbWGXzahjUKmGLFuG7W4rAnSTiIJbm
         F75E7+Tu8VLRJSiDpWDdzKlgyqpVeqO9u1KpmkHxwmKvtTUe9LQkg0/AB6KUNuoZDGxb
         YnwWBO8++7Ck8FIfvCxO02qjECmkJlwLSgoDnjt9EAuEtngQHa4FE5ivMnbA4A8oH2xh
         L3ryRs3FlpgaJzd/Tf8aRofABkVAeG/KdLgPbFztetduYPuAIbtNeNmT8uqfaKkUXAsD
         G1qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jhZTAWnxsUOValMeVq/z4PZtK+dv8RUq+uRhKlABptw=;
        fh=pHc2ymm3DgH+gUzh/HIXAFUkfArN7532PJ/xelfu6K8=;
        b=Ymp0wcwpzTzmQe1yZUTbqwD/WbKC4K0ZeHB04CCBAxW/mXCVP1zj8m9agK6FCM7u+n
         GozGpeV0LCBVGRiM5wACklXjjlsmvK1E5Q9Ld8JTn7iGeURcQXKi23wdC65ITKYWIpPg
         hvxQpxpwAlF1CWBFSfScLGMjHxeuXwE0Pu55rGTdvRtg/osyA0jhZogZhXvChZQzDP3M
         gplsPA2CJ/CxmfFh56/BqZDOYE30+q3h+YgkJi+2d9E12ROZD0Qdf3uY3TR0wRvE+dqj
         kt0rRhnLpoCY52GgquemcAI+2r8KjMd6P14jYvdvDDKpXNxdecUGZ/XyVrjoFZXMGhjW
         OU3Q==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780478225; x=1781083025; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jhZTAWnxsUOValMeVq/z4PZtK+dv8RUq+uRhKlABptw=;
        b=gBSK9SouG1HSSYi/1SIBGnkMW9Bi29jLmNTYv83qTGfgvJX9Xt7BzActBZEd/uNdkR
         9aGhQjpm8MdLZleRVLCiLPdesyCC3LcQmIsXzd5A04Ck+Cx2JelIj7nnLAIzo0TVqhnT
         s6QHBbmKGm96v1A2BO7fv7rXLDrCBbJXXlVReAgIIJdscD2uPZB9f+GibZCeuQFDyZsW
         fDSluXkvioIbqodpTI2ynf+LbH6A2JY9bWcDvlWrVZuZHZygnjq7F8tAkgm1gaRjt33c
         fePxGfkv8yRP99AWxChaIwgmDVt7KbHVeQ4huFvGg7YBBLVIaryMMw9k1RnrWDS1HOto
         q6Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780478225; x=1781083025;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jhZTAWnxsUOValMeVq/z4PZtK+dv8RUq+uRhKlABptw=;
        b=p30n4vDBjoPRZU2DWdWVdLr5rk+7T+M3eE0W4QkbmTseSt2KEibH4/6yLDqlVW1j6P
         7zpfotIHbmIQr7L0UgUcbLzS+SG6najWjJtfKXq9UwWbz6L6gyr1jFGQmuXGCNwvmWjV
         tfmTexztcUDoWm30OFN5PNNGQQh2Bq/e1/fMUljEwbP23JE4CzEctkD7cYCuqHPnhSak
         0OPjJPjrP3n75Pk/G1hHUkDSrqO4kBNpPLSy1oKFzbcxf3rA9wOqDoV4AcgNOnhDC/wd
         6IpM3YwOlkBDAI6u/twRpCCJUi42BApqkfaN3dRzajsjDaDN17HsKQEurhBuR6MPorNS
         h+Fg==
X-Gm-Message-State: AOJu0YxJ+j2HTKyd8JkPwd9z3gYfT/Eo/w8Z/B5NGuMznrj/1/mlE/sx
	LfMue3PNDAr7JjuuIURLG23vo2olecaiP+d5jILVYQ0aI02Lj8CIDlBHdNKdRiji7hT+XNeccHh
	9zoFrcd5tyEghATWOje3t1WB6F8/+5Q==
X-Gm-Gg: Acq92OGKuVLUK3SwGgqiXFihupa2l8uJsRffAlh9xb8pTIXH4KGpl0Yr7p/NgWZA6/I
	bo/tWP+/rl0TmljkmosKWmB21rYTK13GJH7cy6v+9/DWQOEY3QhatTt0+K4YmjPbJ5I6/VFI7N5
	Kr862wX4nLUS0zyQw0FhdEmlqIKz/H6JFunSyw6rORM+XYM1kQdIhdgzVJ0DdN3qpup4Z0Y3Ot6
	U+sUk5uzyDov/a6KXub+vdr5/uYtqfaS3duWdh7bosPXi+3XLuPU+bPhTcB58ecz6qEVJN3CQaj
	d6KUEN1rUcINGr4TwXDtSIeIHe+NEG07rtoihHpoIP+OpSrZ4ouCnxejTqdXCv7e+L/y1uzX
X-Received: by 2002:a53:d015:0:b0:660:8fc2:cbd0 with SMTP id
 956f58d0204a3-660dbe976ffmr1937681d50.31.1780478225127; Wed, 03 Jun 2026
 02:17:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAJv4Csu5=C04SfEWEWe7QuUTTYbwRieTxCXQ4chO3tPXDvGxHw@mail.gmail.com>
 <dba33ac5-e1de-47d1-ac39-05fc42dfa3f4@gmail.com>
In-Reply-To: <dba33ac5-e1de-47d1-ac39-05fc42dfa3f4@gmail.com>
From: Oleg Sevostyanov <savant05@gmail.com>
Date: Wed, 3 Jun 2026 12:16:51 +0300
X-Gm-Features: AVHnY4Ip6kHXbPa7IZZbmz4zMCCrKAWkdo3icWIFKvAdfdMrtTDlOZ0FcjzFNVw
Message-ID: <CAJv4CssaPRCG40QqABsMj89riidUxAO35LVns_X=Df-+qfThpQ@mail.gmail.com>
To: jcb62281@gmail.com
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000239c38065355e475"
Subject: Re: [oss-security] Linux kernel TLS ULP use-after-free in tls_sk_proto_close()

--000000000000239c38065355e475
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the comments.

You are right about the reproducer. I mistakenly included it despite saying
that I was not including it. I apologize for the inconsistency.

I also agree that taking lock_sock(sk) earlier in tls_sk_proto_close() looks
like the natural mitigation direction, given that the function takes it
unconditionally anyway. I will bring this point to the kernel/networking
maintainers when discussing a fix.

Regards,
Oleg

=D1=81=D1=80, 3 =D0=B8=D1=8E=D0=BD. 2026=E2=80=AF=D0=B3. =D0=B2 06:02, Jaco=
b Bachmeyer <jcb62281@gmail.com>:

> On 6/2/26 14:59, Oleg Sevostyanov wrote:
> > Hello oss-security,
> >
> > I am disclosing a Linux kernel vulnerability in the TLS ULP subsystem.
> >
> > [...]
> >
> > Summary:
> >   There is a race between close() and setsockopt(SOL_TLS, TLS_TX) in the
> >   Linux kernel TLS ULP subsystem. Under certain interleavings, one
> > thread can
> >   close a TLS socket while another thread is still operating on
> > TLS-related
> >   socket state through setsockopt(). This can lead to a use-after-free
> > in the
> >   TLS socket teardown path.
>
> Looking at the kernel code in the report, I suspect that there is a
> pattern here:  a lock that will be unconditionally taken is deferred
> until later instead of being taken at the first opportunity.
>
> In this example, in tls_sk_proto_close, lock_sock(sk) is *always*
> called, so there is no reason for it to not be the very first call after
> the accessors that are used to initialize local variables.
>
> In fact, maybe Linux should adopt a new pattern where lock_* functions
> return a meaningless but non-void value, simply to allow moving them to
> the very first step in a function, as the first local variable initialize=
r.
>
> >
> > [...]
> >
> > Status:
> >   This issue was reported to linux-distros on 2026-05-16. I incorrectly
> >   contacted linux-distros before first getting a fix accepted by the
> Linux
> >   kernel maintainers. The latest proposed public disclosure date was
> >   2026-05-30, and this oss-security posting is being made late.
>
> At least you owned up to this; I believe this to be quite rare. (Not the
> screw-up---admitting it---usually the list moderator ends up having to
> make the public post as I recall.)
>
> > [...]
> >
> > Reproducer:
> >   I have a reproducer for the race. I am not including it in this
> > initial public
> >   posting to avoid unnecessarily increasing harm before a fix is
> > available, but
> >   I can share it with kernel maintainers on request.
>
> Oops; it was included in your message and is now in the public archives.
>
> > [...]
> >
> > AI disclosure:
> >   AI assistance was used during analysis and report preparation.
> > Specifically,
> >   OpenAI Codex was used to help inspect the relevant code path, reason
> > about
> >   the race condition, and draft portions of the vulnerability report.
> > I reviewed
> >   and take responsibility for the report contents.
>
> This is at least the proverbial breath of fresh air---the use of "AI"
> openly admitted.
>
>
> -- Jacob
>
>

--000000000000239c38065355e475--
