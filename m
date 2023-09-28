Received: (qmail 27692 invoked by uid 550); 28 Sep 2023 12:59:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12174 invoked from network); 28 Sep 2023 12:37:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695904625; x=1696509425; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=51VqVGYfLTidPdMma9kDi4DRECev7NJlHt1cvnWYbcE=;
        b=mF+f70f5rh6iaFj8XZZxCQfjTCsAU1xo8a/KBH/VPmyWDjYqinnvp1pSTyg+Cu55Mf
         112ikz8xgpfmKkNCoAKtl6IKXLlVmD6NIwBFK+EJdDnOMcIlP2CEy06++AREbkfrfnWF
         gmiqkZQly9ZR1+X7Ue36EKxbxmWE6JXa8E7NbHb9poGMy1cBW3hZCfWeXjqYLmjhEgnj
         D8X9DHi6E4lA6GpKFngdapfkHCwfAmq8uwZnPkqhk4EIsa5/pJ1+QIcvXhg4dkjDgpzI
         77KhEZBL812n6uVWhTJlz61/hIYw+pJlAftRIZ/5Sh7gvjVBMMQTuSKqn+psVkCA5KJ4
         z6TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695904625; x=1696509425;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=51VqVGYfLTidPdMma9kDi4DRECev7NJlHt1cvnWYbcE=;
        b=EhWv76u03YtfusYhiuLeeihWBgNHdCdnNjKhxwMWZ9pvAnKGrwsqiOHRGaVO3plPSm
         tEknPqcoCpWsxlrJHhw4AyxXvWGYeA/gj/KQaaFHhRUL0S/02oDUIUCwaQiZFyZlTFnD
         ZDniXwT+OklisQ9DfKq8ITqwCPfaCRj/8MHl6rk7H4ss2anf/RwT2bO5n61iJKaXgi3Y
         Av6B/dMNQAXvYswt0LJhnu0OrUfSGasqXr9ZCBo6q/HcgEJaaOGkQ6W9kjiBdyjEYORt
         Fn4ETL9nZWYKy1+SEtXPipwnqMb4hVpv/sVb44MmtrIzzbNBbhsTj6a3c+kiV3D/Os7i
         +tlA==
X-Gm-Message-State: AOJu0Yy7s7iWDQQNhUY+AzObtidMYcJ2gimrUiQvyBMvKDWBqGOuJBim
	2EQHNQ/runSkcsUvCjE+QWy5tCRMqbUbnu0/aNXvq1X4dgE=
X-Google-Smtp-Source: AGHT+IHlXDimb9CFnd8mIxG5tE4LC9EtU7XrTVJX5Pav9JRxEjeUD2nJimQFGUMFi32FZUw3n+/bGW59eFZlhkS0ok8=
X-Received: by 2002:a4a:2a1d:0:b0:57b:6451:8c64 with SMTP id
 k29-20020a4a2a1d000000b0057b64518c64mr1047778oof.9.1695904625363; Thu, 28 Sep
 2023 05:37:05 -0700 (PDT)
MIME-Version: 1.0
References: <20230921205250.GA13106@openwall.com> <ZRKn0bQVe4MBMYiC@eldamar.lan>
 <20230926153454.GA12511@openwall.com>
In-Reply-To: <20230926153454.GA12511@openwall.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 28 Sep 2023 08:36:53 -0400
Message-ID: <CAH8yC8nQVki00kqwheM9n0tvJ5o=apNS-tnNcALy7Tvx4TC2Pg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-4863: libwebp: Heap buffer overflow in
 WebP Codec

On Tue, Sep 26, 2023 at 11:37=E2=80=AFAM Solar Designer <solar@openwall.com=
> wrote:
>
> It was great to hear from Vincent that the newer libwebp changes are
> just "Clean-ups, no security issues there."  Yet I think it would also
> be great if someone in here double-checks that.
>
> Regarding the assert failure detected by oss-fuzz, "A release build
> would not be negatively affected."  libwebp does specify -DNDEBUG by
> default in:
>
> $ fgrep -rl DNDEBUG .
> ./Makefile.vc
> ./xcframeworkbuild.sh
> ./iosbuild.sh
> ./configure.ac
> ./makefile.unix
>
> and there's also cmake support, but apparently cmake sets -DNDEBUG for
> release builds by default.  So at least this statement does appear to be
> true for libwebp itself as built via the above means.
>
> However, there's also Gradle support, and the gradle* files do not
> mention NDEBUG.
>
> Also, I wonder if there are other projects building code from libwebp
> via different build environments.
>
> So there might be (a small minority of) uses of libwebp where the assert
> exists in a release build of some project.

Crypto++ caught a CVE because use of -DNDEBUG was not documented. The
library's build system used -DNDEBUG (like libwebp), but folks who
ported to other build systems did not use it. In my mind's eye, others
who did not use the -DNDEBUG flag should have caught a CVE, not
Crypto++. Also see CVE-2016-7420 and
<http://seclists.org/oss-sec/2016/q3/520>.

Crypto++ eventually took away the footgun by supplying its own
CRYPTOPP_ASSERT that required a user to supply a switch to engage
asserts. Asserts were no longer enabled by default when someone
omitted -DNDEBUG. Also see
<https://github.com/weidai11/cryptopp/blob/master/trap.h>.

I've never seen a CVE for documentation before or since.

Jeff
