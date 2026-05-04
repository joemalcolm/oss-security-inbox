Received: (qmail 26412 invoked by uid 550); 4 May 2026 16:02:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7193 invoked from network); 4 May 2026 10:14:27 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777889656; cv=none;
        d=google.com; s=arc-20240605;
        b=DrMsApYNl+BJ3VIwsFf4qBkdl7oMdYzNPJG9Dv3QW6N4kbLztvXmq1w7iM+ZOgGqC8
         1dZvhI5Hq8+YVzs6MX42B9duqWTZbTqwXzYZq10oUkkAXOtIzyQg58c3hbEa916RuuLk
         tOJcBMrzsI/Fjj6GvlGN67BxQ83WJ8H91esQIkEA4LX/pJBzl2sclVeJ1dNtyyaTUh7Q
         OuN8GtLdKtBwRXSiW15JSAF3PQ3Jo0hGGT/j1+NlFpX5a7567/8js5PDvDrYkgOabL5r
         A9netWkYZP+4LSJel2Ab+MM14CXNg/ZHn73kJdkvWPGlVCrQ52y+h4Mw110VqH4uHCxy
         alHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=d4uQPtcjVHR84m7daH3LMpCdLNDN194LArPTLZrDtR0=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=JngrQ7nswir9A6StoF86muUsavu8LUNC1EwC/fnF7EyYkXgCx2jjwbcjeSUnKH45kF
         cnuVz2f/opeqKRpR7GK1ESLNh76HA/jBjUzQOt69DOdGw2JJOI9EDp5byimDRF8SZNfJ
         UhIYuJ5chwDjpogv9EKKwX0AcA/LOQClfebtjiUplJ2ygbSjr1T8rolfx4S7c8b251AA
         ivfht09SRn04MhHapx2mi307IaAMV9aLLYtfzdUjmJIuwxl3xAmJ/77GYW6pdZFCARoa
         N6hKc/4aAgpw1XOj4VM75BH+DEfe3PqJK+HM6A9PFo5+3U5JY0SVi+zWc38eeHRPKcr8
         FVnQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777889656; x=1778494456; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d4uQPtcjVHR84m7daH3LMpCdLNDN194LArPTLZrDtR0=;
        b=K4eukIiWkft3R8A4pfDIVDhu0TL/zZQNsuKgARrwQFZMlUOAPBoVaFPhLXtF6NTkDl
         9Ip2BI/gb/gtLC3KNMEiqtPm4Y0/gmVL5pa6ZTBRZKcftlqypj8kWmNGra3sd2xq9IuZ
         e2yTqRDhaIGtzN2JnQJkz3ti4aP5AHrx1Z8aXUE74PO5Kcowksjv/RzzzUANuZUfJ6u/
         5gMhOaxEhATiBpB+XN4eU1tFHrfxZKZJahLEO9ODAnEM0jA5rdk+waGpc3sNv/4sFehT
         SJ0r26jxgaOWkJOH6xJCZ1uPWdq8GXn3B231sh3IexGaCEab74VfAmtsK9LR83j/aqWd
         1W5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777889656; x=1778494456;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d4uQPtcjVHR84m7daH3LMpCdLNDN194LArPTLZrDtR0=;
        b=duxNSFbJE4S0GoJcgCcfKM1RPaIHffYaSQJlsAC3/XEzER4s5Cmo/Fvnui81glUyh+
         cF1Z+d7v5Ytl3tuPI/KXcR+Dy7n5ByFfUKn/po5oPUXOCFRJnB+pEo2ibYrB0ovm3cj9
         A4dK4XUkgDEQx+kXww7lhs03Jc8Hg749PyDgCi9fuRXFE3LexjDYiWMVTU3jsf6ckkn8
         jyj9QA0i3HG3Ar044RxuyEQ/GPwp7qwtchYVHNHvw7y5E+KyfAx6YImKg2V5OnbHfOs5
         zh5PQsPvb18yLiT2pbc1MhY+e/Y9BBmz8YuQ16DIWf0hOkOIG2/Ewj63KbcHlCYSmnN3
         MWqA==
X-Gm-Message-State: AOJu0Yz0gPAJXk4WjvK+KhttvbMh8LuaD8vELYpE9CPTVZl0pYHUWdtc
	Ua6ksVdfTs9RoRhisxvj7hfVxYyui86jsLM4C+JoSM6XQg1Qw1NK3lgtX2CYaTtZtY4sUhhI33q
	suLQHZGLQ3px9JVj6CVxME7liWcJ2R2eKDA==
X-Gm-Gg: AeBDievTPBU9PRjIrcim7N/DZ7xwp3TjnMMdfzMGy2fJB/LJJTWeeB3ksLlN09Cpm3e
	S/L53MW8ICHMgC2VlRqCzhgN2viw4ZV6p+btf70g9CJ+4CvuiVhlBsjIIwXyJR30/xLnnC9/naL
	Eafoncj+q6+s9a1ERmSeQkzfm9LUlREQ7aGfwKOEoaAPDMLM3cqijqsiAwurZ1S3ni1DnbLcgBo
	SYEBc6YCu9n3dOeNOx+plfDu70rMhoG6JH/gQr0LKtWZwpb/U1OXCGKaK83HuAwqfqAY1UY1mn6
	b69fyGBfGMkBX5Y8eYY=
X-Received: by 2002:a05:6512:3f14:b0:5a4:1977:dcfe with SMTP id
 2adb3069b0e04-5a862eb87e8mr1629725e87.2.1777889656177; Mon, 04 May 2026
 03:14:16 -0700 (PDT)
MIME-Version: 1.0
References: <87mryiinrq.fsf@gmail.com> <20260504100844.w73zrvl732of7wqs@jwilk.net>
In-Reply-To: <20260504100844.w73zrvl732of7wqs@jwilk.net>
From: cyber security <cs7778503@gmail.com>
Date: Mon, 4 May 2026 06:14:03 -0400
X-Gm-Features: AVHnY4KSYQ4yesWKV_wNhI80xb4NVjhtaXqXiKJkmh8fqWcOUce7vDARBcANg1s
Message-ID: <CAPmip_zR5WVXiie_NOMPD89NQNtj_Rt=pQFKp9DN=NwRhYg+zw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] uutils coreutils CVEs

of course, it is a vuln, of low severity by example

On Mon, May 4, 2026 at 6:09=E2=80=AFAM Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * Collin Funk <collin.funk1@gmail.com>, 2026-05-01 18:49:
> >* CVE-2026-35352
> >
> >We can see that uutils 'mkfifo' creates the fifo with world readable
> >and writable permissions and then uses chmod() which introduces a
> >TOCTOU race that can be exploited by another user creating a symbolic
> >link in it's place:
> >
> >    $ mkfifo --version
> >    mkfifo (uutils coreutils) 0.8.0
> >    $ strace mkfifo -m 700 /tmp/fifo
> >    [...]
> >    umask(000)                              =3D 002
> >    umask(002)                              =3D 000
> >    mknodat(AT_FDCWD, "/tmp/fifo", S_IFIFO|0666) =3D 0
> >    chmod("/tmp/fifo", 0700)                =3D 0
>
> Creating the FIFO with default permission could allow other users to
> open it before the chmod(..., 0700) call. This is indeed a
> vulnerability, but unrelated to symlinks, and it's a different issue
> than the one in the description of CVE-2026-35352:
>
> >A Time-of-Check to Time-of-Use (TOCTOU) race condition exists in the
> >mkfifo utility of uutils coreutils. The utility creates a FIFO and then
> >performs a path-based chmod to set permissions. A local attacker with
> >write access to the parent directory can swap the newly created FIFO
> >for a symbolic link between these two operations.
>
> Note that this attack doesn't work in /tmp, because the sticky bit
> prevents the attacker from deleting or renaming other users' files. The
> victim would have to do something like "mkfifo /home/mallory/fifo". So,
> uh, don't do that?
>
> It's questionable if this is a vulnerability at all.
>
> --
> Jakub Wilk
