X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2790" "Thursday" "2" "April" "2020" "15:39:33" "+1100" "Ulisses Albuquerque" "ulisses.montenegro@gmail.com" nil "64" nil "^Date:" nil nil "4" nil nil (number mark "        ulisses.mont Apr  2   64/2790  " thread-indent "\"Re: [oss-security] Deficient engineering processes\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Deficient engineering processes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1269 invoked by uid 550); 2 Apr 2020 12:54:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19820 invoked from network); 2 Apr 2020 04:40:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=1p8TMyN+WjM8azDcuyE1B8FR6O21Xl6T9/gfoj8JYQ0=;
        b=HsuDkAW9xW6/fdNk2wxP3+0x2AkA+sHfBSx8cLtYvTb4sDYkOORd9B3+5syFYjyRwr
         DtePFxQUnZm5ZS0M7zRDHp1NwGPcKiGTWfyfxa2yYE7He7aflgCrGgWhevx2Vs3JfIEF
         nOtxOmxjg/XfFvsMq3zEj7Vq78yUCEATich8P1x3ecoHZ1sYeoNK/4Q38YrrpaKENOv8
         xVlKEqfCiXiihwKOPoxBiT+SuSKHif29LjHeOpxTOkLS5AF4onYfEFjovmZ+ghlOqap6
         Ou7Vz428fYdqZA4REg/v8CeWknEvoh33sR70XIFwx9zFUw+/6+9j2UOX60QknP/GQuyH
         GAKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=1p8TMyN+WjM8azDcuyE1B8FR6O21Xl6T9/gfoj8JYQ0=;
        b=JtCm1RORS3uNJ8D5Unmko0myZFa2Jn2Z8kEKy7a1E3wa9n6ZY4tVwkmXcaqOWhHgRo
         798XrPC5sUDOijO+uphJvaSEC8vV8/Cxg4NFBSUnO4H1v/vlrbajbNy1HTNuYHikj+10
         PiVoEgCgTJ7Lx2Jt0YWiKPmkWNbrBiXlYhz5+MWsHH0plSw+YdAikC5Z9ezjtbVBi3zV
         t7OmBDZB3SRxTn/3z5ApNUUPjwkLU5YEYG6XUWhDyNJdUn0Z8x0qDwos/Pay5vrocQ9T
         gkgXD93S0NFipXvwzfWQ8JEW0uqUkKN9XnZWMtvb7L2G42kd0Bt+Si1UDzjPRW3zg7NT
         p5cw==
X-Gm-Message-State: AGi0PuZhTZPLiiDDxCQKQSNtxM6iBcCKXaPcm4HwXtvJwByLqNXZw5Aq
	/iHmWzi0kpuDZSZSXhYU1DkvIlHiXLNt131dfsYvNQPWqdI=
X-Google-Smtp-Source: APiQypLkWGHbxXtBuUpP6kXy6T6ws9q5YxGR8M4vBfqS8IW7kftbq71CZnhq3kZb52DkSKfGTm32+UupUutf3LJcS20=
X-Received: by 2002:ab0:1158:: with SMTP id g24mr1160947uac.55.1585802409243;
 Wed, 01 Apr 2020 21:40:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAH8yC8=P-5i_0WT-AWSJ65JeY1C3BrB7p9e+4SCtH938H5ZqVA@mail.gmail.com>
 <20200402024611.GA251781@millbarge>
In-Reply-To: <20200402024611.GA251781@millbarge>
Message-ID: <CAA24+d7yK7cEB3P-sQTEAvE30D3ULoraorxZJHACDaH+SbhL_A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000004977b505a2476599"
Date: Thu, 2 Apr 2020 15:39:33 +1100
From: Ulisses Albuquerque <ulisses.montenegro@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Deficient engineering processes
To: oss-security@lists.openwall.com, Jeffrey Walton <noloader@gmail.com>

--0000000000004977b505a2476599
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In my experience, specific advice and recommendations trump generic advice
every single time. If your teams are failing to meet quality standards,
identify those individually, document what failed and how it could be
addressed, and *only then* show how a more structured approach would solve
the issues. This can also be an interesting exercise for you, as going
through specific problems and correlating those to the proposed
"engineering best practices" might make you realise that those would not
actually solve the problems.

More than anything, though, be empathetic. Approach teams with a "can you
talk me through your process" rather than with a "you are doing it wrong"
angle. People are far more likely to accept input when you hear them first,
and they might even be upfront about known shortcomings of their current
approach.

Regards

On Thu, 2 Apr 2020 at 13:47, Seth Arnold <seth.arnold@canonical.com> wrote:

> On Wed, Apr 01, 2020 at 07:42:38PM -0400, Jeffrey Walton wrote:
> > My question is, how to convince someone that following standard
> > project management procedures is a good thing? How do we get them
>
> I've heard variations on the phrase "we don't have time to fix these bugs
> before release" or "this new feature is our top priority" from dozens of
> projects over the years.
>
> The impression is that fixing bugs won't win new customers, or finding
> bugs proactively means you might spend time fixing bugs your users might
> not encounter in practice (thus that time is wasted).
>
> But we have all seen software that's too buggy to be enjoyable, or even so
> buggy it is not fit for use. We've all got horror stories of a known, but
> ignored, bug, that cost thousands or millions of dollars. (I imagine a
> handful of people even know of billion-dollar errors. The usual example is
> https://en.wikipedia.org/wiki/Tony_Hoare#Apologies_and_retractions
> but this is probably far from the only case.)
>
> The costs of unknown or unfixed bugs is largely hidden from view, until
> the cost is large and impossible to ignore.
>
> We all also have examples of bugs that we're very glad to have caught
> before release: the bugs that would have cost thousands, or millions, of
> dollars to repair after release, if it's possible at all. These are much
> less known.
>
> Perhaps we need to talk more about our successes, too? Not just the cases
> where we went wrong, but also the cases where we went right, and thus
> saved a fortune?
>
> Thanks
>


--=20
=E2=80=9CIf debugging is the process of removing software bugs, then progra=
mming
must be the process of putting them in.=E2=80=9D - *Edsger Dijkstra*

--0000000000004977b505a2476599--
