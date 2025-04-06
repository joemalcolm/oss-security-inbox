Received: (qmail 30585 invoked by uid 550); 6 Apr 2025 23:09:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17471 invoked from network); 6 Apr 2025 23:00:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743980392; x=1744585192; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S9rrR/s5ueETCteh0LYhN/s6Qbp6RHux/eqr8X9Cof8=;
        b=TfBiK6GSkKd29/jH8CQKNFyNf3Y7PP1xjkPZl+TzmDwvyJQaPA8pmFMl6okT0kbBNY
         VseLudl34Q2WW91GXdKelqGKQnKCAZgdSu5AwZXs758I9JPAKlRHIqlawg5Dd4QcArK4
         lvPbA3G9117/2yRUM8/ZnrcKAKxPrQw9vJKLlf8z9qyn0SvpZYlG8nQpku37XOUnS1fp
         3QGT2r7VKc4I8O4/GqiPHaI7M2WY0uR04V4yco8PxmLsS0l4Ch7OXIihd63/Sg19QIY3
         wbkpn/zPIAdxL1ozdaTZj+phSvnBkHqC4/KZ+yN5jf1qCmyu3E/JGkxG1KbxBzI/fcLm
         STUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743980392; x=1744585192;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S9rrR/s5ueETCteh0LYhN/s6Qbp6RHux/eqr8X9Cof8=;
        b=wNGePUEg6/s9rcs4ZPFACsOOOo/QUrubxeuZwHx62njUd/MQdZk9Aq4XmqeULDIuEx
         hqSdzB21jC8+qYyb/dFOPdcbSVt0Fte5RHGl2jKAc/YisSuz4wuCyepfRH0AvXqvOitc
         WtsEacr/mSgUx7oUc/yd5JefkNS52HIaCs0RHYnUAkxqgrRDjScAHmSXBBbtEDj7ZZMO
         IU8F8ekMAQI8ftnRXyT8veeoYx/8fIAkgUkBri5ICtni+fqTzI31vzV0vlc5MrFajU6j
         hWCpILli2Necxg/82WIQkXESE7I5K5numpJGCABkzPdXn1zQg1hxMT4DOF7HBLRlWXkf
         UOfA==
X-Gm-Message-State: AOJu0YxZLBPRsERVQPpaZQv61VZm/0fHjEncKTupbrUFw+7tKWvXUNU3
	s7Be/wuMBTMSIDR42b/xUJamhnEjhd6won7blyWdimAV7hMis6N6+ANqHAbXdY9uNpM3c3fTnRH
	TTZSi1at8VJ4GKVtwJSZnocQ0DoMJJL4U
X-Gm-Gg: ASbGncuB1NrKdP7Ytz0MXvqJejPMDZJSRqmtLAYEKELSw9cEFDYjA7eGxOvz1MAiHVS
	KjcBnkpNke1fQSdby5T8tzVcP1SwP+03C6kxbmqlf/3PmDhAaIcHS4JHeh+uel6ha7kLEd3u5rH
	koxdp2i38auYrEpTM/Wj4kLf38
X-Google-Smtp-Source: AGHT+IH5rDSxZ/seTSjv1Cy1m4srMH/P3cyyOcuJj0R5+mC0sid2GxBikXNxZMU0vLFsr2ttHWx/2ASXZLrfNsub7js=
X-Received: by 2002:a05:651c:146b:b0:308:e5e8:9d4c with SMTP id
 38308e7fff4ca-30f0c02cd1bmr40278111fa.28.1743980391720; Sun, 06 Apr 2025
 15:59:51 -0700 (PDT)
MIME-Version: 1.0
References: <c67ed115-d310-e44c-365c-f82f452d2e1a@apache.org> <20250406103749.6d75fa6e@hboeck.de>
In-Reply-To: <20250406103749.6d75fa6e@hboeck.de>
From: Jeffrey Walton <noloader@gmail.com>
Date: Sun, 6 Apr 2025 18:59:14 -0400
X-Gm-Features: ATxdqUF_qiDGEA5lWtVr9HtrVbjbqSVEq-BdcfhoMjKQiUrmZUNC2kJ7jI7jMfg
Message-ID: <CAH8yC8mupFZbaqAdBpdKDbU-R2DknH_hqdttcPDu394SXTCDjw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2025-30473: Apache Airflow Common SQL
 Provider: Remote Code Execution via Sql Injection

On Sun, Apr 6, 2025 at 9:46=E2=80=AFAM Hanno B=C3=B6ck <hanno@hboeck.de> wr=
ote:
>
> On Fri, 04 Apr 2025 18:54:21 +0000
> Elad Kalif <eladkal@apache.org> wrote:
>
> > https://github.com/apache/airflow/pull/48098
>
> If I read this code correctly, the only thing this PR changes is to
> reject inputs with an ";" character.
> I am not familiar with the codebase, and also by no means an expert in
> SQL injections. But I am pretty sure there are ways to exploit SQL
> injections that do not involve a ";" character.
>
> Can anyone familiar with the issue check that this is indeed a proper
> fix?

The code still looks vulnerable (to me).

The proper fix is a Parameterized Query. But you can't bind column
names, tables names or similar in a Parameterized Query. With lots of
hand-waiving, you can only bind variables found in a WHERE clause. So
Parameterized Query are not available in this case.

The next choice is a whitelist of names for the partition. That would
mostly fix the injection issue, but leave some residual risk since the
attacker still controls the partition name. But the attacker can only
select a whitelisted name.

And I could be completely sideways since I don't use Apache Airflow.

Jeff
