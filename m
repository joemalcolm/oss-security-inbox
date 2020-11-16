X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2878" "Monday" "16" "November" "2020" "13:50:03" "-0500" "Stephen John Smoogen" "smooge@gmail.com" "<CANnLRdjG_iOxa7L8ENK5fRAzRkZK5JTGBsdwC0ezdaxkMDdgRw@mail.gmail.com>" "73" "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil "11" "2020111618:50:03" "[oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" (number mark "U       smooge@gmail Nov 16   73/2878  " thread-indent "\"Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros\"\n") "<E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>" ("<20201113133331.48185f9f@computer>" "<20201114115850.GB5193@suse.de>" "<E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>") nil nil nil nil nil nil nil "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22203 invoked by uid 550); 16 Nov 2020 19:40:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3433 invoked from network); 16 Nov 2020 18:50:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=bp+QrSxamzMsjGpeu47eTuR/AE4CJV4hXHzg2bskxwI=;
        b=rkDoWq4Y1f0z1KqRlkRIP8WQkDX/kvRTcax8yvKya+iWjWpotSm5LZ0kkuGHAbMFkv
         yXGCZ9ojOPMzvL0+GWxrlKC8YilMx1BySv/XDwkbbrPWC3iIyVK9ZMAbfux68N9OyTpT
         qe8O/MQQWViI4sMPKJJ7Fp3omxZYx3B929sa+m1SkaSMZdbWjfXnJK3Et7KzmpOHmY8o
         VbtAqK6+cJ/zbeilVu2VdbCjPhUbZXc9mYiK5lCnO3m6EAw7Ej1hZ5eTcvZEjQNl29aR
         QNA6GmAd4dhH3rzKOmjF2+P/jvAnnhztFUcbGjVdqD/ZvX/DTQ76H4PMHjyql8r7JX3J
         1A5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=bp+QrSxamzMsjGpeu47eTuR/AE4CJV4hXHzg2bskxwI=;
        b=DN44dpA6naMM23jDPqsK1JYbUgpSXN2kAlY0C4JonM0tz5N9aO4MkFFomjLRLGUyNP
         Vm+zI3QCShcA9WxC8ng68KtlghroBat2uwCzkVgwCZUInLh2vKzJc1BVyLCQDF7zS+eu
         C9s1JdyURdJ+jVZtvHKaaOe5AV7pE4lGjScqnn3zCUz9PzaycdUth+PQePVdlANgf9+S
         1626yt9eXbs3nSo5ejo/vzGTRwESptI1tPra8dioZEn6dTmXYe/oSP+xlTESXp9kL/qG
         l9Ce/zOG3IJrB81XCTZzQmDh/xdbeK56hnhjHtTqfLJNIT/X2+dkTxcoChrF4hOW8jXu
         kz4w==
X-Gm-Message-State: AOAM533fqsjPDGi26tnI4Rf37lJXgN62LsBeC4AoOZ6vyJfBWt9LKE3I
	HJ9n1/Rpww8cO6PYmFEQhqfisMeYVGOJwHjIoFzzHcdtpug=
X-Google-Smtp-Source: ABdhPJzyjV1tFZppoaX6REaG3nNWQYLkEXdXqxBzN2kc1kzC6fE2xS0+t2IpU9Nsi6WuIj4wZes0MUJ4RLAAGF30hb0=
X-Received: by 2002:a63:389:: with SMTP id 131mr519958pgd.128.1605552614990;
 Mon, 16 Nov 2020 10:50:14 -0800 (PST)
MIME-Version: 1.0
References: <20201113133331.48185f9f@computer> <20201114115850.GB5193@suse.de> <E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>
In-Reply-To: <E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>
From: Stephen John Smoogen <smooge@gmail.com>
Date: Mon, 16 Nov 2020 13:50:03 -0500
Message-ID: <CANnLRdjG_iOxa7L8ENK5fRAzRkZK5JTGBsdwC0ezdaxkMDdgRw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000048e72205b43dd99d"
Subject: Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros

--00000000000048e72205b43dd99d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 16 Nov 2020 at 12:44, David A. Wheeler <dwheeler@dwheeler.com>
wrote:

>
> > On Fri, Nov 13, 2020 at 01:33:31PM +0100, Hanno B=C3=B6ck wrote:
> >> 3 years ago I reported a heap overflow vulnerability in raptor, an RDF
> >> parsing library:
> >> https://www.openwall.com/lists/oss-security/2017/06/07/1 <
> https://www.openwall.com/lists/oss-security/2017/06/07/1> ,,,
> >> Maybe noteworthy is that this didn't get a CVE in 2017. It seems many
> >> distros rely on CVEs to get a process of backporting fixes rolling.
> >> Given the fluctuating reliability of CVE assignments not sure this is
> >> wise. I have now requested a CVE (CVE-2017-18926).
> ...
>
> > On Nov 14, 2020, at 6:58 AM, Marcus Meissner <meissner@suse.de> wrote:
> > I think the only thing you can do additional is to request a CVE.
> >
> > All tracking by everyone is using CVEs, this is the core identifier
> > of the software security world.
>
> I think this is key. If you find a vulnerability, you typically need to
> ensure that it gets
> a CVE assigned if you want coordination & resolution to happen. It's how
> coordination happens.
> There are issues with CVEs, but I=E2=80=99ve never seen a CVE assignment
> get dropped in recent years once it was requested properly.
> Delayed, yes, but I know CVE assignments don=E2=80=99t take 3 years :-).
> And yes, there are special issues with the Linux kernel, but this package
> isn=E2=80=99t the Linux kernel.
>
> If you think that CVE assignment is still of =E2=80=9Cfluctuating reliabi=
lity=E2=80=9D I=E2=80=99d
> like to hear that argument
> and get it fixed. It=E2=80=99s normally better to fix the standard proces=
s for
> doing something than
> to create yet another process that runs in parallel. I=E2=80=99ve seen no=
 recent
> evidence of this reliability issue.
>
>
My guess is that there was an assumption that if an email with a
vulnerability was sent to this list, someone would do the CVE filing for
them. Looking through my archives, there are times where someone posts a
vulnerability and miraculously someone says shortly "Please use
CVE-2XXX-YYYY for all future announcements." If you aren't on the lists all
the time or know that various groups do this full time, there is no clue
that there was some sort of extra work done to get that number... it just
looks like it was done as a service. When a person posts a vulnerability
and then gets no extra emails.. then it looks like a secret society. "Oh
you forgot to shake Smooge's hand with your middle finger hooked and your
pinky out... can't give you a CVE"





> Sing this (to =E2=80=9CSingle Ladies=E2=80=9D):
> "If you like it, then you shoulda put a CVE on it...:"
>
> --- David A. Wheeler
>
>

--=20
Stephen J Smoogen.

--00000000000048e72205b43dd99d--
