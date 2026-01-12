Received: (qmail 5786 invoked by uid 550); 12 Jan 2026 15:01:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22463 invoked from network); 12 Jan 2026 15:00:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768230016; x=1768834816; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ke2vHlt2kwDJe+Q64U4Mvl3MDzf5aPhBjqt5GlP5v5A=;
        b=VQWIPw8/9RmN0fQ3bDLuqkGiG4lTusRPh2/K0TOByxqIGlg3vQL6+iCbwijhEcWjUb
         zVExcELd57VCI3St+olsqSbGv8e5fAp6ivRu9jr9xtid7ot8WLp0SxGiQwGLYl2+ha4S
         JRpyufsvhcGA7kZN+qUEPpBL21rTHo5trO97a6wYvsfRew2g4kBKfNVi0CB4v7og2Fg0
         pgrJ90a6t7z/4ScMhwmOgTnr05dosVxQbUHnMrzSLybMIfFzjGUU/+1AgYUM5+blz977
         ncJDuRWwAiHFPJ8aMI3a5evJVnnTp/wvmTvs93K8qq8joZuHbHvurHmrVnbz98JZetup
         w5+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768230016; x=1768834816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ke2vHlt2kwDJe+Q64U4Mvl3MDzf5aPhBjqt5GlP5v5A=;
        b=eQf4STVWMiyLH6ed9MtOXIXCuT10jsnGkWTzr495062vz16CD/KqyfLuPBzvTCiwDN
         UJj8XSg/zoA4ZnKOQKULeBiEac1hQ/lHI6CavQ6CQSWSvfAZQcPc0WAu6HrhBjiRniBl
         LePoLrHA2/eCAIYw6p2lzYvIoeX+kaR/kYC8L9hRsyqTtsXxs97mUHBe5/hfGE26Quq3
         p6XkqM1+NNrBkvXFg6v2AQ6+qoDGrLRymq2XqDAxzNQvUvooUqJl7k3hWBbLQ9Iggabq
         uquTWxlf2wTH0wFti8hVIbH7pPRKwr48i+YugrxO5CO/GyhakUPy85ITIu8MqCsnD3Ch
         zL2g==
X-Gm-Message-State: AOJu0YwtO30cyuOSwxLzb68k93iYlGXkFZCJ2ytVMiiiGzOy8TfGF2D3
	SmO5QhThSa1uW8ftDx9xNJ/kM+Q63SQWsg+vlYeDZTzDYDNxnBmkcgW0th8Ot4gFUmxLNfIVVRM
	/8LqFytWuTEGMhbUPE3GoNRizfj+WJazOLp7u
X-Gm-Gg: AY/fxX6JpSkmjPE885sKh2y6GLEGz9aLiOF7aHkGOjeF/EjuXbHS7kFmxm7+pq6u1l4
	XtetYCQtIS6VSgDOx2FF2HA8MwM1d0asbcVbMUz1YDF4oRmXnW3PCek2nx0LkeQXmzmMTdTwiov
	0RFpGGCjdCNbCW8lE+D34d6WGUyFk979a3cAc2HKgJa5hJqjLQGXG7L0RmONis+PilKfdGfVf7c
	ccy8p35Kt8+t/yHwHsaQe8bJSxXBWZn1G7EJbTQMd4H0ff1Kx4tiSsVVEhJb2xUe0IoE20FKKQy
	WiL7cYms8riLLFGg7JSPoCVg
X-Google-Smtp-Source: AGHT+IFv1mdiQ2b4buTZcXPBXiY+aSVmBIJeEJcWhySpY39hbzy/IS2+lJcmTE1xVpbhL+q5nqanw5iWTnzLlciySbY=
X-Received: by 2002:a17:903:17cc:b0:2a0:d629:9035 with SMTP id
 d9443c01a7336-2a3ee42491dmr181493235ad.3.1768230015310; Mon, 12 Jan 2026
 07:00:15 -0800 (PST)
MIME-Version: 1.0
References: <092d7ffa-d71b-22c4-2014-ce6c21cec8e3@apache.org> <20260112121353.1a1921f1@hboeck.de>
In-Reply-To: <20260112121353.1a1921f1@hboeck.de>
From: Loganaden Velvindron <loganaden@gmail.com>
Date: Mon, 12 Jan 2026 19:00:03 +0400
X-Gm-Features: AZwV_QhhAnYigFJWud56epRWvRZIKlmOZgCLATbDpNJoQQ7OH9qFh6Wm-81qgok
Message-ID: <CAOp4FwR-GhQ7cFv4cWLhGFGyBHL+_09R4Kj02cetmgg2_M+P3g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2025-68493: Apache Struts: XXE vulnerability
 in outdated XWork component

So there is a thing or two that the IT industry can learn from software pro=
jects
like OpenBSD.

OpenBSD has been advocating for this for years now :-)


On Mon, 12 Jan 2026 at 18:58, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
>
> Looking through recent mails on this list with XXE in the toppic, I see:
>
> * XXE in Apache Struts due to insecure defaults in Java's standard
>   library: CVE-2025-68493
> * XXE in Apache SIS due to insecure defaults in Java's standard
>   library: CVE-2025-68280
> * XXE in Apache Tika due to insecure defaults in Java's standard
>   library: CVE-2025-54988, CVE-2025-66516
> * XXE in Apache Jackrabbit due to insecure defaults in Java's standard
>   library: CVE-2025-53689
> * XXE in Apache Ambari due to insecure defaults in Java's standard
>   library: CVE-2025-23195
> * XXE in Apache XML Graphics FOP due to insecure defaults in Java's
>   standard library: CVE-2024-28168
> * XXE in Apache Drill due to insecure defaults in Java's standard
>   library: CVE-2023-48362
>
> Also recently: my research on prevalent XXEs in electronic invoicing
> software, largely due to insecure defaults in Java and Saxon (which is
> based on Java): https://invoice.secvuln.info/
>
> I'm sensing a pattern here. Maybe Apache should audit all their uses of
> Apache's XML standard library. And, maybe, having insecure defaults in
> Java's standard library is not so great.
>
> --
> Hanno B=C3=B6ck - Independent security researcher
> https://itsec.hboeck.de/
> https://badkeys.info/
