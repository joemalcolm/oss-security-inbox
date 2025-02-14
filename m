Received: (qmail 11647 invoked by uid 550); 14 Feb 2025 14:42:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1994 invoked from network); 14 Feb 2025 10:58:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739530695; x=1740135495; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gEJ71bcWsqnwr8i7CO8QYmIHNBNwGhG/IcDADFPu1fw=;
        b=S1uaMy5UNoHoGU+ERaUhVHd8Dv/RPzZE6KdvocqaRrzMWVmoHou/IjeHRQnW1KfEk+
         2UhrGfr06C2SCGEYxX0nCH9DDuW6xha1nlNS3Yt1rq9O9KZr/SUrvi7xz7T1BHs1NOTd
         netMJW53paUrK/3mY/lfhzyag+waLPRY5cXy4q1PwogRi5e97WWk7W3V0Db+T1ulXe5F
         1fLwIfZNIhzYOlTba6fZ9XV3PmRDObYespX5jSYHtc8V43/FPVXHHg0a6PrYMGnokGp6
         6OwR+FYVZVpjd/Of34ioCLnH+d5HfYy4n8olUmlPnFFKQe8j81AhsLiMSa/mp8s/9J2d
         Qqig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739530695; x=1740135495;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gEJ71bcWsqnwr8i7CO8QYmIHNBNwGhG/IcDADFPu1fw=;
        b=HIGmS61h6xNtrpbkRDQbR1fGAodNA2qF0tki5zMbpBqm3EDPTbvElTVDNrenf5HKzm
         en1kaIfumSKeZnZy52bgzBw6r+XB2XAFVA4QfWyjt7REpL/aYUKSVvnj+ki2EhKDxNsG
         IQr8YkiJvdiaMiUUZUKZE9HXt5A3l3WaLVoXOypW/FgAqt2Ppbp7f3O+11lh6utW9X5D
         +s7grpBYJ0kjdBLtryU0DtJp222nybROcBZIynn3aWSQ5k0cxwbroMiW+OlN8qFv1VUb
         BsEPWSa8KH+f2vxGScZbk6okW3znQW/12Mu0aULf+Oj6IVpbuCQJOU6WSKmuDKQiqOrk
         dovw==
X-Forwarded-Encrypted: i=1; AJvYcCWWqJ/XmBDhqEdZIjjtE2yUmzxF546aCMfArlKuplrukWK37fWQGIkZAkraSKMo/cSKyeU9TkxT281qFLM=@lists.openwall.com
X-Gm-Message-State: AOJu0YzTDGV3DgReg9e5x8IetuRYUHKrzJMnF+EOjjhcMh2o10aOf2Ui
	I+3JhmJL9ACHFsQLM2ngelaZqyAfB6NjRYn2Q+p/QaPz1j6kWBqOoN1p5vXO839h+La+ruCiTc8
	wOKgAs++p494ASFHrux04z0Cn39D1kp/3
X-Gm-Gg: ASbGncvCgkKf/tPNLv/xKv/DhXlGitiqpVygnttfsOsEOzbC55sS5bXINXEzYc2+hdF
	ZdSc+lmcMlHeP9d2kRyTP7Tn9B4f74Fb8NyJSrTymci1JwyyswoHolEVPsGiAc7uYURzWNEg/+g
	==
X-Google-Smtp-Source: AGHT+IHZ4gnv89bJuOKLUUbhBj+x1gR9z2Wi9dl7xPr67XzEybrq4pR6uzcNbpuAnbmXAgOnjRx2k4sJ+IMf00bVSFU=
X-Received: by 2002:ac2:51c9:0:b0:545:550:83e6 with SMTP id
 2adb3069b0e04-5451e2f7bebmr2138499e87.5.1739530694768; Fri, 14 Feb 2025
 02:58:14 -0800 (PST)
MIME-Version: 1.0
References: <20250213171546.GA3976@brightrain.aerifal.cx> <CAFdMc-1uX4X1HNrR-hj0iGASCfRL6PfVdNsynOs4BdoS+QrGSw@mail.gmail.com>
 <E3B21524-35E5-470E-811A-E1083454B56E@aevum.de>
In-Reply-To: <E3B21524-35E5-470E-811A-E1083454B56E@aevum.de>
From: Daniel Gutson <danielgutson@gmail.com>
Date: Fri, 14 Feb 2025 07:58:01 -0300
X-Gm-Features: AWEUYZlStUj4_cBFHlNreK_ZzBXZNxx1wv8YHx0_54ySbOQXtjIAwn9qNygUmaM
Message-ID: <CAFdMc-1FwzW+qar=rkCctgo-jdv4StD3izqBFWt8-CJFDxG1Yg@mail.gmail.com>
To: Nick Wellnhofer <wellnhofer@aevum.de>
Cc: musl@lists.openwall.com, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000023410d062e180dd5"
Subject: [oss-security] Re: [musl] CVE-2025-26519: musl libc: input-controlled out-of-bounds
 write primitive in iconv()

--00000000000023410d062e180dd5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

El vie, 14 feb 2025, 07:14, Nick Wellnhofer <wellnhofer@aevum.de> escribi=
=C3=B3:

> On Feb 13, 2025, at 23:28, Daniel Gutson <danielgutson@gmail.com> wrote:
> >
> > Curious: is there any info about how this was discovered?
>
> The bug was discovered with basic fuzz testing. As libxml2 maintainer, I
> found more and more issues in various iconv implementations by accident
> which is a strong indicator that all this code isn't tested enough. The
> iconv API is also trivial to fuzz, so it seemed like a nice weekend proje=
ct.
>

Thanks, AFL?

My work is related to static checkers and linters (we will contribute an
important patch to weggli soon), so I was wondering if you used something
that used symbolic execution.

Nice job!


> Nick
>
>

--00000000000023410d062e180dd5--
