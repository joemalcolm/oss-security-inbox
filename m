Received: (qmail 30021 invoked by uid 550); 10 Jul 2023 15:08:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29978 invoked from network); 10 Jul 2023 15:08:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689001714; x=1691593714;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M0ytNDJjdf43MhKBbyFjBNROlpA+aY1dFtlbJ89j540=;
        b=NLIrD9Sj3JL2P5Bzx5amxzuiJckZ4SXqq2luVrzpmuOyMEEuHP9DHM+4csDXQ3zP26
         RTNX7JULNmiCaV3HWcJmnW0XbabBxxTi5CxxT3Rn3P2enp+bzQS12HJUHSGAQmHSZGpB
         bnJHG8dIo6YojdHFc1MJZBq0SAr6krHZndLTd8GhI6jSjznpBLUowT+pmqu7p0q8+BgG
         oQ+pQzcyReVJg4S5c4DzRO0EEsxyQ5zgSPsGcQm0E7VXj8wiVRq2JQbXw6zvASY4kZKP
         kNRu4CXipnaLlWu+Qr5tiHzWyvPZUM+oT4B0fmoGuuEuDJWNbWhPRp9j/N9mnr1b+nAt
         BXUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689001714; x=1691593714;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M0ytNDJjdf43MhKBbyFjBNROlpA+aY1dFtlbJ89j540=;
        b=H3PyiHsQbQfFDAiAGp5AgMqJHXI6loJd2MH6DyDZuR9Eh8B63T9ifVkQcuUSGgjvMt
         XBAtORU0Zdy7sn24a3G3QF7l9mgixPSZW90jEior6a7xuWM2ZghcDoBlXtAHqxI+anmd
         f5iJDSKrXE0bb2FkwH5w3sd9zBAfcSFBA493UZQIUQivzHMDFEOhtHoGpth2MiLH5iZg
         JTFSIPNHYk5X3OqoFnvVlFi8/HB2phrbZAcNiUN0+eNBFI7QnzVF86wtDFNR0LeJmCh9
         piHhKwKW5a2/RPdyWXnHWbCUOO6CS3IIP522e95vQ0UcRU0IM4XZrJ60jIbnyfAWSvDe
         +e4g==
X-Gm-Message-State: ABy/qLYk1zr3UAY6XwphRYsWGrB7G6lZ9shVqEc24IYM+qm45GY3DzaY
	31n91N+oEs8sS0dVjNvDzZpTXarw3kA8m0A5fgg3vscT
X-Google-Smtp-Source: APBJJlHwRB2jErKiv4T5A/q79v6/KFEWLVoEe4g3lKRwYTtQK0Ol/wqC70llCdS/63Q8JGRfYq44tB5IFFP8iYwmflQ=
X-Received: by 2002:a5d:54c2:0:b0:313:eb34:b23e with SMTP id
 x2-20020a5d54c2000000b00313eb34b23emr14849334wrv.49.1689001713911; Mon, 10
 Jul 2023 08:08:33 -0700 (PDT)
MIME-Version: 1.0
References: <f61029a1-f4dc-8fb3-a9c8-444901495532@apache.org>
In-Reply-To: <f61029a1-f4dc-8fb3-a9c8-444901495532@apache.org>
From: Brandon Perry <bperry.volatile@gmail.com>
Date: Mon, 10 Jul 2023 10:08:22 -0500
Message-ID: <CAOJKFBBeRpoYjwUsJNH=c5aAQ+H=rmGPiTUQ+qB7rZ0J1Qt+rQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000002ecd390600235b94"
Subject: Re: [oss-security] CVE-2022-42009: Apache Ambari: A malicious
 authenticated user can remotely execute arbitrary code in the context of the application.

--0000000000002ecd390600235b94
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Do you have an example proof of concept or a bug link for this?

On Mon, Jul 10, 2023 at 10:06=E2=80=AFAM Brahma Reddy Battula <brahma@apach=
e.org>
wrote:

> Affected versions:
>
> - Apache Ambari 2.7.0 through 2.7.6
>
> Description:
>
> SpringEL injection in the server agent in Apache Ambari version 2.7.0 to
> 2.7.6 allows a malicious authenticated user to execute arbitrary code
> remotely. Users are recommended to upgrade to 2.7.7.
>
> Credit:
>
> Jecki Go (jecgo@visa.com) (finder)
>
> References:
>
> https://ambari.apache.org/
> https://www.cve.org/CVERecord?id=3DCVE-2022-42009
>
>

--0000000000002ecd390600235b94--
