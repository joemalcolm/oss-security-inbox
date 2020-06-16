X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1188" "Monday" "15" "June" "2020" "17:09:51" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNU++hGZ4KO85Sz0qjmofe-BTspsh+rJvbMeiWHeVhTNpg@mail.gmail.com>" "43" "Re: [oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules" "^Cc:" nil nil "6" "2020061600:09:51" "[oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules" (number mark "        reed@reedlod Jun 15   43/1188  " thread-indent "\"Re: [oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules\"\n") "<CAHmME9q76P+sjuNXhGXQwLThJ=k2O04BC=P0Vsz+9XGvbeB4Rg@mail.gmail.com>" ("<CAHmME9qSmHj6qjj2jvjNTwRoB3KUtf-3kPgh2fk9aDeAHJo8Ng@mail.gmail.com>" "<CAHmME9q76P+sjuNXhGXQwLThJ=k2O04BC=P0Vsz+9XGvbeB4Rg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10081 invoked by uid 550); 16 Jun 2020 00:10:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10063 invoked from network); 16 Jun 2020 00:10:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VVcV5pjpN3kGo5VQxu+3Ba4Ot/CdLhVWw9o9atQA4tQ=;
        b=MeevJkAbuo3UloVyYxH/lRo1U2IwJrPQcNKKCS/XPa6NZ8ovxsOMZSeTV+2xG9DHbB
         Eg1AYai50mUo1a+1LeEg2bjGxm+ox9HrhbZCBubH2+LpQGL+EVJPwdVMs7jknDWoTaFA
         i736/bEowRB2EW6kgBlPXxymiigSuOwbitiv17iN1GFE0r8YbiBiJNIRhGU4NV49FX83
         P5ajUxF+uq6fWju6X6Q8edaHP/WeXbKre9glhzIaMnVw5p9DRZjvkG6WsDidNKLXT7rL
         +m8zE3QKRfQtZP3IfQ+XqM3AgTej34guT/yp4I8f5UGctqeUkbhuyGyJ8oBERm5zBFeB
         LCEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VVcV5pjpN3kGo5VQxu+3Ba4Ot/CdLhVWw9o9atQA4tQ=;
        b=EL9UkekHwGzGIPrLROI4nQeXBcin5H+yzlZ6atcbHE+hlY1Z+tN98Wq8osLkRxNy+l
         apqF+FGs2C2m0dW/6ezMwZUqwHQME1up8o+8rnSVVUHa94g/URwRREm2J3xYwdhd3nAV
         vgQUTXqC1lpXvEgbz2atyhOGnyzqepHaXsHtsYhRq4Bhcaw4G5GDeNe50sXO1Ollx1Qk
         9l0/sTp9mzQpCVZNPGOoecFAKcymxtcIr5c4lsdGvI3vps9H8WP4SXJVGFmmONuZ3INZ
         n96FKTr3tA09ZZcz1rpywFGBcXH85cKKelSmz/uEfmX4H8sjZ3T0J/BM94eatneKcSWB
         sZ6w==
X-Gm-Message-State: AOAM5339iKUjD28hTWNlgKOjjCnQ7R9ep64NffXHW4Jy+2wUMVt8ThQm
	bfaxzTaklmu5UIH+miWrI24J/CI/K0d7JWeO8zpC7Rebz1U=
X-Google-Smtp-Source: ABdhPJx5tVFZRbpMIJVMI/7f7jHTpgdPlpRTyGnvm+wiY2JT5ENW6JkZ+RPsoERmgM8sXlzl+Ca7ifNOz2gHxEyixPg=
X-Received: by 2002:a4a:e496:: with SMTP id s22mr267816oov.67.1592266202638;
 Mon, 15 Jun 2020 17:10:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9qSmHj6qjj2jvjNTwRoB3KUtf-3kPgh2fk9aDeAHJo8Ng@mail.gmail.com>
 <CAHmME9q76P+sjuNXhGXQwLThJ=k2O04BC=P0Vsz+9XGvbeB4Rg@mail.gmail.com>
In-Reply-To: <CAHmME9q76P+sjuNXhGXQwLThJ=k2O04BC=P0Vsz+9XGvbeB4Rg@mail.gmail.com>
Message-ID: <CALPTtNU++hGZ4KO85Sz0qjmofe-BTspsh+rJvbMeiWHeVhTNpg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000657d1d05a8285d53"
Cc: cve-assign@mitre.org
Date: Mon, 15 Jun 2020 17:09:51 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel
 for loading unsigned modules
To: oss-security@lists.openwall.com

--000000000000657d1d05a8285d53
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please use
https://cveform.mitre.org/ to request a CVE directly from MITRE. That=E2=80=
=99s
your quickest and best way. :-)

~reed

On Mon, Jun 15, 2020 at 4:02 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:

> Hi Mitre,
>
> People are requesting a CVE to track this and are poking me to poke
> you to assign one.
>
> Jason
>
> On Sun, Jun 14, 2020 at 12:30 AM Jason A. Donenfeld <Jason@zx2c4.com>
> wrote:
> >
> > Hey folks,
> >
> > I noticed that Ubuntu 18.04's 4.15 kernels forgot to protect
> > efivar_ssdt with lockdown, making that a vector for disabling lockdown
> > on an efi secure boot machine. I wrote a little PoC exploit to
> > demonstrate these types of ACPI shenanigans:
> >
> >
> https://git.zx2c4.com/american-unsigned-language/tree/american-unsigned-l=
anguage.sh
> >
> > The comment on the top has description of exploit strategy and such. I
> > haven't yet looked into other kernels and distros that might be
> > affected, though afaict, Canonical's kernel seems to deviate a lot
> > from upstream.
> >
> > Jason
>

--000000000000657d1d05a8285d53--
