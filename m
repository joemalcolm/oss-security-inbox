Received: (qmail 27688 invoked by uid 550); 9 Nov 2024 00:03:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5913 invoked from network); 8 Nov 2024 22:02:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731103353; x=1731708153; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CdIqXP0PeTxB8j5Xqxc4WDPJijGF37ZJ+spzxZDGFws=;
        b=BiOaDQepYH135ZR21p8vjAojkkmwQVwtWRztHLws2RiKItefM+l6/SOF5z2J3XKyjQ
         PCgoY0+ttMa4GSB5Rup5HpswygtNWrsFasMu8OgKEwgAb2ebUOAvcpltIbde8CwCxMYz
         iQfUeh5o2Zlr6WO/oZWr/N9JXcBY58vflMuGLZDWLnjSE0ImirDFqvzomi4ARfBjTqAt
         3XtHPCczLTPC2aBb27dsO/1nWIX1EFykrT0y71gcas47MnXy7/fFTykSLcg2UaZdL19Z
         pKINzlRRIQRcAdG6XLHWqKTc5pRN/aN8uWWPrgrGaphwgJGwJPZBz/C9AJnlfmc4vFqy
         VZqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731103353; x=1731708153;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CdIqXP0PeTxB8j5Xqxc4WDPJijGF37ZJ+spzxZDGFws=;
        b=RUCUyt2NyVqWLdRw5P316eHekWBgMugrrfSZruaegvhm7e53UyWTZN/CyeU0LIyc8v
         Z8RykKY9VnDh5hKdoBcjJBeAkd5ViA2POedkOP8Goke/cggKENtW8vEIkxAQGhkwhjlP
         EUUD5KcMnHDdXqIXEOpzGYt2vyx51qLg93PUvXbVdEjEYss6m8kLYX3HFbx3PLbDuyKn
         tmUJmIqbj/KrYYHtihPei8ZV6yiNkkD1SPw18A22nG1OKjegfoOro52AwVCBIUQ3SEkG
         VlG4vpFfEF/A7ta1zUToDQKN6utH2bmGVSIHA8LsquAsofrz/D0c6rKinZKzEU11apHv
         sTsw==
X-Gm-Message-State: AOJu0Yzfh8FCi1sZfNsJ9jW7vVu4oB9HSHX3mHBuLi10bNPA0DIV/Lyt
	NOgRDfnAYzFi0Pbud4dqq0ypR8o3vTzgQo9EafVRr07DfKwD4/B9plftvqai/aPG4PCbHHN6n+h
	dF1z0SqgUeXMbMCWs2b4wRfx7ZgNgjg==
X-Google-Smtp-Source: AGHT+IG+igZRjx8itOPFTuz8FWZZtDh5foiJ2VOL7HFzYMljE33uI/lZSqoJr8xN3dEYrC7OCx94hi7w6GcQIEyrBZs=
X-Received: by 2002:a05:6402:3547:b0:5cb:acfa:61ee with SMTP id
 4fb4d7f45d1cf-5cf0a441833mr3330538a12.23.1731103352558; Fri, 08 Nov 2024
 14:02:32 -0800 (PST)
MIME-Version: 1.0
References: <20241106041215.GA4432@openwall.com> <CAGUWgD_T4vUhBfkmjm+8ELcuiOD9dx1vSC4HnKG88Py7ip+zPw@mail.gmail.com>
In-Reply-To: <CAGUWgD_T4vUhBfkmjm+8ELcuiOD9dx1vSC4HnKG88Py7ip+zPw@mail.gmail.com>
From: Dominik Czarnota <dominik.b.czarnota@gmail.com>
Date: Fri, 8 Nov 2024 23:02:21 +0100
Message-ID: <CABEVAa0+EE0M3Q2wwpOSX0-VCw95xSjZV-1S4u7hSYY9K=YK7w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006619f606266de88c"
Subject: Re: [oss-security] shell wildcard expansion (un)safety

--0000000000006619f606266de88c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is known since even earlier by the article/disclosure =E2=80=9Eunix wi=
ldcards
gone wild=E2=80=9D:
https://seclists.org/fulldisclosure/2014/Jun/136

The original article link seems to not work but it can be seen e.g. here:
https://github.com/Gandosha/gandosha.github.io/blob/master/DefenseCode_Unix=
_WildCards_Gone_Wild.txt

It shows that in some cases this can lead to code execution, e.g. with =E2=
=80=9Etar
*=E2=80=9D

On Fri, 8 Nov 2024 at 18:47, Georgi Guninski <gguninski@gmail.com> wrote:

> This is known since at least 2019, but the distro list can't tell
> vulnerability from a rant [1] [2]
>
> `grep text -- *` is not portable solution, since not all warez recognize
> --.
>
> e.g.:
>
> $find . --
> find: unknown predicate `--'
>
>
> [1] Shell wildcards considered dangerous?
> https://seclists.org/oss-sec/2019/q4/133
>
> [2]
> https://www.linkedin.com/pulse/careful-wildcards-linux-rm-georgi-guninski=
-ieaif
>

--0000000000006619f606266de88c--
