Received: (qmail 20459 invoked by uid 550); 25 Nov 2024 18:02:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1726 invoked from network); 25 Nov 2024 17:05:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=evancarroll.com; s=google; t=1732554295; x=1733159095; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NkDfjISJuXsyEvkc6fDFQcB39u6+kk+GiGoTZplP/Wc=;
        b=I+nSaSDa1UTDotSTfWVNekKybxowuKaRG8JaRb6qa4zI0uY8dBxQEkg0udx0LpPWYH
         XPuR8YSZ/8CyRsQDv2liychRySLoyZWjls6+6zR76wLHndIHDzT/jydLBxqIZYJWEQ4s
         gpWBAA2zsku00Cahmjbgea4hJv/g4CNC81+V/YEJeZE5PuLOXuimT/GNlmW0Mgm+jjrh
         exXyAIxUh0KT6/ok4g8iyDeF50zSCDQV20RvEGlenAxNs/g/wOp7TEAlbEKtlau55agM
         gmL2xytibSwNgI8ODan6UtO8ePHuxFfRW1zfK7j+PjyfCAOqGdDZm8OSAY1ihezfmJPC
         9fvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732554295; x=1733159095;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NkDfjISJuXsyEvkc6fDFQcB39u6+kk+GiGoTZplP/Wc=;
        b=DaGAQQPHR7/+Txpcv0zhwEx75OJL3PHLBMvrQeYb3QABhpBx8oeQ2Xw77ymCDuia8I
         1+n9+u0yb/9umctp9Vqnx8Bn/fJLJJ+ow78cb1DR9t/q5beIq+uiCLEvrA13oFEYFxMB
         zZSv6oeXYlAzM0Ym6HVlhwy0NK2VHNC+xQLRR2saKtu3AwWKdn90duymr/H6cyXZDk4Z
         U37kjrbVt6xroItCTxVpaayQ0zZLZszLJ17YCSJ5FWZosKTl4sBoq2G3eBvwE+7fdBBN
         MiNcLaXyp7Hc0V8uehr+UBQlGPo9OA2BjkUBkHIAjDX3OTlwDSYgA0ctAmVbupUlafl1
         dAQQ==
X-Gm-Message-State: AOJu0YzInHj40AznGd2ItB/jUiqlqKU2+kb9ChwTCHZNg77wdcLbXl0h
	KLe3NBtByyoIZIrSziIwvMHjS+/2YJGgtw+laRWqD/9qviW9JhvrVcElvuGqmdKQD+q6pCp3t/c
	TfTRqPFP4dlNtdYeahi2VROlrOfGrhKrE2S0firQ+n/Ey07VijH1H+TE=
X-Gm-Gg: ASbGncvZklXoUYrxp73Vq0CJHSJC52MvzpmTYFZxwCPvNMbdbKGCyjgzjPx8Q8UGEJ/
	GcJ6BdO3qz9GfEo2QqgF6pv/CzNAuP0y7MbhrejK8vOW4Nw==
X-Google-Smtp-Source: AGHT+IEV6z0hWG3hAp8Zl2C3lkGei0h/lvQss/73YMa/dvDfJCUJTdG7LYXUvCjkwm8sXxz7WnagN6xByUNy3gdaFtA=
X-Received: by 2002:a17:902:e550:b0:20b:4d50:e4c7 with SMTP id
 d9443c01a7336-214e6d6e48dmr2589995ad.0.1732554293673; Mon, 25 Nov 2024
 09:04:53 -0800 (PST)
MIME-Version: 1.0
References: <ykmy97joESH91bCHsZwXrM1OS3YcckmX8UcuxUQ6ogsxZjKI9lox0cTS-HuVaVUgn7fcmBdjRV4kdvZU3X5J6j8Ro1OJKzl1DHnka9f6g-M=@hexsys.org>
 <20240520120909.GA8629@openwall.com> <CAAiePB65qp8UeYHGZsH3g+mbCe76jCS=MJ5EeM4f=F2x-FfyDw@mail.gmail.com>
 <b411aa8f-77dc-4542-89b6-9f2cb0f5b031@gentoo.org>
In-Reply-To: <b411aa8f-77dc-4542-89b6-9f2cb0f5b031@gentoo.org>
From: Evan Carroll <me@evancarroll.com>
Date: Mon, 25 Nov 2024 11:04:17 -0600
Message-ID: <CAAiePB7WGmCJ4za4poNm9vMYMjhQgzu0G26eWRam1arHPuO+tA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000003aa6920627bfbbda"
Subject: Re: [oss-security] Article: State of Sandboxing in Linux

--0000000000003aa6920627bfbbda
Content-Type: text/plain; charset="UTF-8"

>
> You might want "sydbox", though I wouldn't know.
>

Historically, there were 10,000 different ways to sandbox things. From
chroots, to firejails. I however don't understand why anyone would
entertain any of these pre-containerization methods today. That's why I'm
questioning what's the purpose of comparing different sandboxing methods in
isolation of the current status quo -- containerization. Why would anyone
want sydbox (whatever it is) over rootless podman?

By the way, you mention "when would I want [...] over kernel
> user-namespaces", which I think is a complete and utter misunderstanding
> of the problem domain.
>
> sydbox documents that one of the technologies it uses in its source code
> is user namespaces. Generally, "user namespaces" isn't a program you
> use, it's a technique you can make use of in the source code of another
> program entirely... such as sydbox or at a high level, podman.
>

Right! And if it's not providing anything except user namespaces, and
cgroups, and secgroups, it's just another containerization tool. So why
introduce a term that has fallen entirely into disuse like "sandbox" that
includes technologies that predate contianers. As far as I can see, that's
adding complexity and explaining nothing. And, why not compare these tools
against the 600 lb gorilla in containerization: rootless podman.

From looking through the sydbox homepage, and very quickly checking for
> keywords such as "podman", I got pointed to this link:
>
> https://man.exherbolinux.org/syd-oci.1.html
>
> It suggests that the relevance of this software to podman is that you
> can use "sydbox" as an OCI runtime for podman, to replace "crun" or
> "runc", via:
>
> podman run --runtime=syd-oci
>

So now we're getting at it: syd isn't a "sandboxing" thing at all. It's a
container runtime. And now the 100 million dollar question is very simple,
how does this container runtime compare with youki, which is also in rust
and it clearly says it's based on, from your link "It is largely based on
youki": Youki has 113 contributors. Sydbox seems to be a one man show
https://gitlab.exherbo.org/sydbox/sydbox/-/commits/main/?ref_type=HEADS

Not that this is reason enough not to take it seriously. But the blog entry
we need doesn't compare it to esoteric tech in Gentoo (which no one uses).
It's a comparison between it and Youki that explains how each of the points
under "capabilities" is different from Youki which doesn't use a
"unikernel" and claims many of the same capabilities (because as you said,
they're all using user-namespaces, cgroups, and secgroups under the hood).

--
Evan Carroll - me@evancarroll.com
System Lord of the Internets
web: http://www.evancarroll.com
ph: 281.901.0011 <+1-281-901-0011>

--0000000000003aa6920627bfbbda--
