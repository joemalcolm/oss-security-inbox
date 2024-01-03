Received: (qmail 32474 invoked by uid 550); 3 Jan 2024 21:42:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5121 invoked from network); 3 Jan 2024 20:35:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704314219; x=1704919019; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vhmeEAyYj8gnH5JmBI5zLghxz+9O4A/GDMjWiGOWJNk=;
        b=AcZ9xubBxCiXmkR9skSr3avYwC87w5dikHtjYggzo2smiTraC8Bu0Pm5LEcfxlmrad
         1yVexfDYP8pgg/bBvD8BIFjXojxm2I/Qc1NWeuoDrvXN8/FvgqRthWZFZHJFOGMb75E/
         3wPH/N5lhcsUUuuG8dmN87rxnlNolaieAZyD0omLia5cakaDiqIvO/diURVmPRbtYiyb
         ttPoujr2QGk+GlJq5+IQiwwhsLZZEr2czEkLwWEZZxFMa8jrPnU7M41e1xiwD82dN9SP
         a08Jzs1ne9uTsU0cwjkpdrTO+7ZDGxzox+lMO/0mbdfdHIzgNC3pE6PdtGIteHrR1BvP
         WygA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704314219; x=1704919019;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vhmeEAyYj8gnH5JmBI5zLghxz+9O4A/GDMjWiGOWJNk=;
        b=W4+zR0vf0itHGXAuy8RTiZFv7JKqMqpRa/fctMIFIVaoAAVI+/gI4SARybQekkP/k2
         AJvstZjYNivkD8TU8jtAIgJYcGkRctTjYZEXFS4xACp33yUl6zrR9gklkMjAm2tkLns5
         U7srBH4PROIzjUOgMR3g94Ml9KSDZ71bGdGsXzjwgRfmeqTdTPZAD8iT1s4Yv+i5z0m8
         ARcSt/9e3XVnksLUnDx5ok53C3acTF6Xlc42cn8TKHror0OR1Y4/FiQJplzmWdw5ApTN
         E+oCynH9gzgOgzVfyO3kMcDhujT6fBDQd0HtlSDt5Bwyl74An2KUJuiO6vtU63YdqRA8
         w7hA==
X-Gm-Message-State: AOJu0Yy7SDsaazUXclU1g5IAiVi8kyewZLfOyijjK/mhkIDH/ncrjU5c
	oX0ERR4O2CF+wHY+DtZLTcOj7ZYJMTGD3kaPXMHORjCFLWI=
X-Google-Smtp-Source: AGHT+IHDEk9lFGM+xhRH3HovQ74mEX1bPorTECB1ai6Ts8jH7zyh3tID9FCuVjL9suQBGbgn2THO/Rj9ChE9yzcXbbk=
X-Received: by 2002:a05:6e02:1d98:b0:35f:cb7e:45b3 with SMTP id
 h24-20020a056e021d9800b0035fcb7e45b3mr22598539ila.16.1704314219618; Wed, 03
 Jan 2024 12:36:59 -0800 (PST)
MIME-Version: 1.0
References: <ZZUiY7E8lePAGXq_@nuvolo>
In-Reply-To: <ZZUiY7E8lePAGXq_@nuvolo>
From: Timo Warns <timo.warns@gmail.com>
Date: Wed, 3 Jan 2024 21:36:48 +0100
Message-ID: <CAJDzWZgtPDspwRpapj2CqaKPj0uh740crk4RvQFfmWJ3nrWTVQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a5658c060e1093a2"
Subject: Re: [oss-security] CVE-2012-5639: Apache OpenOffice: Loading internal
 / external resources without warning

--000000000000a5658c060e1093a2
Content-Type: text/plain; charset="UTF-8"

For what it's worth: The original thread on this CVE is available at
https://www.openwall.com/lists/oss-security/2012/12/13/10

Regards, Timo

Am Mi., 3. Jan. 2024 um 12:02 Uhr schrieb Arrigo Marchiori <
ardovm@apache.org>:

> *** This announcement is a correction to the one sent on 28 December 2023.
> *** The "Affected versions" information was wrong.
>
> Severity: Moderate
>
> Affected versions:
>
> - Apache OpenOffice through 4.1.14
>
> Description:
>
> In Apache OpenOffice and LibreOffice embedded content will be opened
> automatically without that a warning is shown.
>
> Credit:
>
> The Apache OpenOffice Security Team would like to thank Timo Warns and
> Joachim Mammele for discovering and reporting this attack vector.
>
> References:
> https://openoffice.apache.org/
> https://www.cve.org/CVERecord?id=CVE-2012-5639
> --
> Arrigo
>

--000000000000a5658c060e1093a2--
