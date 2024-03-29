Received: (qmail 30542 invoked by uid 550); 29 Mar 2024 16:17:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22505 invoked from network); 29 Mar 2024 16:15:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711729211; x=1712334011; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Z3Jxc0Uajw6pPa+l/upiwEqzqT+V5/Wb7WD1pNrIPk=;
        b=ZXuI7/6A2KsNZufEjc/PN2Zw9AngRVG/bTf75juCgIkfRiItyIpAHubepc1B6q3Qk9
         1zDplIHEUl1aFpJ8rd3NjrGikj+1vMVmmEuo7lng2QfPPbjsLhiGhCI+xU0U+FtT6EJZ
         quFNKnTjbIz+SIDnuG4yNGCOGp7YTrjDHCikKvHEARdmu79bEYkQORlHWNqfz+RCF4Vl
         TjR1y5hUIX8Rt6YLiAFT/rLyH1tYXl3dHjU4yRmk3vsb7z/jQ0Lm3ABln3vM9HaFZCIc
         lvKGuqUKL3H+N3jWt7wG/ov7gBaXIinZY7jaA9GnM/umxuw40TIA8FLow9UfYyKRPswC
         sLvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711729211; x=1712334011;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Z3Jxc0Uajw6pPa+l/upiwEqzqT+V5/Wb7WD1pNrIPk=;
        b=Av3S6odvF+D0CtN5Vaytc/NgFoT00WjqNuqxNI/4+mj1DER7aJZPsXQhYyifX1oECm
         jV/W/XSCgRjOKc7k0Cjeifroi3ulTAHG/rXbtTs9eFeVkD5w/+LBjufFA/okMUk2RrzJ
         Hyc3q6WjslWBTwq96F6CJ1kCMTiya2tmqY8qVFcP2Y37LrKWPbw9L+Yck7b/7TXzwADj
         f7NUqGhpjCiKQsd3YMkjEmED0aWGBmfErasGMo7YLL7uVjkQ4FBHaoh812C6n87AOxSI
         6IwPZyerocUwYDIiQPIfEg8lk0brBppxwoU9Fe8SEqhPKfLGh858tYDHwNwuL+1xPHc8
         dvuQ==
X-Gm-Message-State: AOJu0YwQspvA7YN+nEwBjEkNV4m3KYiOZJ4tt14/Tg0F7ARrHsJDfHcS
	da5VnHWF6EJ11p1jAL7DLvMqygKFvq5fnU8OO855D/3pnQwuB6PRhmuMK+TDYaQ/1J429UmvVys
	b60Jb+pyh7hNIpXlqr0LhnX3C2IRdgrCtSoY=
X-Google-Smtp-Source: AGHT+IEoqtIgl6AbdfnL5+RcdnpUO8+suzkBpC/lSz/Mc7p477g6mBnhhcHmtQHVGpStuguz4BqeXFtRkvuR/DhHJ6g=
X-Received: by 2002:a05:6820:308a:b0:5a5:21df:7eee with SMTP id
 eu10-20020a056820308a00b005a521df7eeemr2824864oob.1.1711729211545; Fri, 29
 Mar 2024 09:20:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
From: Jeffrey Walton <noloader@gmail.com>
Date: Fri, 29 Mar 2024 12:20:00 -0400
Message-ID: <CAH8yC8kz8r-asNauLXUL106UYERUXuDWAwF=Xq12T-w-Ev0CYQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

On Fri, Mar 29, 2024 at 12:10=E2=80=AFPM Andres Freund <andres@anarazel.de>=
 wrote:
>
> After observing a few odd symptoms around liblzma (part of the xz package=
) on
> Debian sid installations over the last weeks (logins with ssh taking a lo=
t of
> CPU, valgrind errors) I figured out the answer:
>
> The upstream xz repository and the xz tarballs have been backdoored.
>
> At first I thought this was a compromise of debian's package, but it turn=
s out
> to be upstream.
>
> =3D=3D Compromised Release Tarball =3D=3D
>
> One portion of the backdoor is *solely in the distributed tarballs*. For
> easier reference, here's a link to debian's import of the tarball, but it=
 is
> also present in the tarballs for 5.6.0 and 5.6.1:
>
> https://salsa.debian.org/debian/xz-utils/-/blob/debian/unstable/m4/build-=
to-host.m4?ref_type=3Dheads#L63
>
> That line is *not* in the upstream source of build-to-host, nor is
> build-to-host used by xz in git.  However, it is present in the tarballs
> released upstream, except for the "source code" links, which I think gith=
ub
> generates directly from the repository contents:
>
> https://github.com/tukaani-project/xz/releases/tag/v5.6.0
> https://github.com/tukaani-project/xz/releases/tag/v5.6.1
> [...]

In the past I worked with the xz author on some undefined behavior in
C. His name is Lasse Collin, <lasse.collin@tukaani.org>. He was
responsive and helpful.

However, I used the sources from <https://tukaani.org/xz>, not GitHub.
And it was back in the v5.0 days, not v5.6 or v5.6.1.

I suppose it would be a good idea to give him the information.

Jeff
