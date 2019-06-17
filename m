X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1355" "Monday" "17" "June" "2019" "13:09:27" "+0200" "Alexander Potapenko" "glider@google.com" "<CAG_fn=UJptH_tAKj+yCER-eWPRxF0R-E2N5TUFoYpBb2Yabg3g@mail.gmail.com>" "42" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019061711:09:27" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        glider@googl Jun 17   42/1355  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<CAOfWR+FBYDFaMWnHSs6fVeJtSthbRYpPMQTSKHaYFjFZArFEpg@mail.gmail.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<CAOfWR+FBYDFaMWnHSs6fVeJtSthbRYpPMQTSKHaYFjFZArFEpg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27690 invoked by uid 550); 17 Jun 2019 11:09:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27672 invoked from network); 17 Jun 2019 11:09:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=fn3O5WdT4eam45uYOZRlp32l9SNO2fl094glxyV3GZQ=;
        b=sfKIGJL+akYN54iJPX+cE+rzO3mmS7myeptl5cl6UR0A796SpeqKlXGRc9bVMhJmpq
         T9oY/aScfZlCfjau2ezSl7ZacdKwtFqagZfrkRTLfm5uMLiVL5TIdVFy14xg6iMynQ/I
         ttrhtdR+AZTeoM439Uvu7U2JX8wXQ/JjQF0O6iju9DzM6BfePAlJOoA0DQzRfaLZOYDI
         aj2lZvaGj7ZAJGkg1QKg4UWxzzSNKYe6bgs5mq04kj317EI/veHo5SC9PqO2v1EY96Nn
         9o7qNNF6ugJzw+bnbTe/tRTilQDJ4FO3HQSZCc8C0BPjWPLUCMI3fghbS/BDc7gk6P7S
         9aow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=fn3O5WdT4eam45uYOZRlp32l9SNO2fl094glxyV3GZQ=;
        b=nJudryduI/TE1Kj1pj2N0sZ3LK+hNDjcqKyl9zh31e/WTUBgA5HJvZ9gd2eJE4AKfj
         SFyV/ZRKMQzyCoq/gLZirs56/WWv//jvPNy1U2LHb2Rj5yymnP/uOq7saJpvse3E+04d
         mu0Iv+i0U7yZtkMa1FXZD04j2NS37np1Di7OZe3MkyRyvJh26YveXELBYsVGNm8IR7BH
         yfyEBNDVsvPDoiTOxZ5nRdJ0hWFtg7ond6IHjNrJatItnLz44EHAa/+ZNj0T/XyVnC1l
         9QHbXST20oLtW4gpauENxiekJwplemnIIirqXHKY19D0Vu9vK07F83RHRDDXkL3KfY2Z
         iAEQ==
X-Gm-Message-State: APjAAAUu5Ol1v7VH43FgBTskb7lbX8kOVjlHyHLBkyzsvsQbAwr6jJ9u
	8vTjdx8PMss6QBhZKbE6kR4doPMSjBCk9k502+231dXeeixwaw==
X-Google-Smtp-Source: APXvYqw0sUC4sdom5bpqq+hIOdjBFJjOphwkA0TrO9+CjIlhG0znNqXfTW0/eCjIR6xS0PWG4wu8jA9O2xUUQuB1Cos=
X-Received: by 2002:ab0:3d2:: with SMTP id 76mr26345331uau.12.1560769778644;
 Mon, 17 Jun 2019 04:09:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <CAOfWR+FBYDFaMWnHSs6fVeJtSthbRYpPMQTSKHaYFjFZArFEpg@mail.gmail.com>
In-Reply-To: <CAOfWR+FBYDFaMWnHSs6fVeJtSthbRYpPMQTSKHaYFjFZArFEpg@mail.gmail.com>
Message-ID: <CAG_fn=UJptH_tAKj+yCER-eWPRxF0R-E2N5TUFoYpBb2Yabg3g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Mon, 17 Jun 2019 13:09:27 +0200
From: Alexander Potapenko <glider@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: oss-security@lists.openwall.com

On Mon, Jun 17, 2019 at 12:16 PM Robert Watson <robertcwatson1@gmail.com> w=
rote:
>
> So Mr Gayner, which of these bugs have you fixed?
I think the NEWS page of GraphicsMagick
(http://www.graphicsmagick.org/NEWS.html) speaks for itself: the
developers recognize contributions of Alex and do not blame him for
not fixing all the bugs he found in the project.
Setting up continuous fuzzing for an OSS project is an unhairy job,
too. There doesn't seem to be a continuous flow of people doing that,
despite fixing a bug with a clear reproducer and a readable error
message is a lot easier than chasing the same bug in the wild.

> On Sat, Jun 15, 2019, 11:50 Alex Gaynor <alex.gaynor@gmail.com> wrote:
>
> >
> > Today I'd like to highlight what I see as a tremendous issue: very few =
of
> > these security bugs ever has a CVE issued for it. This is probably due =
to a
> > few factors, a) the relative difficulty of obtaining a CVE, b) the lack=
 of
> > a human reporter who is interested in obtaining one for "credit" purpos=
es,
> > c) the sheer number of bugs that we're talking about.
> >
>
> >



--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg
