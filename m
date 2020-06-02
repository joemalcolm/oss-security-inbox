X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["765" "Tuesday" "2" "June" "2020" "09:56:41" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD8K_FigSbcnHbFBcj3bv0KT_Ft9eFu9Q1BwvzBSVg3rhA@mail.gmail.com>" "22" "Re: [oss-security] Exploitability of the integer overflows in djbdns 1.05?" "^Cc:" nil nil "6" "2020060206:56:41" "[oss-security] Exploitability of the integer overflows in djbdns 1.05?" (number mark "        gguninski@gm Jun  2   22/765   " thread-indent "\"Re: [oss-security] Exploitability of the integer overflows in djbdns 1.05?\"\n") "<20200601120032.GB8989@openwall.com>" ("<CAGUWgD_mFUvmCC0f-p7XE8V6N_YVTpaC0S07SWvk=uFoCn3ADw@mail.gmail.com>" "<20200601120032.GB8989@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Exploitability of the integer overflows in djbdns 1.05?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1168 invoked by uid 550); 2 Jun 2020 10:33:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9281 invoked from network); 2 Jun 2020 06:57:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z/qJzT1Y7ieAah9xnH66G5RD94Ut9Fmwk+1T41QcXRM=;
        b=qhuZr0K4I+235ZELdQkeR4+luMNy5tO09l3oC23v05GBUxQ35vigT2skVK6UNspJfh
         U5MXGMh5iEpsAS6W+1QJ4Ig3YnyNKmRQCpsjxHTmfhnDt1/jGh3h3sCGF0KUfWfL6DhJ
         WBF5203HJa2QaWOa5yk28WMo0OqqRpZN7oTOf3fjaFWVBrbPDhQUdgc7oCQwGQE/JYNb
         Nr4bqGvUTDEoDFrLHzEq2z5dgsDltlJbzlEBGTL6EB9/J2F12MkqaQMCRCc/voc0hNf0
         XJY525EZd5uESK1YZquZXl0o6g2teF5QIzc6xMlBN+vlkDntdaMtiKdUWFcm6N0izOaG
         BSKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z/qJzT1Y7ieAah9xnH66G5RD94Ut9Fmwk+1T41QcXRM=;
        b=NYIjx+rzcnBLOmWsI3061NgCksFiK4EaSssO0KKL+H+pUy/JRWp1oqdLbqNJoFTtj1
         0BRPoX+pHtxcfVwo/1tfEPMdxsji16ycR1glSxeDfZmxiEu6tC49nPtf6GfRqCHul0yQ
         8/RbdjVAh/0Q1dZKJxygJ6qfLH35Hf1m8yER77kcInqlQXwJejmJAsfjOCAGVD/3qxEA
         lqunD5eoEigmYohyFs/CloMSQdEuxBNmQmP3Xe09aqgO/LMg/7wQCv8vfeeMLKg6CY8L
         DXv95X6As7E4HHLUwq6z8QQFo7pqdp87OXwDUplVwk+C+xbBtm+xrx5WnRhe9abbjJlq
         b7IQ==
X-Gm-Message-State: AOAM533WmAoJZFmgQGFZP0p4tcQpfYDBAgtiWIL5VQfRHTRKFm7K8D70
	udiLjS77oWnnmBy3O7C+RPNtZzqELZ0i/93lYadxCEtP
X-Google-Smtp-Source: ABdhPJzyEg6Sofum2zIyPyoYbREFBmgJXfWrOvQc0jFajr3Tdn/6EyNAtAeIaDqOXrARpcMqBlVCKjZ5FsMrR6V8UbM=
X-Received: by 2002:adf:ff8a:: with SMTP id j10mr18297644wrr.405.1591081012878;
 Mon, 01 Jun 2020 23:56:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD_mFUvmCC0f-p7XE8V6N_YVTpaC0S07SWvk=uFoCn3ADw@mail.gmail.com>
 <20200601120032.GB8989@openwall.com>
In-Reply-To: <20200601120032.GB8989@openwall.com>
Message-ID: <CAGUWgD8K_FigSbcnHbFBcj3bv0KT_Ft9eFu9Q1BwvzBSVg3rhA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Solar Designer <solar@openwall.com>
Date: Tue, 2 Jun 2020 09:56:41 +0300
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Exploitability of the integer overflows in djbdns 1.05?
To: oss-security@lists.openwall.com

On Mon, Jun 1, 2020 at 3:02 PM Solar Designer <solar@openwall.com> wrote:
>
> On Mon, Jun 01, 2020 at 09:24:21AM +0300, Georgi Guninski wrote:
> > Exploitability of the integer overflows in djbdns 1.05?
> >
> > TLDR: Are the integer overflows in djbdns 1.05 exploitable?
>
> https://en.wikipedia.org/wiki/Betteridge%27s_law_of_headlines
>
> "Betteridge's law of headlines is an adage that states: "Any headline
> that ends in a question mark can be answered by the word no"."
>
> I'm sure you didn't mean it that way, but the truth in my joke is that
> we should actually research the question and provide an informed answer.
> Will you, please?  Thanks!
>
> Alexander

Not sure if this is a joke:

Q: Why security people answer question with question?
A: Why not?
