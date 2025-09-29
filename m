Received: (qmail 9444 invoked by uid 550); 29 Sep 2025 16:14:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15786 invoked from network); 29 Sep 2025 15:48:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759160881; x=1759765681; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hv1e8EBiUI4n6aYykRYYzSwviCrLwWF+hfgYlyu/TMA=;
        b=FjwVGnrjpVnFjF77ORdcNNq5VrQlLiLl0hv8MqU2XVohuRIIFXO98LMfx3d4yn99r1
         NTgQoxlUKnj8AGoUSjBVGUDBUaFLYklkx8FLMnnSEDFs/zXj2smnXO9TydVsr2jaxdNs
         dyY9QWBO94F8cRvCom7Qc/qh7qmnsM/XmxL50/ST8Wf49K8/aJhFEieWpAZqy3TZ61pF
         Mv1ikfZYXYDAm7/sqibGUvSGiMtGmkbkX3s+ofSqUrUzuYFvh3zF0hPDsAWpr+fent7A
         uEtNVIQtI72r0HbrIdmC/IACJqIxHzwEuiUtEbEvYEu/a59O3JLy8mnGVm0LAzkKV0ll
         QLWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759160881; x=1759765681;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hv1e8EBiUI4n6aYykRYYzSwviCrLwWF+hfgYlyu/TMA=;
        b=d6Y10MofloSsuFIjYDyZwA07JHWdYamfEZy3G3iyUTfoluOPJcbuWFiJX1txCbuRjC
         QLGE2VVXDDCgOyxMLhd9WnebVsClxwoC49DLK8pc+ruWACCr450PQZC2L3a/hGPZ66FD
         4foXaDTesLj9/n6Bt/FWeQ5HIziOQlHfqP84FQDErgh5IwhQJQSQZJ9ATq4Xoyx7SteW
         mfz8fURXiz3Jn6zJIQVxmwXVjn3XEQ2K3mEUZGAatOOHpFdSTdcp/jKC4HEanPjc3Zyq
         X9IIGXAwuyOeBp2axPK7cB6eNXSZJ1Th+m7VPANTWJesAKfi8NN9GAqBYuZLUl5+u5wv
         044w==
X-Gm-Message-State: AOJu0YzWzAAPhfqg/fzkgfXCbaCAJkrwcK6mLK2VHHK7T2dviJ2pxTcv
	DqYYHYHKdd+afkw5nGJvk+BvkXMKSlzdpGwSRav+m+ymnMahoAjrzM+cDyTVcCics1zNGg/22rT
	SmOMZ/4774MeDyp/sDF+/PHrmNprA6xinzV/v2Cw=
X-Gm-Gg: ASbGncv3Mz0t9rkaQi+GoLtfGTNqLbmzorwOi8inNUVA8AgCfdkS5kCw69tECMND+fK
	b3x3s8tb9niUJrOMQfluaKT9STuJ2junrZtAaqo2fI+i7ejtrQhUwVvyaXUZEKJJHlxWJZIOwX1
	sbhrqmSBNYASNvn9IhJB//HIKjwwG3noBjzcUhtpFbNB+KkaO+k8z0INMNpgr5VV7o1s1B0x0HX
	Q9gld/3mzqit9o7iVtKuKBjXHySDO9EAK6MFxPdXm4GCguSF3t/
X-Google-Smtp-Source: AGHT+IF4j3MKhNVtX/GudF6seRGSs+DPRs5YEww/yep/erUB6CHJKjZBLebUB1n+4ommK8q7waDXAkU1mNZFeERu8vM=
X-Received: by 2002:a53:da42:0:b0:636:cc3:af35 with SMTP id
 956f58d0204a3-63b59ad8eecmr1030916d50.22.1759160880665; Mon, 29 Sep 2025
 08:48:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com> <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
 <CAH8yC8mQBVE5TZ_N8Cc1FkVGrqgV9rhNeAxoMi2wit5C26weFg@mail.gmail.com>
 <CAFf+5zhE2d_4TfbXH25PCLeRLTQPH832c9TwkH9FaS6E0t0qKQ@mail.gmail.com> <aNqeyW7Yp2m62m6q@yuggoth.org>
In-Reply-To: <aNqeyW7Yp2m62m6q@yuggoth.org>
From: Amit <amitchoudhary0523@gmail.com>
Date: Mon, 29 Sep 2025 21:17:49 +0530
X-Gm-Features: AS18NWC1k5JIgFEkGW9_mE38ZnPw9FhDj7UcI6dhZMyvTeO6JMj8mP5GRnVboRU
Message-ID: <CAFf+5zj-Z2G-12j_8pPCZXzGXb4srDE7tc2gCRWdaM6X0ogzUQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006517b9063ff28f13"
Subject: Re: [oss-security] How to do secure coding and create secure software

--0000000000006517b9063ff28f13
Content-Type: text/plain; charset="UTF-8"

On Mon, 29 Sept 2025 at 20:55, Jeremy Stanley <fungi@yuggoth.org> wrote:

> On 2025-09-29 09:01:26 +0530 (+0530), Amit wrote:
> [...]
> > The function body should also be secure.
>
> This generalizes to a tautology: The software is secure if the
> software is secure. It's true, of course, as are all tautologies,
> while also being a useless assertion.
>
>

So, this means that you agree that if all functions are secure then the
software is secure.


---------

--0000000000006517b9063ff28f13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, 29 Sept 2025 at 20:55, Jeremy Sta=
nley &lt;<a href=3D"mailto:fungi@yuggoth.org">fungi@yuggoth.org</a>&gt; wro=
te:</div><div class=3D"gmail_quote gmail_quote_container"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 2025-09-29 09:01:26 +0530 (+0530), Amit=
 wrote:<br>
[...]<br>
&gt; The function body should also be secure.<br>
<br>
This generalizes to a tautology: The software is secure if the <br>
software is secure. It&#39;s true, of course, as are all tautologies, <br>
while also being a useless assertion.<br>
<br></blockquote><div><br></div><div><br></div><div>So, this means that you=
 agree that if all functions are secure then the software is secure.</div><=
div><br></div><div><br></div><div>---------</div><div><br></div></div></div>

--0000000000006517b9063ff28f13--
