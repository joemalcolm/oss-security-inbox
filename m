Received: (qmail 7942 invoked by uid 550); 19 Apr 2023 14:55:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5644 invoked from network); 19 Apr 2023 14:53:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681916006; x=1684508006;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CEAG+jaZ1thzWIN7rb2JiFXJNd3YYVbLT6JMtcnp5Ww=;
        b=nOVjH5lYRN6htIS2MKYi+2LCrfO3LmKPHvU2yizIJko4VfMTYRV9aHPOpe+OkcmshE
         NH5Gu0fyhEQ3PYdMTB0orquNyb0dj9uKM17daHKnQDfuoJ+RILM6hEN931hKXy4R1LM2
         guGvGHPcQD9ISGQkFz/OuhqqmSw0Es4jhLnvJZoJf8XgdzQC8Z/jOXADYZ+2m2Np/T95
         EXoSacThOmWM5XQBHy54XcTAjThcOL4ZHqb57NT3rLb/6oP5fFoxjHDJqGHQX/OOMN5u
         vpyQBSVSBqZ7b+4p7A+yv7VyT2g/56hTtnu6i08fdfJiqE7BICTLS9nZZnu29ChJYWXm
         DKiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681916006; x=1684508006;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CEAG+jaZ1thzWIN7rb2JiFXJNd3YYVbLT6JMtcnp5Ww=;
        b=lcD9XPrpksS/9pCFZcLmmssMrJCZv8uggcIEAvFeUtO+nIypfzG+Ad0PJAwwi7O1GD
         aBt7txZqKi0cIJhXAoin4eZGuyiK9eG5OGlD/mwk+O8qHor9+Yw4idZVtYKOiPxqKTII
         /fEMq5fVkHKqwsbkeRTxGbOfdRqoTCHsKidDpGEhVSePiuZvQajsE1/h9usoqhJzxFl7
         KZVC4wZSdhKdQjKewvlMRbO7NYLDcjrBtwFpWGGBC21zCC9oE9ggxLyXXxSOkXpZAR7o
         5YzOP5sxqvGWMmS/ffh4zyETH7LdCqWDu1mId3boJ+rAuYbu9hgsFKsuepxaS3lnU+zr
         kR4w==
X-Gm-Message-State: AAQBX9ee9365jFLbIxh1JqEizPvNMnheUPofuBZ1cYCcPROdAMDh+EwD
	2vX7tcskr2IcnlW4prVQWAVXFSD+5yr1JoGAl5Urj74U
X-Google-Smtp-Source: AKy350a1e0YdSeZdw3PfZ8ExZRIBOSJkfCtlDmcorBdxFgMJW6BAy3ypj+fKKsme+wby2C4/dlUlnb7lMxF1m5HORJI=
X-Received: by 2002:a17:90a:dac5:b0:246:da2a:49be with SMTP id
 g5-20020a17090adac500b00246da2a49bemr3316482pjx.20.1681916005719; Wed, 19 Apr
 2023 07:53:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD9UDNkNMsixAnLcmS0OuWM0Btvx6fRbRr1OSk1UsXhy2g@mail.gmail.com>
In-Reply-To: <CAGUWgD9UDNkNMsixAnLcmS0OuWM0Btvx6fRbRr1OSk1UsXhy2g@mail.gmail.com>
From: Peter Philip Pettersson <philip.pettersson@gmail.com>
Date: Wed, 19 Apr 2023 07:53:14 -0700
Message-ID: <CAHQ_-nSmiU3vZM-8skFJ0jvuZhjR5eHWX=UOjZM-i1qy47pUwQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000001024e905f9b19675"
Subject: Re: [oss-security] Checking existence of firewalled URLs via
 javascript's script.onload

--0000000000001024e905f9b19675
Content-Type: text/plain; charset="UTF-8"

Hi George,

There are many ways to make arbitrary HTTP requests through a browser, with
and without Javascript.

Here's a good writeup from 2018 from the makers of Burp Suite:
https://portswigger.net/research/exposing-intranets-with-reliable-browser-based-port-scanning

I wouldn't consider this a vulnerability in the browser.

Btw, I remember your exploits from the early 2000s - good stuff :)

Regards,
Philip

On Wed, Apr 19, 2023 at 6:31 AM Georgi Guninski <gguninski@gmail.com> wrote:

> There is minor information disclosure vulnerability similar
> to nmap in browser.
>
> It is possible to check the existence of firewalled URL U via
> the following javascript in a browser:
>
> <script src="U"
>     onload="alert('Exists')"
>     onerror="alert('Does not exist')">
>
> This might have privacy implication on potentially
> "semi-blind CSRF" (XXX does this makes sense?).
>
> Works for me in Firefox, Chrome and Chromium 112.
>
> I believe the issue won't be fixed because it will break
> stuff in the mess called internet.
>
> For online test:
>
> https://www.guninski.com/onload2.html
>
> --
> guninski:  https://j.ludost.net/resumegg.pdf
>

--0000000000001024e905f9b19675--
